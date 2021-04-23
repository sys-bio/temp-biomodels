<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-10-17 10:51:42 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="MTP_2" type="UserDefined" reversible="unspecified">
      <Expression>
        sf*V*(S1*(S7-P7)*S8/(Kms1*Kms7*Kms8)-P1*P7*P8/(Kms1*Kms7*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+P6/Kmp6+I1/Ki1)*(1+(S7-P7)/Kms7+P7/Kmp7)*(1+S8/Kms8+P8/Kmp8))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="sf" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_263" name="V" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_262" name="Kms1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_261" name="Kms2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_250" name="Kms3" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_265" name="Kms4" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_266" name="Kms5" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_267" name="Kms7" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_268" name="Kms8" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_269" name="Kmp1" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_270" name="Kmp2" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_271" name="Kmp3" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_272" name="Kmp4" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_273" name="Kmp5" order="13" role="variable"/>
        <ParameterDescription key="FunctionParameter_274" name="Kmp6" order="14" role="variable"/>
        <ParameterDescription key="FunctionParameter_275" name="Kmp7" order="15" role="variable"/>
        <ParameterDescription key="FunctionParameter_276" name="Kmp8" order="16" role="variable"/>
        <ParameterDescription key="FunctionParameter_277" name="Ki1" order="17" role="variable"/>
        <ParameterDescription key="FunctionParameter_278" name="Keq" order="18" role="variable"/>
        <ParameterDescription key="FunctionParameter_279" name="S1" order="19" role="variable"/>
        <ParameterDescription key="FunctionParameter_280" name="S2" order="20" role="variable"/>
        <ParameterDescription key="FunctionParameter_281" name="S3" order="21" role="variable"/>
        <ParameterDescription key="FunctionParameter_282" name="S4" order="22" role="variable"/>
        <ParameterDescription key="FunctionParameter_283" name="S5" order="23" role="variable"/>
        <ParameterDescription key="FunctionParameter_284" name="S7" order="24" role="variable"/>
        <ParameterDescription key="FunctionParameter_285" name="S8" order="25" role="variable"/>
        <ParameterDescription key="FunctionParameter_286" name="P1" order="26" role="variable"/>
        <ParameterDescription key="FunctionParameter_287" name="P2" order="27" role="variable"/>
        <ParameterDescription key="FunctionParameter_288" name="P3" order="28" role="variable"/>
        <ParameterDescription key="FunctionParameter_289" name="P4" order="29" role="variable"/>
        <ParameterDescription key="FunctionParameter_290" name="P5" order="30" role="variable"/>
        <ParameterDescription key="FunctionParameter_291" name="P6" order="31" role="variable"/>
        <ParameterDescription key="FunctionParameter_292" name="P7" order="32" role="variable"/>
        <ParameterDescription key="FunctionParameter_293" name="P8" order="33" role="variable"/>
        <ParameterDescription key="FunctionParameter_294" name="I1" order="34" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="MCKATB_2" type="UserDefined" reversible="unspecified">
      <Expression>
        sf*V*(S1*S8/(Kms1*Kms8)-P8*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7+P8/Kmp8)*(1+S8/Kms8+P8/Kmp8))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="sf" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_328" name="V" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_327" name="Kms1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_326" name="Kms2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_325" name="Kms3" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_324" name="Kms4" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_323" name="Kms5" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_322" name="Kms6" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_321" name="Kms7" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_320" name="Kms8" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_319" name="Kmp1" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_318" name="Kmp2" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_317" name="Kmp3" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_316" name="Kmp4" order="13" role="variable"/>
        <ParameterDescription key="FunctionParameter_315" name="Kmp5" order="14" role="variable"/>
        <ParameterDescription key="FunctionParameter_314" name="Kmp6" order="15" role="variable"/>
        <ParameterDescription key="FunctionParameter_313" name="Kmp7" order="16" role="variable"/>
        <ParameterDescription key="FunctionParameter_312" name="Kmp8" order="17" role="variable"/>
        <ParameterDescription key="FunctionParameter_311" name="Keq" order="18" role="variable"/>
        <ParameterDescription key="FunctionParameter_310" name="S1" order="19" role="variable"/>
        <ParameterDescription key="FunctionParameter_309" name="S2" order="20" role="variable"/>
        <ParameterDescription key="FunctionParameter_308" name="S3" order="21" role="variable"/>
        <ParameterDescription key="FunctionParameter_307" name="S4" order="22" role="variable"/>
        <ParameterDescription key="FunctionParameter_306" name="S5" order="23" role="variable"/>
        <ParameterDescription key="FunctionParameter_305" name="S6" order="24" role="variable"/>
        <ParameterDescription key="FunctionParameter_304" name="S7" order="25" role="variable"/>
        <ParameterDescription key="FunctionParameter_303" name="S8" order="26" role="variable"/>
        <ParameterDescription key="FunctionParameter_302" name="P1" order="27" role="variable"/>
        <ParameterDescription key="FunctionParameter_301" name="P2" order="28" role="variable"/>
        <ParameterDescription key="FunctionParameter_300" name="P3" order="29" role="variable"/>
        <ParameterDescription key="FunctionParameter_299" name="P4" order="30" role="variable"/>
        <ParameterDescription key="FunctionParameter_298" name="P5" order="31" role="variable"/>
        <ParameterDescription key="FunctionParameter_297" name="P6" order="32" role="variable"/>
        <ParameterDescription key="FunctionParameter_296" name="P7" order="33" role="variable"/>
        <ParameterDescription key="FunctionParameter_295" name="P8" order="34" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="RES_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:22:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Ks*(S-K1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="Ks" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_363" name="S" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_362" name="K1" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="MCKATA_2" type="UserDefined" reversible="unspecified">
      <Expression>
        sf*V*(S1*S8/(Kms1*Kms8)-P1*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7+P8/Kmp8)*(1+S8/Kms8+P8/Kmp8))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_359" name="sf" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_360" name="V" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_361" name="Kms1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_358" name="Kms2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_357" name="Kms3" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_356" name="Kms4" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_355" name="Kms5" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_354" name="Kms6" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_353" name="Kms7" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_352" name="Kms8" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_351" name="Kmp1" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_350" name="Kmp2" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_349" name="Kmp3" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_348" name="Kmp4" order="13" role="variable"/>
        <ParameterDescription key="FunctionParameter_347" name="Kmp5" order="14" role="variable"/>
        <ParameterDescription key="FunctionParameter_346" name="Kmp6" order="15" role="variable"/>
        <ParameterDescription key="FunctionParameter_345" name="Kmp7" order="16" role="variable"/>
        <ParameterDescription key="FunctionParameter_344" name="Kmp8" order="17" role="variable"/>
        <ParameterDescription key="FunctionParameter_343" name="Keq" order="18" role="variable"/>
        <ParameterDescription key="FunctionParameter_342" name="S1" order="19" role="variable"/>
        <ParameterDescription key="FunctionParameter_341" name="S2" order="20" role="variable"/>
        <ParameterDescription key="FunctionParameter_340" name="S3" order="21" role="variable"/>
        <ParameterDescription key="FunctionParameter_339" name="S4" order="22" role="variable"/>
        <ParameterDescription key="FunctionParameter_338" name="S5" order="23" role="variable"/>
        <ParameterDescription key="FunctionParameter_337" name="S6" order="24" role="variable"/>
        <ParameterDescription key="FunctionParameter_336" name="S7" order="25" role="variable"/>
        <ParameterDescription key="FunctionParameter_335" name="S8" order="26" role="variable"/>
        <ParameterDescription key="FunctionParameter_334" name="P1" order="27" role="variable"/>
        <ParameterDescription key="FunctionParameter_333" name="P2" order="28" role="variable"/>
        <ParameterDescription key="FunctionParameter_332" name="P3" order="29" role="variable"/>
        <ParameterDescription key="FunctionParameter_331" name="P4" order="30" role="variable"/>
        <ParameterDescription key="FunctionParameter_330" name="P5" order="31" role="variable"/>
        <ParameterDescription key="FunctionParameter_365" name="P6" order="32" role="variable"/>
        <ParameterDescription key="FunctionParameter_366" name="P7" order="33" role="variable"/>
        <ParameterDescription key="FunctionParameter_367" name="P8" order="34" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="SCAD_2" type="UserDefined" reversible="unspecified">
      <Expression>
        sf*V*(S1*(S3-P3)/(Kms1*Kms3)-P1*P3/(Kms1*Kms3*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2)*(1+(S3-P3)/Kms3+P3/Kmp3))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_402" name="sf" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_401" name="V" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_400" name="Kms1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_399" name="Kms2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_398" name="Kms3" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_397" name="Kmp1" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_396" name="Kmp2" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_395" name="Kmp3" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_394" name="Keq" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_393" name="S1" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_392" name="S2" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_391" name="S3" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_390" name="P1" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_389" name="P2" order="13" role="variable"/>
        <ParameterDescription key="FunctionParameter_388" name="P3" order="14" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="LCAD_2" type="UserDefined" reversible="unspecified">
      <Expression>
        sf*V*(S1*(S6-P6)/(Kms1*Kms6)-P1*P6/(Kms1*Kms6*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5)*(1+(S6-P6)/Kms6+P6/Kmp6))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_373" name="sf" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_374" name="V" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_375" name="Kms1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_376" name="Kms2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_377" name="Kms3" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_378" name="Kms4" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_379" name="Kms5" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_380" name="Kms6" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_381" name="Kmp1" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_382" name="Kmp2" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_383" name="Kmp3" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_384" name="Kmp4" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_385" name="Kmp5" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_386" name="Kmp6" order="13" role="variable"/>
        <ParameterDescription key="FunctionParameter_387" name="Keq" order="14" role="variable"/>
        <ParameterDescription key="FunctionParameter_372" name="S1" order="15" role="variable"/>
        <ParameterDescription key="FunctionParameter_371" name="S2" order="16" role="variable"/>
        <ParameterDescription key="FunctionParameter_370" name="S3" order="17" role="variable"/>
        <ParameterDescription key="FunctionParameter_369" name="S4" order="18" role="variable"/>
        <ParameterDescription key="FunctionParameter_368" name="S5" order="19" role="variable"/>
        <ParameterDescription key="FunctionParameter_403" name="S6" order="20" role="variable"/>
        <ParameterDescription key="FunctionParameter_404" name="P1" order="21" role="variable"/>
        <ParameterDescription key="FunctionParameter_405" name="P2" order="22" role="variable"/>
        <ParameterDescription key="FunctionParameter_406" name="P3" order="23" role="variable"/>
        <ParameterDescription key="FunctionParameter_407" name="P4" order="24" role="variable"/>
        <ParameterDescription key="FunctionParameter_408" name="P5" order="25" role="variable"/>
        <ParameterDescription key="FunctionParameter_409" name="P6" order="26" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="VLCAD_2" type="UserDefined" reversible="unspecified">
      <Expression>
        sf*V*(S1*(S4-P4)/(Kms1*Kms4)-P1*P4/(Kms1*Kms4*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3)*(1+(S4-P4)/Kms4+P4/Kmp4))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_436" name="sf" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_435" name="V" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_434" name="Kms1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_433" name="Kms2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_432" name="Kms3" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_431" name="Kms4" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_430" name="Kmp1" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_429" name="Kmp2" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_428" name="Kmp3" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_427" name="Kmp4" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_426" name="Keq" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_425" name="S1" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_424" name="S2" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_423" name="S3" order="13" role="variable"/>
        <ParameterDescription key="FunctionParameter_422" name="S4" order="14" role="variable"/>
        <ParameterDescription key="FunctionParameter_421" name="P1" order="15" role="variable"/>
        <ParameterDescription key="FunctionParameter_420" name="P2" order="16" role="variable"/>
        <ParameterDescription key="FunctionParameter_419" name="P3" order="17" role="variable"/>
        <ParameterDescription key="FunctionParameter_418" name="P4" order="18" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="CPT1_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:05:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sf*V*(S1*S2/(Kms1*Kms2)-P1*P2/(Kms1*Kms2*Keq))/((1+S1/Kms1+P1/Kmp1+(I1/Ki1)^n)*(1+S2/Kms2+P2/Kmp2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_447" name="sf" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_446" name="V" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_445" name="Kms1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_444" name="Kms2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_443" name="Kmp1" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_442" name="Kmp2" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_441" name="Ki1" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_440" name="Keq" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_439" name="S1" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_438" name="S2" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_437" name="P1" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_410" name="P2" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_411" name="I1" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_412" name="n" order="13" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="CPT2_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:32:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sf*V*(S1*S8/(Kms1*Kms8)-P1*P8/(Kms1*Kms8*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5+S6/Kms6+P6/Kmp6+S7/Kms7+P7/Kmp7)*(1+S8/Kms8+P8/Kmp8))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="sf" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_455" name="V" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_454" name="Kms1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_453" name="Kms2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_452" name="Kms3" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_451" name="Kms4" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_450" name="Kms5" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_449" name="Kms6" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_448" name="Kms7" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_417" name="Kms8" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_416" name="Kmp1" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_415" name="Kmp2" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_414" name="Kmp3" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_413" name="Kmp4" order="13" role="variable"/>
        <ParameterDescription key="FunctionParameter_457" name="Kmp5" order="14" role="variable"/>
        <ParameterDescription key="FunctionParameter_458" name="Kmp6" order="15" role="variable"/>
        <ParameterDescription key="FunctionParameter_459" name="Kmp7" order="16" role="variable"/>
        <ParameterDescription key="FunctionParameter_460" name="Kmp8" order="17" role="variable"/>
        <ParameterDescription key="FunctionParameter_461" name="Keq" order="18" role="variable"/>
        <ParameterDescription key="FunctionParameter_462" name="S1" order="19" role="variable"/>
        <ParameterDescription key="FunctionParameter_463" name="S2" order="20" role="variable"/>
        <ParameterDescription key="FunctionParameter_464" name="S3" order="21" role="variable"/>
        <ParameterDescription key="FunctionParameter_465" name="S4" order="22" role="variable"/>
        <ParameterDescription key="FunctionParameter_466" name="S5" order="23" role="variable"/>
        <ParameterDescription key="FunctionParameter_467" name="S6" order="24" role="variable"/>
        <ParameterDescription key="FunctionParameter_468" name="S7" order="25" role="variable"/>
        <ParameterDescription key="FunctionParameter_469" name="S8" order="26" role="variable"/>
        <ParameterDescription key="FunctionParameter_470" name="P1" order="27" role="variable"/>
        <ParameterDescription key="FunctionParameter_471" name="P2" order="28" role="variable"/>
        <ParameterDescription key="FunctionParameter_472" name="P3" order="29" role="variable"/>
        <ParameterDescription key="FunctionParameter_473" name="P4" order="30" role="variable"/>
        <ParameterDescription key="FunctionParameter_474" name="P5" order="31" role="variable"/>
        <ParameterDescription key="FunctionParameter_475" name="P6" order="32" role="variable"/>
        <ParameterDescription key="FunctionParameter_476" name="P7" order="33" role="variable"/>
        <ParameterDescription key="FunctionParameter_477" name="P8" order="34" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function_4_vcpt1C16_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:46:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        CPT1_2(sfcpt1C16,Vcpt1,Kmcpt1C16AcylCoACYT,Kmcpt1CarCYT,Kmcpt1C16AcylCarCYT,Kmcpt1CoACYT,Kicpt1MalCoACYT,Keqcpt1,C16AcylCoACYT,CarCYT,C16AcylCarCYT,CoACYT,MalCoACYT,ncpt1)/VCYT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_498" name="C16AcylCarCYT" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_499" name="C16AcylCoACYT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_500" name="CarCYT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_501" name="CoACYT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_502" name="Keqcpt1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_503" name="Kicpt1MalCoACYT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_504" name="Kmcpt1C16AcylCarCYT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_505" name="Kmcpt1C16AcylCoACYT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_506" name="Kmcpt1CarCYT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_507" name="Kmcpt1CoACYT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_508" name="MalCoACYT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_509" name="VCYT" order="11" role="volume"/>
        <ParameterDescription key="FunctionParameter_510" name="Vcpt1" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_511" name="ncpt1" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_512" name="sfcpt1C16" order="14" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="MCAD_2" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:18:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sf*V*(S1*(S6-P6)/(Kms1*Kms6)-P1*P6/(Kms1*Kms6*Keq))/((1+S1/Kms1+P1/Kmp1+S2/Kms2+P2/Kmp2+S3/Kms3+P3/Kmp3+S4/Kms4+P4/Kmp4+S5/Kms5+P5/Kmp5)*(1+(S6-P6)/Kms6+P6/Kmp6))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_483" name="sf" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_484" name="V" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_485" name="Kms1" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_486" name="Kms2" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_487" name="Kms3" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_488" name="Kms4" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_489" name="Kms5" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_490" name="Kms6" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_491" name="Kmp1" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_492" name="Kmp2" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_493" name="Kmp3" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_494" name="Kmp4" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_495" name="Kmp5" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_496" name="Kmp6" order="13" role="variable"/>
        <ParameterDescription key="FunctionParameter_497" name="Keq" order="14" role="variable"/>
        <ParameterDescription key="FunctionParameter_482" name="S1" order="15" role="variable"/>
        <ParameterDescription key="FunctionParameter_481" name="S2" order="16" role="variable"/>
        <ParameterDescription key="FunctionParameter_480" name="S3" order="17" role="variable"/>
        <ParameterDescription key="FunctionParameter_479" name="S4" order="18" role="variable"/>
        <ParameterDescription key="FunctionParameter_478" name="S5" order="19" role="variable"/>
        <ParameterDescription key="FunctionParameter_513" name="S6" order="20" role="variable"/>
        <ParameterDescription key="FunctionParameter_514" name="P1" order="21" role="variable"/>
        <ParameterDescription key="FunctionParameter_515" name="P2" order="22" role="variable"/>
        <ParameterDescription key="FunctionParameter_516" name="P3" order="23" role="variable"/>
        <ParameterDescription key="FunctionParameter_517" name="P4" order="24" role="variable"/>
        <ParameterDescription key="FunctionParameter_518" name="P5" order="25" role="variable"/>
        <ParameterDescription key="FunctionParameter_519" name="P6" order="26" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_vcactC14_1" type="UserDefined" reversible="true">
      <Expression>
        Vfcact*(C14AcylCarCYT*CarMAT-C14AcylCarMAT*CarCYT/Keqcact)/(C14AcylCarCYT*CarMAT+KmcactCarMAT*C14AcylCarCYT+KmcactC14AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C14AcylCarMAT*(1+C14AcylCarCYT/KicactC14AcylCarCYT)+CarCYT*(KmcactC14AcylCarMAT+C14AcylCarMAT)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_534" name="C14AcylCarCYT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_535" name="C14AcylCarMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_536" name="CarCYT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_537" name="CarMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_538" name="Keqcact" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_539" name="KicactC14AcylCarCYT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_540" name="KicactCarCYT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="KmcactC14AcylCarCYT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_542" name="KmcactC14AcylCarMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="KmcactCarCYT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_544" name="KmcactCarMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_545" name="Vfcact" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_546" name="Vrcact" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_vcactC16_1" type="UserDefined" reversible="true">
      <Expression>
        Vfcact*(C16AcylCarCYT*CarMAT-C16AcylCarMAT*CarCYT/Keqcact)/(C16AcylCarCYT*CarMAT+KmcactCarMAT*C16AcylCarCYT+KmcactC16AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C16AcylCarMAT*(1+C16AcylCarCYT/KicactC16AcylCarCYT)+CarCYT*(KmcactC16AcylCarMAT+C16AcylCarMAT)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_533" name="C16AcylCarCYT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_532" name="C16AcylCarMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_531" name="CarCYT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_530" name="CarMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_529" name="Keqcact" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="KicactC16AcylCarCYT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="KicactCarCYT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_526" name="KmcactC16AcylCarCYT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_525" name="KmcactC16AcylCarMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_524" name="KmcactCarCYT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_523" name="KmcactCarMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_522" name="Vfcact" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_521" name="Vrcact" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_vcactC10_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:48:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vfcact*(C10AcylCarCYT*CarMAT-C10AcylCarMAT*CarCYT/Keqcact)/(C10AcylCarCYT*CarMAT+KmcactCarMAT*C10AcylCarCYT+KmcactC10AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C10AcylCarMAT*(1+C10AcylCarCYT/KicactC10AcylCarCYT)+CarCYT*(KmcactC10AcylCarMAT+C10AcylCarMAT)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_520" name="C10AcylCarCYT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_547" name="C10AcylCarMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_548" name="CarCYT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_549" name="CarMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_550" name="Keqcact" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_551" name="KicactC10AcylCarCYT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_552" name="KicactCarCYT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_553" name="KmcactC10AcylCarCYT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_554" name="KmcactC10AcylCarMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="KmcactCarCYT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_556" name="KmcactCarMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_557" name="Vfcact" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_558" name="Vrcact" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_vcactC12_1" type="UserDefined" reversible="true">
      <Expression>
        Vfcact*(C12AcylCarCYT*CarMAT-C12AcylCarMAT*CarCYT/Keqcact)/(C12AcylCarCYT*CarMAT+KmcactCarMAT*C12AcylCarCYT+KmcactC12AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C12AcylCarMAT*(1+C12AcylCarCYT/KicactC12AcylCarCYT)+CarCYT*(KmcactC12AcylCarMAT+C12AcylCarMAT)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_559" name="C12AcylCarCYT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_560" name="C12AcylCarMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_561" name="CarCYT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_562" name="CarMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_563" name="Keqcact" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_564" name="KicactC12AcylCarCYT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_565" name="KicactCarCYT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_566" name="KmcactC12AcylCarCYT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_567" name="KmcactC12AcylCarMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_568" name="KmcactCarCYT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_569" name="KmcactCarMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_570" name="Vfcact" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_571" name="Vrcact" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_vcactC6_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:42:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vfcact*(C6AcylCarCYT*CarMAT-C6AcylCarMAT*CarCYT/Keqcact)/(C6AcylCarCYT*CarMAT+KmcactCarMAT*C6AcylCarCYT+KmcactC6AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C6AcylCarMAT*(1+C6AcylCarCYT/KicactC6AcylCarCYT)+CarCYT*(KmcactC6AcylCarMAT+C6AcylCarMAT)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_572" name="C6AcylCarCYT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_573" name="C6AcylCarMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_574" name="CarCYT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_575" name="CarMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_576" name="Keqcact" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="KicactC6AcylCarCYT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_578" name="KicactCarCYT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_579" name="KmcactC6AcylCarCYT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_580" name="KmcactC6AcylCarMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_581" name="KmcactCarCYT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_582" name="KmcactCarMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_583" name="Vfcact" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_584" name="Vrcact" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_vcactC8_1" type="UserDefined" reversible="true">
      <Expression>
        Vfcact*(C8AcylCarCYT*CarMAT-C8AcylCarMAT*CarCYT/Keqcact)/(C8AcylCarCYT*CarMAT+KmcactCarMAT*C8AcylCarCYT+KmcactC8AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C8AcylCarMAT*(1+C8AcylCarCYT/KicactC8AcylCarCYT)+CarCYT*(KmcactC8AcylCarMAT+C8AcylCarMAT)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_585" name="C8AcylCarCYT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_586" name="C8AcylCarMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_587" name="CarCYT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_588" name="CarMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_589" name="Keqcact" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_590" name="KicactC8AcylCarCYT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_591" name="KicactCarCYT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_592" name="KmcactC8AcylCarCYT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_593" name="KmcactC8AcylCarMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_594" name="KmcactCarCYT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_595" name="KmcactCarMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_596" name="Vfcact" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_597" name="Vrcact" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_vcpt2C16_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:46:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        CPT2_2(sfcpt2C16,Vcpt2,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,CarMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_633" name="C10AcylCarMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_632" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_631" name="C12AcylCarMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_630" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_629" name="C14AcylCarMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_628" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_627" name="C16AcylCarMAT" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_626" name="C16AcylCoAMAT" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_625" name="C4AcylCarMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_624" name="C4AcylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_623" name="C6AcylCarMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_622" name="C6AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_621" name="C8AcylCarMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_620" name="C8AcylCoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_619" name="CarMAT" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_618" name="CoAMAT" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_617" name="Keqcpt2" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_616" name="Kmcpt2C10AcylCarMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_615" name="Kmcpt2C10AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_614" name="Kmcpt2C12AcylCarMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_613" name="Kmcpt2C12AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_612" name="Kmcpt2C14AcylCarMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_611" name="Kmcpt2C14AcylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="Kmcpt2C16AcylCarMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_599" name="Kmcpt2C16AcylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_600" name="Kmcpt2C4AcylCarMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_601" name="Kmcpt2C4AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_602" name="Kmcpt2C6AcylCarMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_603" name="Kmcpt2C6AcylCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_604" name="Kmcpt2C8AcylCarMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_605" name="Kmcpt2C8AcylCoAMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_606" name="Kmcpt2CarMAT" order="31" role="constant"/>
        <ParameterDescription key="FunctionParameter_607" name="Kmcpt2CoAMAT" order="32" role="constant"/>
        <ParameterDescription key="FunctionParameter_608" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_609" name="Vcpt2" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_610" name="sfcpt2C16" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_vcactC4_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:32:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vfcact*(C4AcylCarCYT*CarMAT-C4AcylCarMAT*CarCYT/Keqcact)/(C4AcylCarCYT*CarMAT+KmcactCarMAT*C4AcylCarCYT+KmcactC4AcylCarCYT*CarMAT*(1+CarCYT/KicactCarCYT)+Vfcact/(Vrcact*Keqcact)*(KmcactCarCYT*C4AcylCarMAT*(1+C4AcylCarCYT/KicactC4AcylCarCYT)+CarCYT*(KmcactC4AcylCarMAT+C4AcylCarMAT)))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_657" name="C4AcylCarCYT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_658" name="C4AcylCarMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_659" name="CarCYT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_660" name="CarMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_661" name="Keqcact" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_662" name="KicactC4AcylCarCYT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_663" name="KicactCarCYT" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_664" name="KmcactC4AcylCarCYT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_665" name="KmcactC4AcylCarMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_666" name="KmcactCarCYT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_667" name="KmcactCarMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_668" name="Vfcact" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_669" name="Vrcact" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_vcpt2C14_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:46:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        CPT2_2(sfcpt2C14,Vcpt2,Kmcpt2C14AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C14AcylCarMAT,C16AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C14AcylCoAMAT,C16AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,CarMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_681" name="C10AcylCarMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_680" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_679" name="C12AcylCarMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_678" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_677" name="C14AcylCarMAT" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_676" name="C14AcylCoAMAT" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_675" name="C16AcylCarMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_674" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_673" name="C4AcylCarMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_672" name="C4AcylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_671" name="C6AcylCarMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_670" name="C6AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_634" name="C8AcylCarMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_635" name="C8AcylCoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_636" name="CarMAT" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_637" name="CoAMAT" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_638" name="Keqcpt2" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_639" name="Kmcpt2C10AcylCarMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_640" name="Kmcpt2C10AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_641" name="Kmcpt2C12AcylCarMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_642" name="Kmcpt2C12AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_643" name="Kmcpt2C14AcylCarMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_656" name="Kmcpt2C14AcylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_655" name="Kmcpt2C16AcylCarMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_654" name="Kmcpt2C16AcylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_653" name="Kmcpt2C4AcylCoAMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_652" name="Kmcpt2C6AcylCarMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_651" name="Kmcpt2C6AcylCoAMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_650" name="Kmcpt2C8AcylCarMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="Kmcpt2C8AcylCoAMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_648" name="Kmcpt2CarMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_647" name="Kmcpt2CoAMAT" order="31" role="constant"/>
        <ParameterDescription key="FunctionParameter_646" name="VMAT" order="32" role="volume"/>
        <ParameterDescription key="FunctionParameter_645" name="Vcpt2" order="33" role="constant"/>
        <ParameterDescription key="FunctionParameter_644" name="sfcpt2C14" order="34" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function_4_vcpt2C10_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:45:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        CPT2_2(sfcpt2C10,Vcpt2,Kmcpt2C10AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C10AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C10AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,CarMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_717" name="C10AcylCarMAT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_682" name="C10AcylCoAMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_683" name="C12AcylCarMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_684" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_685" name="C14AcylCarMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_686" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_687" name="C16AcylCarMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_688" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_689" name="C4AcylCarMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_690" name="C4AcylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_691" name="C6AcylCarMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_692" name="C6AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_693" name="C8AcylCarMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_694" name="C8AcylCoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_695" name="CarMAT" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_696" name="CoAMAT" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_697" name="Keqcpt2" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_698" name="Kmcpt2C10AcylCarMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_699" name="Kmcpt2C10AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_700" name="Kmcpt2C12AcylCarMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_701" name="Kmcpt2C12AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_702" name="Kmcpt2C14AcylCarMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_703" name="Kmcpt2C14AcylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_704" name="Kmcpt2C16AcylCarMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_705" name="Kmcpt2C16AcylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_706" name="Kmcpt2C4AcylCarMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_707" name="Kmcpt2C4AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_708" name="Kmcpt2C6AcylCarMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_709" name="Kmcpt2C6AcylCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_710" name="Kmcpt2C8AcylCarMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_711" name="Kmcpt2C8AcylCoAMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_712" name="Kmcpt2CarMAT" order="31" role="constant"/>
        <ParameterDescription key="FunctionParameter_713" name="Kmcpt2CoAMAT" order="32" role="constant"/>
        <ParameterDescription key="FunctionParameter_714" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_715" name="Vcpt2" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_716" name="sfcpt2C10" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="function_4_vcpt2C8_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:46:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        CPT2_2(sfcpt2C8,Vcpt2,Kmcpt2C8AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C8AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C8AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,CarMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_718" name="C10AcylCarMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_719" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_720" name="C12AcylCarMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_721" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_722" name="C14AcylCarMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_723" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_724" name="C16AcylCarMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_725" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_726" name="C4AcylCarMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_727" name="C4AcylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_728" name="C6AcylCarMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_729" name="C6AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_730" name="C8AcylCarMAT" order="12" role="substrate"/>
        <ParameterDescription key="FunctionParameter_731" name="C8AcylCoAMAT" order="13" role="product"/>
        <ParameterDescription key="FunctionParameter_732" name="CarMAT" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_733" name="CoAMAT" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_734" name="Keqcpt2" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_735" name="Kmcpt2C10AcylCarMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_736" name="Kmcpt2C10AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_737" name="Kmcpt2C12AcylCarMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_738" name="Kmcpt2C12AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_739" name="Kmcpt2C14AcylCarMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_740" name="Kmcpt2C14AcylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_741" name="Kmcpt2C16AcylCarMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_742" name="Kmcpt2C16AcylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_743" name="Kmcpt2C4AcylCarMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_744" name="Kmcpt2C4AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_745" name="Kmcpt2C6AcylCarMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_746" name="Kmcpt2C6AcylCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_747" name="Kmcpt2C8AcylCarMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_748" name="Kmcpt2C8AcylCoAMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_749" name="Kmcpt2CarMAT" order="31" role="constant"/>
        <ParameterDescription key="FunctionParameter_750" name="Kmcpt2CoAMAT" order="32" role="constant"/>
        <ParameterDescription key="FunctionParameter_751" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_752" name="Vcpt2" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_753" name="sfcpt2C8" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="function_4_vcpt2C12_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:46:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        CPT2_2(sfcpt2C12,Vcpt2,Kmcpt2C12AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C12AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,C4AcylCarMAT,CoAMAT,C12AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,CarMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_754" name="C10AcylCarMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_755" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_756" name="C12AcylCarMAT" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_757" name="C12AcylCoAMAT" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_758" name="C14AcylCarMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_759" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_760" name="C16AcylCarMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_761" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_762" name="C4AcylCarMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_763" name="C4AcylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_764" name="C6AcylCarMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_765" name="C6AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_766" name="C8AcylCarMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_767" name="C8AcylCoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_768" name="CarMAT" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_769" name="CoAMAT" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_770" name="Keqcpt2" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_771" name="Kmcpt2C10AcylCarMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_772" name="Kmcpt2C10AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_773" name="Kmcpt2C12AcylCarMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_774" name="Kmcpt2C12AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_775" name="Kmcpt2C14AcylCarMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_776" name="Kmcpt2C14AcylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_777" name="Kmcpt2C16AcylCarMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_778" name="Kmcpt2C16AcylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_779" name="Kmcpt2C4AcylCarMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_780" name="Kmcpt2C4AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_781" name="Kmcpt2C6AcylCarMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_782" name="Kmcpt2C6AcylCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_783" name="Kmcpt2C8AcylCarMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_784" name="Kmcpt2C8AcylCoAMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_785" name="Kmcpt2CarMAT" order="31" role="constant"/>
        <ParameterDescription key="FunctionParameter_786" name="Kmcpt2CoAMAT" order="32" role="constant"/>
        <ParameterDescription key="FunctionParameter_787" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_788" name="Vcpt2" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_789" name="sfcpt2C12" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="function_4_vcpt2C4_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:46:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        CPT2_2(sfcpt2C4,Vcpt2,Kmcpt2C4AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C6AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C4AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C6AcylCarMAT,CoAMAT,C4AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,CarMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_790" name="C10AcylCarMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_791" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_792" name="C12AcylCarMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_793" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_794" name="C14AcylCarMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_795" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_796" name="C16AcylCarMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_797" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_798" name="C4AcylCarMAT" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_799" name="C4AcylCoAMAT" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_800" name="C6AcylCarMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_801" name="C6AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_802" name="C8AcylCarMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_803" name="C8AcylCoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_804" name="CarMAT" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_805" name="CoAMAT" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_806" name="Keqcpt2" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_807" name="Kmcpt2C10AcylCarMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_808" name="Kmcpt2C10AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_809" name="Kmcpt2C12AcylCarMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_810" name="Kmcpt2C12AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_811" name="Kmcpt2C14AcylCarMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_812" name="Kmcpt2C14AcylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_813" name="Kmcpt2C16AcylCarMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_814" name="Kmcpt2C16AcylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_815" name="Kmcpt2C4AcylCarMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_816" name="Kmcpt2C4AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_817" name="Kmcpt2C6AcylCarMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_818" name="Kmcpt2C6AcylCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_819" name="Kmcpt2C8AcylCarMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_820" name="Kmcpt2C8AcylCoAMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_821" name="Kmcpt2CarMAT" order="31" role="constant"/>
        <ParameterDescription key="FunctionParameter_822" name="Kmcpt2CoAMAT" order="32" role="constant"/>
        <ParameterDescription key="FunctionParameter_823" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_824" name="Vcpt2" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_825" name="sfcpt2C4" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="function_4_vcpt2C6_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:46:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        CPT2_2(sfcpt2C6,Vcpt2,Kmcpt2C6AcylCarMAT,Kmcpt2C16AcylCarMAT,Kmcpt2C14AcylCarMAT,Kmcpt2C12AcylCarMAT,Kmcpt2C10AcylCarMAT,Kmcpt2C8AcylCarMAT,Kmcpt2C4AcylCarMAT,Kmcpt2CoAMAT,Kmcpt2C6AcylCoAMAT,Kmcpt2C16AcylCoAMAT,Kmcpt2C14AcylCoAMAT,Kmcpt2C12AcylCoAMAT,Kmcpt2C10AcylCoAMAT,Kmcpt2C8AcylCoAMAT,Kmcpt2C4AcylCoAMAT,Kmcpt2CarMAT,Keqcpt2,C6AcylCarMAT,C16AcylCarMAT,C14AcylCarMAT,C12AcylCarMAT,C10AcylCarMAT,C8AcylCarMAT,C4AcylCarMAT,CoAMAT,C6AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C4AcylCoAMAT,CarMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_826" name="C10AcylCarMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_827" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_828" name="C12AcylCarMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_829" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_830" name="C14AcylCarMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_831" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_832" name="C16AcylCarMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_833" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_834" name="C4AcylCarMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_835" name="C4AcylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_836" name="C6AcylCarMAT" order="10" role="substrate"/>
        <ParameterDescription key="FunctionParameter_837" name="C6AcylCoAMAT" order="11" role="product"/>
        <ParameterDescription key="FunctionParameter_838" name="C8AcylCarMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_839" name="C8AcylCoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_840" name="CarMAT" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_841" name="CoAMAT" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_842" name="Keqcpt2" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_843" name="Kmcpt2C10AcylCarMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_844" name="Kmcpt2C10AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_845" name="Kmcpt2C12AcylCarMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_846" name="Kmcpt2C12AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_847" name="Kmcpt2C14AcylCarMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_848" name="Kmcpt2C14AcylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_849" name="Kmcpt2C16AcylCarMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_850" name="Kmcpt2C16AcylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_851" name="Kmcpt2C4AcylCarMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_852" name="Kmcpt2C4AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_853" name="Kmcpt2C6AcylCarMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_854" name="Kmcpt2C6AcylCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_855" name="Kmcpt2C8AcylCarMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_856" name="Kmcpt2C8AcylCoAMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_857" name="Kmcpt2CarMAT" order="31" role="constant"/>
        <ParameterDescription key="FunctionParameter_858" name="Kmcpt2CoAMAT" order="32" role="constant"/>
        <ParameterDescription key="FunctionParameter_859" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_860" name="Vcpt2" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_861" name="sfcpt2C6" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="function_4_vvlcadC14_1" type="UserDefined" reversible="true">
      <Expression>
        VLCAD_2(sfvlcadC14,Vvlcad,KmvlcadC14AcylCoAMAT,KmvlcadC16AcylCoAMAT,KmvlcadC12AcylCoAMAT,KmvlcadFAD,KmvlcadC14EnoylCoAMAT,KmvlcadC16EnoylCoAMAT,KmvlcadC12EnoylCoAMAT,KmvlcadFADH,Keqvlcad,C14AcylCoAMAT,C16AcylCoAMAT,C12AcylCoAMAT,FADtMAT,C14EnoylCoAMAT,C16EnoylCoAMAT,C12EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_878" name="C12AcylCoAMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_879" name="C12EnoylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_880" name="C14AcylCoAMAT" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_881" name="C14EnoylCoAMAT" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_882" name="C16AcylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_883" name="C16EnoylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_884" name="FADHMAT" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_885" name="FADtMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_886" name="Keqvlcad" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_887" name="KmvlcadC12AcylCoAMAT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_888" name="KmvlcadC12EnoylCoAMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_889" name="KmvlcadC14AcylCoAMAT" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_890" name="KmvlcadC14EnoylCoAMAT" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_891" name="KmvlcadC16AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_892" name="KmvlcadC16EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_893" name="KmvlcadFAD" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_894" name="KmvlcadFADH" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_895" name="VMAT" order="17" role="volume"/>
        <ParameterDescription key="FunctionParameter_896" name="Vvlcad" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_897" name="sfvlcadC14" order="19" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="function_4_vlcadC16_1" type="UserDefined" reversible="true">
      <Expression>
        LCAD_2(sflcadC16,Vlcad,KmlcadC16AcylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC10AcylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadFAD,KmlcadC16EnoylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFADH,Keqlcad,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,FADtMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_909" name="C10AcylCoAMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_908" name="C10EnoylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_907" name="C12AcylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_906" name="C12EnoylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_905" name="C14AcylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_904" name="C14EnoylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_903" name="C16AcylCoAMAT" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_902" name="C16EnoylCoAMAT" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_877" name="C8AcylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_876" name="C8EnoylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_875" name="FADHMAT" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_874" name="FADtMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_873" name="Keqlcad" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_872" name="KmlcadC10AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_871" name="KmlcadC10EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_870" name="KmlcadC12AcylCoAMAT" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_869" name="KmlcadC12EnoylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_868" name="KmlcadC14AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_867" name="KmlcadC14EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_866" name="KmlcadC16AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_865" name="KmlcadC16EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_864" name="KmlcadC8AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_863" name="KmlcadC8EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_862" name="KmlcadFAD" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_898" name="KmlcadFADH" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_899" name="VMAT" order="25" role="volume"/>
        <ParameterDescription key="FunctionParameter_900" name="Vlcad" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_901" name="sflcadC16" order="27" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="function_4_vlcadC14_1" type="UserDefined" reversible="true">
      <Expression>
        LCAD_2(sflcadC14,Vlcad,KmlcadC14AcylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC10AcylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadFAD,KmlcadC14EnoylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFADH,Keqlcad,C14AcylCoAMAT,C16AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,FADtMAT,C14EnoylCoAMAT,C16EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_910" name="C10AcylCoAMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_911" name="C10EnoylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_912" name="C12AcylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_913" name="C12EnoylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_914" name="C14AcylCoAMAT" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_915" name="C14EnoylCoAMAT" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_916" name="C16AcylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_917" name="C16EnoylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_918" name="C8AcylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_919" name="C8EnoylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_920" name="FADHMAT" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_921" name="FADtMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_922" name="Keqlcad" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_923" name="KmlcadC10AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_924" name="KmlcadC10EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_925" name="KmlcadC12AcylCoAMAT" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_926" name="KmlcadC12EnoylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_927" name="KmlcadC14AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_928" name="KmlcadC14EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_929" name="KmlcadC16AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_930" name="KmlcadC16EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_931" name="KmlcadC8AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_932" name="KmlcadC8EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_933" name="KmlcadFAD" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_934" name="KmlcadFADH" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_935" name="VMAT" order="25" role="volume"/>
        <ParameterDescription key="FunctionParameter_936" name="Vlcad" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_937" name="sflcadC14" order="27" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="function_4_vvlcadC16_1" type="UserDefined" reversible="true">
      <Expression>
        VLCAD_2(sfvlcadC16,Vvlcad,KmvlcadC16AcylCoAMAT,KmvlcadC14AcylCoAMAT,KmvlcadC12AcylCoAMAT,KmvlcadFAD,KmvlcadC16EnoylCoAMAT,KmvlcadC14EnoylCoAMAT,KmvlcadC12EnoylCoAMAT,KmvlcadFADH,Keqvlcad,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,FADtMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_946" name="C12AcylCoAMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_947" name="C12EnoylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_948" name="C14AcylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_949" name="C14EnoylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_950" name="C16AcylCoAMAT" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_951" name="C16EnoylCoAMAT" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_952" name="FADHMAT" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_953" name="FADtMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_954" name="Keqvlcad" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_955" name="KmvlcadC12AcylCoAMAT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_956" name="KmvlcadC12EnoylCoAMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_957" name="KmvlcadC14AcylCoAMAT" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_958" name="KmvlcadC14EnoylCoAMAT" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_959" name="KmvlcadC16AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_960" name="KmvlcadC16EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_961" name="KmvlcadFAD" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_962" name="KmvlcadFADH" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_963" name="VMAT" order="17" role="volume"/>
        <ParameterDescription key="FunctionParameter_964" name="Vvlcad" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_965" name="sfvlcadC16" order="19" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="function_4_vvlcadC12_1" type="UserDefined" reversible="true">
      <Expression>
        VLCAD_2(sfvlcadC12,Vvlcad,KmvlcadC12AcylCoAMAT,KmvlcadC16AcylCoAMAT,KmvlcadC14AcylCoAMAT,KmvlcadFAD,KmvlcadC12EnoylCoAMAT,KmvlcadC16EnoylCoAMAT,KmvlcadC14EnoylCoAMAT,KmvlcadFADH,Keqvlcad,C12AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,FADtMAT,C12EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_945" name="C12AcylCoAMAT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_944" name="C12EnoylCoAMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_943" name="C14AcylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_942" name="C14EnoylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_941" name="C16AcylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_940" name="C16EnoylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_939" name="FADHMAT" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_938" name="FADtMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_966" name="Keqvlcad" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_967" name="KmvlcadC12AcylCoAMAT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_968" name="KmvlcadC12EnoylCoAMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_969" name="KmvlcadC14AcylCoAMAT" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_970" name="KmvlcadC14EnoylCoAMAT" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_971" name="KmvlcadC16AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_972" name="KmvlcadC16EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_973" name="KmvlcadFAD" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_974" name="KmvlcadFADH" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_975" name="VMAT" order="17" role="volume"/>
        <ParameterDescription key="FunctionParameter_976" name="Vvlcad" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_977" name="sfvlcadC12" order="19" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="function_4_vlcadC10_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:46:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        LCAD_2(sflcadC10,Vlcad,KmlcadC10AcylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC12AcylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadFAD,KmlcadC10EnoylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC12EnoylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFADH,Keqlcad,C10AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C8AcylCoAMAT,FADtMAT,C10EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C8EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1005" name="C10AcylCoAMAT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1004" name="C10EnoylCoAMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1003" name="C12AcylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1002" name="C12EnoylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1001" name="C14AcylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1000" name="C14EnoylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_999" name="C16AcylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_998" name="C16EnoylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_978" name="C8AcylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_979" name="C8EnoylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_980" name="FADHMAT" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_981" name="FADtMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_982" name="Keqlcad" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_983" name="KmlcadC10AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_984" name="KmlcadC10EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_985" name="KmlcadC12AcylCoAMAT" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_986" name="KmlcadC12EnoylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_987" name="KmlcadC14AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_988" name="KmlcadC14EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_989" name="KmlcadC16AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_990" name="KmlcadC16EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_991" name="KmlcadC8AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_992" name="KmlcadC8EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_993" name="KmlcadFAD" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_994" name="KmlcadFADH" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_995" name="VMAT" order="25" role="volume"/>
        <ParameterDescription key="FunctionParameter_996" name="Vlcad" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_997" name="sflcadC10" order="27" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="function_4_vlcadC12_1" type="UserDefined" reversible="true">
      <Expression>
        LCAD_2(sflcadC12,Vlcad,KmlcadC12AcylCoAMAT,KmlcadC16AcylCoAMAT,KmlcadC14AcylCoAMAT,KmlcadC10AcylCoAMAT,KmlcadC8AcylCoAMAT,KmlcadFAD,KmlcadC12EnoylCoAMAT,KmlcadC16EnoylCoAMAT,KmlcadC14EnoylCoAMAT,KmlcadC10EnoylCoAMAT,KmlcadC8EnoylCoAMAT,KmlcadFADH,Keqlcad,C12AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,FADtMAT,C14EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1007" name="C10AcylCoAMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1008" name="C10EnoylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1009" name="C12AcylCoAMAT" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1010" name="C14AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1011" name="C14EnoylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1012" name="C16AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1013" name="C16EnoylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1014" name="C8AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1015" name="C8EnoylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1016" name="FADHMAT" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_1017" name="FADtMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1018" name="Keqlcad" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_1019" name="KmlcadC10AcylCoAMAT" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_1020" name="KmlcadC10EnoylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_1021" name="KmlcadC12AcylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1022" name="KmlcadC12EnoylCoAMAT" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1023" name="KmlcadC14AcylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1024" name="KmlcadC14EnoylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1025" name="KmlcadC16AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1026" name="KmlcadC16EnoylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1027" name="KmlcadC8AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1028" name="KmlcadC8EnoylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1029" name="KmlcadFAD" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1030" name="KmlcadFADH" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1031" name="VMAT" order="24" role="volume"/>
        <ParameterDescription key="FunctionParameter_1032" name="Vlcad" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_1033" name="sflcadC12" order="26" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="function_4_vmcadC10_1" type="UserDefined" reversible="true">
      <Expression>
        MCAD_2(sfmcadC10,Vmcad,KmmcadC10AcylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadFAD,KmmcadC10EnoylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadFADH,Keqmcad,C10AcylCoAMAT,C12AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,FADtMAT,C10EnoylCoAMAT,C12EnoylCoAMAT,C8EnoylCoAMAT,C6EnoylCoAMAT,C4EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1060" name="C10AcylCoAMAT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1006" name="C10EnoylCoAMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1034" name="C12AcylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1035" name="C12EnoylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1036" name="C4AcylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1037" name="C4EnoylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1038" name="C6AcylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1039" name="C6EnoylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1040" name="C8AcylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1041" name="C8EnoylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1042" name="FADHMAT" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_1043" name="FADtMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1044" name="Keqmcad" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_1045" name="KmmcadC10AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_1046" name="KmmcadC10EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1047" name="KmmcadC12AcylCoAMAT" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1048" name="KmmcadC12EnoylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1049" name="KmmcadC4AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1050" name="KmmcadC4EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1051" name="KmmcadC6AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1052" name="KmmcadC6EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1053" name="KmmcadC8AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1054" name="KmmcadC8EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1055" name="KmmcadFAD" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1056" name="KmmcadFADH" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1057" name="VMAT" order="25" role="volume"/>
        <ParameterDescription key="FunctionParameter_1058" name="Vmcad" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1059" name="sfmcadC10" order="27" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="function_4_vmcadC12_1" type="UserDefined" reversible="true">
      <Expression>
        MCAD_2(sfmcadC12,Vmcad,KmmcadC12AcylCoAMAT,KmmcadC10AcylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadFAD,KmmcadC12EnoylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadFADH,Keqmcad,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,FADtMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,C6EnoylCoAMAT,C4EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1061" name="C10AcylCoAMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1062" name="C10EnoylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1063" name="C12AcylCoAMAT" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1064" name="C12EnoylCoAMAT" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1065" name="C4AcylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1066" name="C4EnoylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1067" name="C6AcylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1068" name="C6EnoylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1069" name="C8AcylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1070" name="C8EnoylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1071" name="FADHMAT" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_1072" name="FADtMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1073" name="Keqmcad" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_1074" name="KmmcadC10AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_1075" name="KmmcadC10EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1076" name="KmmcadC12AcylCoAMAT" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1077" name="KmmcadC12EnoylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1078" name="KmmcadC4AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1079" name="KmmcadC4EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1080" name="KmmcadC6AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1081" name="KmmcadC6EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1082" name="KmmcadC8AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1083" name="KmmcadC8EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1084" name="KmmcadFAD" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1085" name="KmmcadFADH" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1086" name="VMAT" order="25" role="volume"/>
        <ParameterDescription key="FunctionParameter_1087" name="Vmcad" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1088" name="sfmcadC12" order="27" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="function_4_vmcadC6_1" type="UserDefined" reversible="true">
      <Expression>
        MCAD_2(sfmcadC6,Vmcad,KmmcadC6AcylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC10AcylCoAMAT,KmmcadC8AcylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadFAD,KmmcadC6EnoylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC8EnoylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadFADH,Keqmcad,C6AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C4AcylCoAMAT,FADtMAT,C6EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,C4EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1089" name="C10AcylCoAMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1090" name="C10EnoylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1091" name="C12AcylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1092" name="C12EnoylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1093" name="C4AcylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1094" name="C4EnoylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1095" name="C6AcylCoAMAT" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1096" name="C6EnoylCoAMAT" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_1097" name="C8AcylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1098" name="C8EnoylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1099" name="FADHMAT" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_1100" name="FADtMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1101" name="Keqmcad" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_1102" name="KmmcadC10AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_1103" name="KmmcadC10EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1104" name="KmmcadC12AcylCoAMAT" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1105" name="KmmcadC12EnoylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1106" name="KmmcadC4AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1107" name="KmmcadC4EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1108" name="KmmcadC6AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1109" name="KmmcadC6EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1110" name="KmmcadC8AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1111" name="KmmcadC8EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1112" name="KmmcadFAD" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1113" name="KmmcadFADH" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1114" name="VMAT" order="25" role="volume"/>
        <ParameterDescription key="FunctionParameter_1115" name="Vmcad" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1116" name="sfmcadC6" order="27" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="function_4_vmcadC8_1" type="UserDefined" reversible="true">
      <Expression>
        MCAD_2(sfmcadC8,Vmcad,KmmcadC8AcylCoAMAT,KmmcadC12AcylCoAMAT,KmmcadC10AcylCoAMAT,KmmcadC6AcylCoAMAT,KmmcadC4AcylCoAMAT,KmmcadFAD,KmmcadC8EnoylCoAMAT,KmmcadC12EnoylCoAMAT,KmmcadC10EnoylCoAMAT,KmmcadC6EnoylCoAMAT,KmmcadC4EnoylCoAMAT,KmmcadFADH,Keqmcad,C8AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C6AcylCoAMAT,C4AcylCoAMAT,FADtMAT,C8EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C6EnoylCoAMAT,C4EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1117" name="C10AcylCoAMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1118" name="C10EnoylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1119" name="C12AcylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1120" name="C12EnoylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1121" name="C4AcylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1122" name="C4EnoylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1123" name="C6AcylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1124" name="C6EnoylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1125" name="C8AcylCoAMAT" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1126" name="C8EnoylCoAMAT" order="9" role="product"/>
        <ParameterDescription key="FunctionParameter_1127" name="FADHMAT" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_1128" name="FADtMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1129" name="Keqmcad" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_1130" name="KmmcadC10AcylCoAMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_1131" name="KmmcadC10EnoylCoAMAT" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1132" name="KmmcadC12AcylCoAMAT" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1133" name="KmmcadC12EnoylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1134" name="KmmcadC4AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1135" name="KmmcadC4EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1136" name="KmmcadC6AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1137" name="KmmcadC6EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1138" name="KmmcadC8AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1139" name="KmmcadC8EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1140" name="KmmcadFAD" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1141" name="KmmcadFADH" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1142" name="VMAT" order="25" role="volume"/>
        <ParameterDescription key="FunctionParameter_1143" name="Vmcad" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1144" name="sfmcadC8" order="27" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="function_4_vmtpC16_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:47:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        MTP_2(sfmtpC16,Vmtp,KmmtpC16EnoylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,NADtMAT,CoAMAT,C14AcylCoAMAT,C16AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,NADHMAT,AcetylCoAMAT,C4AcetoacylCoAMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1180" name="AcetylCoAMAT" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_1179" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1178" name="C10EnoylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1177" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1176" name="C12EnoylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1175" name="C14AcylCoAMAT" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_1174" name="C14EnoylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1173" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1145" name="C16EnoylCoAMAT" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1146" name="C4AcetoacylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1147" name="C6AcylCoAMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1148" name="C8AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1149" name="C8EnoylCoAMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1150" name="CoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1151" name="Keqmtp" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1152" name="KicrotC4AcetoacylCoA" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1153" name="KmmtpAcetylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1154" name="KmmtpC10AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1155" name="KmmtpC10EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1156" name="KmmtpC12AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1157" name="KmmtpC12EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1158" name="KmmtpC14AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1159" name="KmmtpC14EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1160" name="KmmtpC16AcylCoAMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1161" name="KmmtpC16EnoylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1162" name="KmmtpC6AcylCoAMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_1163" name="KmmtpC8AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1164" name="KmmtpC8EnoylCoAMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_1165" name="KmmtpCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_1166" name="KmmtpNADHMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_1167" name="KmmtpNADMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_1168" name="NADHMAT" order="31" role="product"/>
        <ParameterDescription key="FunctionParameter_1169" name="NADtMAT" order="32" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1170" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_1171" name="Vmtp" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_1172" name="sfmtpC16" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="function_4_vscadC4_1" type="UserDefined" reversible="true">
      <Expression>
        SCAD_2(sfscadC4,Vscad,KmscadC4AcylCoAMAT,KmscadC6AcylCoAMAT,KmscadFAD,KmscadC4EnoylCoAMAT,KmscadC6EnoylCoAMAT,KmscadFADH,Keqscad,C4AcylCoAMAT,C6AcylCoAMAT,FADtMAT,C4EnoylCoAMAT,C6EnoylCoAMAT,FADHMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1201" name="C4AcylCoAMAT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1202" name="C4EnoylCoAMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1203" name="C6AcylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1204" name="C6EnoylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1205" name="FADHMAT" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_1206" name="FADtMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1207" name="Keqscad" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1208" name="KmscadC4AcylCoAMAT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1209" name="KmscadC4EnoylCoAMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_1210" name="KmscadC6AcylCoAMAT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_1211" name="KmscadC6EnoylCoAMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_1212" name="KmscadFAD" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_1213" name="KmscadFADH" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_1214" name="VMAT" order="13" role="volume"/>
        <ParameterDescription key="FunctionParameter_1215" name="Vscad" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1216" name="sfscadC4" order="15" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="function_4_vmckatC6_1" type="UserDefined" reversible="true">
      <Expression>
        MCKATA_2(sfmckatC6,Vmckat,KmmckatC6KetoacylCoAMAT,KmmckatC16KetoacylCoAMAT,KmmckatC14KetoacylCoAMAT,KmmckatC12KetoacylCoAMAT,KmmckatC10KetoacylCoAMAT,KmmckatC8KetoacylCoAMAT,KmmckatC4AcetoacylCoAMAT,KmmckatCoAMAT,KmmckatC4AcylCoAMAT,KmmckatC16AcylCoAMAT,KmmckatC14AcylCoAMAT,KmmckatC12AcylCoAMAT,KmmckatC10AcylCoAMAT,KmmckatC8AcylCoAMAT,KmmckatC6AcylCoAMAT,KmmckatAcetylCoAMAT,Keqmckat,C6KetoacylCoAMAT,C16KetoacylCoAMAT,C14KetoacylCoAMAT,C12KetoacylCoAMAT,C10KetoacylCoAMAT,C8KetoacylCoAMAT,C4AcetoacylCoAMAT,CoAMAT,C4AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,AcetylCoAMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1232" name="AcetylCoAMAT" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_1231" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1230" name="C10KetoacylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1229" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1228" name="C12KetoacylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1227" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1226" name="C14KetoacylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1225" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1224" name="C16KetoacylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1223" name="C4AcetoacylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1222" name="C4AcylCoAMAT" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_1221" name="C6AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1220" name="C6KetoacylCoAMAT" order="12" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1219" name="C8AcylCoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1218" name="C8KetoacylCoAMAT" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1217" name="CoAMAT" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1181" name="Keqmckat" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1182" name="KmmckatAcetylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1183" name="KmmckatC10AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1184" name="KmmckatC10KetoacylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1200" name="KmmckatC12AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1199" name="KmmckatC12KetoacylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1198" name="KmmckatC14AcylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1197" name="KmmckatC14KetoacylCoAMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1196" name="KmmckatC16AcylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1195" name="KmmckatC16KetoacylCoAMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_1194" name="KmmckatC4AcetoacylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1193" name="KmmckatC4AcylCoAMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_1192" name="KmmckatC6AcylCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_1191" name="KmmckatC6KetoacylCoAMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_1190" name="KmmckatC8AcylCoAMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_1189" name="KmmckatC8KetoacylCoAMAT" order="31" role="constant"/>
        <ParameterDescription key="FunctionParameter_1188" name="KmmckatCoAMAT" order="32" role="constant"/>
        <ParameterDescription key="FunctionParameter_1187" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_1186" name="Vmckat" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_1185" name="sfmckatC6" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="function_4_vmckatC4_1" type="UserDefined" reversible="true">
      <Expression>
        MCKATB_2(sfmckatC4,Vmckat,KmmckatC4AcetoacylCoAMAT,KmmckatC16KetoacylCoAMAT,KmmckatC14KetoacylCoAMAT,KmmckatC12KetoacylCoAMAT,KmmckatC10KetoacylCoAMAT,KmmckatC8KetoacylCoAMAT,KmmckatC6KetoacylCoAMAT,KmmckatCoAMAT,KmmckatC4AcylCoAMAT,KmmckatC16AcylCoAMAT,KmmckatC14AcylCoAMAT,KmmckatC12AcylCoAMAT,KmmckatC10AcylCoAMAT,KmmckatC8AcylCoAMAT,KmmckatC6AcylCoAMAT,KmmckatAcetylCoAMAT,Keqmckat,C4AcetoacylCoAMAT,C16KetoacylCoAMAT,C14KetoacylCoAMAT,C12KetoacylCoAMAT,C10KetoacylCoAMAT,C8KetoacylCoAMAT,C6KetoacylCoAMAT,CoAMAT,C4AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,AcetylCoAMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1233" name="AcetylCoAMAT" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_1234" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1235" name="C10KetoacylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1236" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1237" name="C12KetoacylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1238" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1239" name="C14KetoacylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1240" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1241" name="C16KetoacylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1242" name="C4AcetoacylCoAMAT" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1243" name="C4AcylCoAMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1244" name="C6AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1245" name="C6KetoacylCoAMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1246" name="C8AcylCoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1247" name="C8KetoacylCoAMAT" order="14" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1248" name="CoAMAT" order="15" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1249" name="Keqmckat" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1250" name="KmmckatAcetylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1251" name="KmmckatC10AcylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1252" name="KmmckatC10KetoacylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1253" name="KmmckatC12AcylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1254" name="KmmckatC12KetoacylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1255" name="KmmckatC14AcylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1256" name="KmmckatC14KetoacylCoAMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1257" name="KmmckatC16AcylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1258" name="KmmckatC16KetoacylCoAMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_1259" name="KmmckatC4AcetoacylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1260" name="KmmckatC4AcylCoAMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_1261" name="KmmckatC6AcylCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_1262" name="KmmckatC6KetoacylCoAMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_1263" name="KmmckatC8AcylCoAMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_1264" name="KmmckatC8KetoacylCoAMAT" order="31" role="constant"/>
        <ParameterDescription key="FunctionParameter_1265" name="KmmckatCoAMAT" order="32" role="constant"/>
        <ParameterDescription key="FunctionParameter_1266" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_1267" name="Vmckat" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_1268" name="sfmckatC4" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="function_4_vmtpC12_1" type="UserDefined" reversible="true">
      <Expression>
        MTP_2(sfmtpC12,Vmtp,KmmtpC12EnoylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C12EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,NADtMAT,CoAMAT,C10AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,NADHMAT,AcetylCoAMAT,C4AcetoacylCoAMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1269" name="AcetylCoAMAT" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_1270" name="C10AcylCoAMAT" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_1271" name="C10EnoylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1272" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1273" name="C12EnoylCoAMAT" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1274" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1275" name="C14EnoylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1276" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1277" name="C16EnoylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1278" name="C4AcetoacylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1279" name="C6AcylCoAMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1280" name="C8AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1281" name="C8EnoylCoAMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1282" name="CoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1283" name="Keqmtp" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1284" name="KicrotC4AcetoacylCoA" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1285" name="KmmtpAcetylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1286" name="KmmtpC10AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1287" name="KmmtpC10EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1288" name="KmmtpC12AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1289" name="KmmtpC12EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1290" name="KmmtpC14AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1291" name="KmmtpC14EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1292" name="KmmtpC16AcylCoAMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1293" name="KmmtpC16EnoylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1294" name="KmmtpC6AcylCoAMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_1295" name="KmmtpC8AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1296" name="KmmtpC8EnoylCoAMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_1297" name="KmmtpCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_1298" name="KmmtpNADHMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_1299" name="KmmtpNADMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_1300" name="NADHMAT" order="31" role="product"/>
        <ParameterDescription key="FunctionParameter_1301" name="NADtMAT" order="32" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1302" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_1303" name="Vmtp" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_1304" name="sfmtpC12" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="function_4_vmtpC14_1" type="UserDefined" reversible="true">
      <Expression>
        MTP_2(sfmtpC14,Vmtp,KmmtpC14EnoylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C14EnoylCoAMAT,C16EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,C8EnoylCoAMAT,NADtMAT,CoAMAT,C12AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,C6AcylCoAMAT,NADHMAT,AcetylCoAMAT,C4AcetoacylCoAMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1305" name="AcetylCoAMAT" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_1306" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1307" name="C10EnoylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1308" name="C12AcylCoAMAT" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1309" name="C12EnoylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1310" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1311" name="C14EnoylCoAMAT" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1312" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1313" name="C16EnoylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1314" name="C4AcetoacylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1315" name="C6AcylCoAMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1316" name="C8AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1317" name="C8EnoylCoAMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1318" name="CoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1319" name="Keqmtp" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1320" name="KicrotC4AcetoacylCoA" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1321" name="KmmtpAcetylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1322" name="KmmtpC10AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1323" name="KmmtpC10EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1324" name="KmmtpC12AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1325" name="KmmtpC12EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1326" name="KmmtpC14AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1327" name="KmmtpC14EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1328" name="KmmtpC16AcylCoAMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1329" name="KmmtpC16EnoylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1330" name="KmmtpC6AcylCoAMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_1331" name="KmmtpC8AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1332" name="KmmtpC8EnoylCoAMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_1333" name="KmmtpCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_1334" name="KmmtpNADHMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_1335" name="KmmtpNADMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_1336" name="NADHMAT" order="31" role="product"/>
        <ParameterDescription key="FunctionParameter_1337" name="NADtMAT" order="32" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1338" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_1339" name="Vmtp" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_1340" name="sfmtpC14" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="function_4_vmtpC10_1" type="UserDefined" reversible="true">
      <Expression>
        MTP_2(sfmtpC10,Vmtp,KmmtpC10EnoylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC8EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC8AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC6AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C10EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C8EnoylCoAMAT,NADtMAT,CoAMAT,C8AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C6AcylCoAMAT,NADHMAT,AcetylCoAMAT,C4AcetoacylCoAMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1341" name="AcetylCoAMAT" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_1342" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1343" name="C10EnoylCoAMAT" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1344" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1345" name="C12EnoylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1346" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1347" name="C14EnoylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1348" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1349" name="C16EnoylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1350" name="C4AcetoacylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1351" name="C6AcylCoAMAT" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1352" name="C8AcylCoAMAT" order="11" role="product"/>
        <ParameterDescription key="FunctionParameter_1353" name="C8EnoylCoAMAT" order="12" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1354" name="CoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1355" name="Keqmtp" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1356" name="KicrotC4AcetoacylCoA" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1357" name="KmmtpAcetylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1358" name="KmmtpC10AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1359" name="KmmtpC10EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1360" name="KmmtpC12AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1361" name="KmmtpC12EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1362" name="KmmtpC14AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1363" name="KmmtpC14EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1364" name="KmmtpC16AcylCoAMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1365" name="KmmtpC16EnoylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1366" name="KmmtpC6AcylCoAMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_1367" name="KmmtpC8AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1368" name="KmmtpC8EnoylCoAMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_1369" name="KmmtpCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_1370" name="KmmtpNADHMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_1371" name="KmmtpNADMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_1372" name="NADHMAT" order="31" role="product"/>
        <ParameterDescription key="FunctionParameter_1373" name="NADtMAT" order="32" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1374" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_1375" name="Vmtp" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_1376" name="sfmtpC10" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="CRMS" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T15:40:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        sfc*Vc*sfm*Vm*(S1*P0/(Kms1*Kmms1*Kmp0)-P1*P3/(Kms1*Kmms1*Kmp0*Keqc*Keqm))/(sfc*Vc*(1+P1/Kmp1+P2/Kmp2)*(1+P0/Kmp0+P3/Kmp3)/(Kms1*Keqc)+sfm*Vm*P0*(1+S1/Kms1+S2/Kms2+I1/Ki)/(Kmms1*Kmp0))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1412" name="sfc" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_1411" name="Vc" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_1410" name="sfm" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_1409" name="Vm" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_1408" name="S1" order="4" role="variable"/>
        <ParameterDescription key="FunctionParameter_1407" name="P0" order="5" role="variable"/>
        <ParameterDescription key="FunctionParameter_1406" name="Kms1" order="6" role="variable"/>
        <ParameterDescription key="FunctionParameter_1405" name="Kmms1" order="7" role="variable"/>
        <ParameterDescription key="FunctionParameter_1404" name="Kmp0" order="8" role="variable"/>
        <ParameterDescription key="FunctionParameter_1403" name="P1" order="9" role="variable"/>
        <ParameterDescription key="FunctionParameter_1402" name="P3" order="10" role="variable"/>
        <ParameterDescription key="FunctionParameter_1401" name="Keqc" order="11" role="variable"/>
        <ParameterDescription key="FunctionParameter_1400" name="Keqm" order="12" role="variable"/>
        <ParameterDescription key="FunctionParameter_1399" name="Kmp1" order="13" role="variable"/>
        <ParameterDescription key="FunctionParameter_1398" name="P2" order="14" role="variable"/>
        <ParameterDescription key="FunctionParameter_1397" name="Kmp2" order="15" role="variable"/>
        <ParameterDescription key="FunctionParameter_1396" name="Kmp3" order="16" role="variable"/>
        <ParameterDescription key="FunctionParameter_1395" name="S2" order="17" role="variable"/>
        <ParameterDescription key="FunctionParameter_1394" name="Kms2" order="18" role="variable"/>
        <ParameterDescription key="FunctionParameter_1393" name="I1" order="19" role="variable"/>
        <ParameterDescription key="FunctionParameter_1392" name="Ki" order="20" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="function_4_vmtpC8_1" type="UserDefined" reversible="true">
      <Expression>
        MTP_2(sfmtpC8,Vmtp,KmmtpC8EnoylCoAMAT,KmmtpC16EnoylCoAMAT,KmmtpC14EnoylCoAMAT,KmmtpC12EnoylCoAMAT,KmmtpC10EnoylCoAMAT,KmmtpNADMAT,KmmtpCoAMAT,KmmtpC6AcylCoAMAT,KmmtpC16AcylCoAMAT,KmmtpC14AcylCoAMAT,KmmtpC12AcylCoAMAT,KmmtpC10AcylCoAMAT,KmmtpC8AcylCoAMAT,KmmtpNADHMAT,KmmtpAcetylCoAMAT,KicrotC4AcetoacylCoA,Keqmtp,C8EnoylCoAMAT,C16EnoylCoAMAT,C14EnoylCoAMAT,C12EnoylCoAMAT,C10EnoylCoAMAT,NADtMAT,CoAMAT,C6AcylCoAMAT,C16AcylCoAMAT,C14AcylCoAMAT,C12AcylCoAMAT,C10AcylCoAMAT,C8AcylCoAMAT,NADHMAT,AcetylCoAMAT,C4AcetoacylCoAMAT)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1433" name="AcetylCoAMAT" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_1432" name="C10AcylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1431" name="C10EnoylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1430" name="C12AcylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1429" name="C12EnoylCoAMAT" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1428" name="C14AcylCoAMAT" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1427" name="C14EnoylCoAMAT" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1426" name="C16AcylCoAMAT" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1425" name="C16EnoylCoAMAT" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1424" name="C4AcetoacylCoAMAT" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1423" name="C6AcylCoAMAT" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_1422" name="C8AcylCoAMAT" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1421" name="C8EnoylCoAMAT" order="12" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1420" name="CoAMAT" order="13" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1419" name="Keqmtp" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_1391" name="KicrotC4AcetoacylCoA" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_1390" name="KmmtpAcetylCoAMAT" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1389" name="KmmtpC10AcylCoAMAT" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1388" name="KmmtpC10EnoylCoAMAT" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1387" name="KmmtpC12AcylCoAMAT" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1386" name="KmmtpC12EnoylCoAMAT" order="20" role="constant"/>
        <ParameterDescription key="FunctionParameter_1385" name="KmmtpC14AcylCoAMAT" order="21" role="constant"/>
        <ParameterDescription key="FunctionParameter_1384" name="KmmtpC14EnoylCoAMAT" order="22" role="constant"/>
        <ParameterDescription key="FunctionParameter_1383" name="KmmtpC16AcylCoAMAT" order="23" role="constant"/>
        <ParameterDescription key="FunctionParameter_1382" name="KmmtpC16EnoylCoAMAT" order="24" role="constant"/>
        <ParameterDescription key="FunctionParameter_1381" name="KmmtpC6AcylCoAMAT" order="25" role="constant"/>
        <ParameterDescription key="FunctionParameter_1380" name="KmmtpC8AcylCoAMAT" order="26" role="constant"/>
        <ParameterDescription key="FunctionParameter_1379" name="KmmtpC8EnoylCoAMAT" order="27" role="constant"/>
        <ParameterDescription key="FunctionParameter_1378" name="KmmtpCoAMAT" order="28" role="constant"/>
        <ParameterDescription key="FunctionParameter_1377" name="KmmtpNADHMAT" order="29" role="constant"/>
        <ParameterDescription key="FunctionParameter_1413" name="KmmtpNADMAT" order="30" role="constant"/>
        <ParameterDescription key="FunctionParameter_1414" name="NADHMAT" order="31" role="product"/>
        <ParameterDescription key="FunctionParameter_1415" name="NADtMAT" order="32" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1416" name="VMAT" order="33" role="volume"/>
        <ParameterDescription key="FunctionParameter_1417" name="Vmtp" order="34" role="constant"/>
        <ParameterDescription key="FunctionParameter_1418" name="sfmtpC8" order="35" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="function_4_vacesink_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Function_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:48:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        RES_2(Ksacesink,AcetylCoAMAT,K1acesink)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1466" name="AcetylCoAMAT" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1467" name="K1acesink" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1468" name="Ksacesink" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1469" name="VMAT" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="CRMS_C6_1" type="UserDefined" reversible="true">
      <Expression>
        CRMS(sfcrotC6,Vcrot,sfmschadC6,Vmschad,C6EnoylCoAMAT,species_1,KmcrotC6EnoylCoAMAT,KmmschadC6HydroxyacylCoAMAT,KmmschadNADMAT,C6KetoacylCoAMAT,NADHMAT,Keqcrot,Keqmschad,KmmschadC6KetoacylCoAMAT,C4AcetoacylCoAMAT,KmmschadC4AcetoacylCoAMAT,KmmschadNADHMAT,C4EnoylCoAMAT,KmcrotC4EnoylCoAMAT,C4AcetoacylCoAMAT,KicrotC4AcetoacylCoA)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1445" name="C4AcetoacylCoAMAT" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1446" name="C4EnoylCoAMAT" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1447" name="C6EnoylCoAMAT" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1448" name="C6KetoacylCoAMAT" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_1449" name="Keqcrot" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1450" name="Keqmschad" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1451" name="KicrotC4AcetoacylCoA" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1452" name="KmcrotC4EnoylCoAMAT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1453" name="KmcrotC6EnoylCoAMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_1454" name="KmmschadC4AcetoacylCoAMAT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_1455" name="KmmschadC6HydroxyacylCoAMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_1456" name="KmmschadC6KetoacylCoAMAT" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_1457" name="KmmschadNADHMAT" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_1458" name="KmmschadNADMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_1459" name="NADHMAT" order="14" role="product"/>
        <ParameterDescription key="FunctionParameter_1460" name="VMAT" order="15" role="volume"/>
        <ParameterDescription key="FunctionParameter_1461" name="Vcrot" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1465" name="Vmschad" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1464" name="sfcrotC6" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1463" name="sfmschadC6" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1462" name="species_1" order="20" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="CRMS_C4_1" type="UserDefined" reversible="true">
      <Expression>
        CRMS(sfcrotC4,Vcrot,sfmschadC4,Vmschad,C4EnoylCoAMAT,species_1,KmcrotC4EnoylCoAMAT,KmmschadC4HydroxyacylCoAMAT,KmmschadNADMAT,C4AcetoacylCoAMAT,NADHMAT,Keqcrot,Keqmschad,KmmschadC4AcetoacylCoAMAT,C6KetoacylCoAMAT,KmmschadC6KetoacylCoAMAT,KmmschadNADHMAT,C6EnoylCoAMAT,KmcrotC6EnoylCoAMAT,C4AcetoacylCoAMAT,KicrotC4AcetoacylCoA)/VMAT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1444" name="C4AcetoacylCoAMAT" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_1443" name="C4EnoylCoAMAT" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1442" name="C6EnoylCoAMAT" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1441" name="C6KetoacylCoAMAT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_1440" name="Keqcrot" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_1439" name="Keqmschad" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_1438" name="KicrotC4AcetoacylCoA" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_1437" name="KmcrotC4EnoylCoAMAT" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_1436" name="KmcrotC6EnoylCoAMAT" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_1435" name="KmmschadC4AcetoacylCoAMAT" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_1434" name="KmmschadC4HydroxyacylCoAMAT" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_1470" name="KmmschadC6KetoacylCoAMAT" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_1471" name="KmmschadNADHMAT" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_1472" name="KmmschadNADMAT" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_1473" name="NADHMAT" order="14" role="product"/>
        <ParameterDescription key="FunctionParameter_1474" name="VMAT" order="15" role="volume"/>
        <ParameterDescription key="FunctionParameter_1475" name="Vcrot" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_1476" name="Vmschad" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_1477" name="sfcrotC4" order="18" role="constant"/>
        <ParameterDescription key="FunctionParameter_1478" name="sfmschadC4" order="19" role="constant"/>
        <ParameterDescription key="FunctionParameter_1479" name="species_1" order="20" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Rao2014 - Fatty acid beta-oxidation (reduced model)" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/10116"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>A model reduction method for biochemical reaction networks.</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:24885656"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T12:50:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>msharifshohan@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Sharif Shohan</vCard:Family>
            <vCard:Given>Mohammad Umer</vCard:Given>
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
            <vCard:EMAIL>shodhanr@gmail.com</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>RaoShodhan</vCard:Family>
                <vCard:Given></vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University Medical Center, Groningen</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>juty@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>JutyNick</vCard:Family>
                <vCard:Given></vCard:Given>
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
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1403250000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006635"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000759"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>This represents the reduced version of the "time course model" of Van Eunen et al (2013): Biochemical competition makes fatty-acid beta-oxidation vulnerable to substrate overload. The SBML was created from that of the original model and produces identical results when a time-course of 25 mins is run in COPASI</pre>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="VCYT" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:02:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_0" name="VMAT" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:02:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_54" name="C16AcylCarCYT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T16:26:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="C14AcylCarCYT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_52" name="C12AcylCarCYT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:11:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="C10AcylCarCYT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:11:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="C8AcylCarCYT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_49" name="C6AcylCarCYT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_48" name="C4AcylCarCYT" simulationType="reactions" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_47" name="C16AcylCoACYT" simulationType="assignment" compartment="Compartment_1" addNoise="false">
        <Expression>
          26.800000000000001*2.71828^(-0.17999999999999999*&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="CarCYT" simulationType="fixed" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_45" name="CoACYT" simulationType="fixed" compartment="Compartment_1" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_44" name="MalCoACYT" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:12:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="C16AcylCarMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_42" name="C16AcylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_41" name="C16EnoylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_40" name="C16HydroxyacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:14:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="C16KetoacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:15:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="C14AcylCarMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_37" name="C14AcylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_36" name="C14EnoylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_35" name="C14HydroxyacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:14:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="C14KetoacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:14:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="C12AcylCarMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:11:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="C12AcylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_31" name="C12EnoylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_30" name="C12HydroxyacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:14:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="C12KetoacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:14:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="C10AcylCarMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-17T11:34:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="C10AcylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_26" name="C10EnoylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T17:58:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="C10HydroxyacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:13:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="C10KetoacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:13:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="C8AcylCarMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_22" name="C8AcylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_21" name="C8EnoylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_20" name="C8HydroxyacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:15:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="C8KetoacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:15:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="C6AcylCarMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_17" name="C6AcylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_16" name="C6EnoylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_15" name="C6HydroxyacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:17:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="C6KetoacylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:55:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="C4AcylCarMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_12" name="C4AcylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_11" name="C4EnoylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_10" name="C4HydroxyacylCoAMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:16:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="C4AcetoacylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_8" name="AcetylCoAMAT" simulationType="reactions" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_7" name="FADHMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:12:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="NADHMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-02-28T13:12:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="CoAMAT" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[CoAMATt],Reference=Concentration>-(&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16AcylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16EnoylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16HydroxyacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16KetoacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14AcylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14EnoylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14HydroxyacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14KetoacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12AcylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12EnoylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12HydroxyacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12KetoacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10AcylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10EnoylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10HydroxyacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10KetoacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8AcylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8EnoylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8HydroxyacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8KetoacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6AcylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6EnoylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6HydroxyacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6KetoacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4AcylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4EnoylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4HydroxyacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4AcetoacylCoAMAT],Reference=Concentration>+&lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[AcetylCoAMAT],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="CarMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_3" name="FADtMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-05T12:36:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="NADtMAT" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-05T12:36:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="CoAMATt" simulationType="fixed" compartment="Compartment_0" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_0" name="NAD" simulationType="fixed" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-05T12:31:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_139" name="Vfcact" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_138" name="Vrcact" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_137" name="KmcactCarMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_136" name="KmcactCarCYT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_135" name="KicactCarCYT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="Keqcact" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="Vcpt2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_132" name="Kmcpt2C16AcylCarMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_131" name="Kmcpt2C14AcylCarMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_130" name="Kmcpt2C12AcylCarMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_129" name="Kmcpt2C10AcylCarMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_128" name="Kmcpt2C8AcylCarMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_127" name="Kmcpt2C6AcylCarMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_126" name="Kmcpt2C4AcylCarMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_125" name="Kmcpt2CoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="Kmcpt2C16AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_123" name="Kmcpt2C14AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="Kmcpt2C12AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="Kmcpt2C10AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="Kmcpt2C8AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="Kmcpt2C6AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="Kmcpt2C4AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="Kmcpt2CarMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="Keqcpt2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="Vvlcad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="KmvlcadC16AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="KmvlcadC14AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="KmvlcadC12AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="KmvlcadFAD" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="KmvlcadC16EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="KmvlcadC14EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="KmvlcadC12EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="KmvlcadFADH" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="Keqvlcad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="Vlcad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="KmlcadC16AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="KmlcadC14AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="KmlcadC12AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="KmlcadC10AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="KmlcadC8AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="KmlcadFAD" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="KmlcadC16EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="KmlcadC14EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="KmlcadC12EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="KmlcadC10EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="KmlcadC8EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="KmlcadFADH" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="Keqlcad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="Vmcad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="KmmcadC12AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="KmmcadC10AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="KmmcadC8AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="KmmcadC6AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="KmmcadC4AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="KmmcadFAD" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="KmmcadC12EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="KmmcadC10EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="KmmcadC8EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="KmmcadC6EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="KmmcadC4EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="KmmcadFADH" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="Keqmcad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="Vscad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="KmscadC6AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="KmscadC4AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="KmscadFAD" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="KmscadC6EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="KmscadC4EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="KmscadFADH" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="Keqscad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="Vcrot" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="KmcrotC16EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="KmcrotC14EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="KmcrotC12EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="KmcrotC10EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="KmcrotC8EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="KmcrotC6EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="KmcrotC4EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="KmcrotC16HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="KmcrotC14HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="KmcrotC12HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="KmcrotC10HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="KmcrotC8HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="KmcrotC6HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="KmcrotC4HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="KicrotC4AcetoacylCoA" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="Keqcrot" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="Vmschad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="KmmschadC16HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="KmmschadC14HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="KmmschadC12HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="KmmschadC10HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="KmmschadC8HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="KmmschadC6HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="KmmschadC4HydroxyacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="KmmschadNADMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="KmmschadC16KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="KmmschadC14KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="KmmschadC12KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="KmmschadC10KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="KmmschadC8KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="KmmschadC6KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="KmmschadC4AcetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="KmmschadNADHMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Keqmschad" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Vmckat" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="KmmckatC16KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="KmmckatC14KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="KmmckatC12KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="KmmckatC10KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="KmmckatC8KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="KmmckatC6KetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="KmmckatC4AcetoacylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="KmmckatCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="KmmckatC14AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="KmmckatC16AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="KmmckatC12AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="KmmckatC10AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="KmmckatC8AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="KmmckatC6AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="KmmckatC4AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="KmmckatAcetylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="Keqmckat" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="Vmtp" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="KmmtpC16EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="KmmtpC14EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="KmmtpC12EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="KmmtpC10EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="KmmtpC8EnoylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="KmmtpNADMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="KmmtpCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="KmmtpC14AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="KmmtpC16AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="KmmtpC12AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="KmmtpC10AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="KmmtpC8AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="KmmtpC6AcylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="KmmtpNADHMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="KmmtpAcetylCoAMAT" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_0" name="Keqmtp" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_36" name="vcpt1C16" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T18:02:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2988" name="Keqcpt1" value="0.45"/>
          <Constant key="Parameter_2989" name="Kicpt1MalCoACYT" value="9.1"/>
          <Constant key="Parameter_3027" name="Kmcpt1C16AcylCarCYT" value="136"/>
          <Constant key="Parameter_3026" name="Kmcpt1C16AcylCoACYT" value="13.8"/>
          <Constant key="Parameter_3025" name="Kmcpt1CarCYT" value="125"/>
          <Constant key="Parameter_3028" name="Kmcpt1CoACYT" value="40.7"/>
          <Constant key="Parameter_3029" name="Vcpt1" value="0.012"/>
          <Constant key="Parameter_3030" name="ncpt1" value="2.4799"/>
          <Constant key="Parameter_3031" name="sfcpt1C16" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Parameter_2988"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Parameter_2989"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Parameter_3027"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Parameter_3026"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Parameter_3025"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Parameter_3028"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Parameter_3029"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Parameter_3030"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Parameter_3031"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="vcactC16" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:12:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3032" name="KicactC16AcylCarCYT" value="56"/>
          <Constant key="Parameter_3033" name="KmcactC16AcylCarCYT" value="15"/>
          <Constant key="Parameter_3034" name="KmcactC16AcylCarMAT" value="15"/>
          <Constant key="Parameter_3035" name="Keqcact" value="1"/>
          <Constant key="Parameter_3036" name="KicactCarCYT" value="200"/>
          <Constant key="Parameter_3037" name="KmcactCarCYT" value="130"/>
          <Constant key="Parameter_3038" name="KmcactCarMAT" value="130"/>
          <Constant key="Parameter_3039" name="Vfcact" value="0.42"/>
          <Constant key="Parameter_3042" name="Vrcact" value="0.42"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Parameter_3032"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Parameter_3033"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Parameter_3034"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="vcactC14" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_53" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3044" name="KicactC14AcylCarCYT" value="56"/>
          <Constant key="Parameter_3041" name="KmcactC14AcylCarCYT" value="15"/>
          <Constant key="Parameter_3040" name="KmcactC14AcylCarMAT" value="15"/>
          <Constant key="Parameter_3043" name="Keqcact" value="1"/>
          <Constant key="Parameter_3045" name="KicactCarCYT" value="200"/>
          <Constant key="Parameter_2985" name="KmcactCarCYT" value="130"/>
          <Constant key="Parameter_2987" name="KmcactCarMAT" value="130"/>
          <Constant key="Parameter_2986" name="Vfcact" value="0.42"/>
          <Constant key="Parameter_2984" name="Vrcact" value="0.42"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_3044"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_3041"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_3040"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="vcactC12" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2981" name="KicactC12AcylCarCYT" value="56"/>
          <Constant key="Parameter_3024" name="KmcactC12AcylCarCYT" value="15"/>
          <Constant key="Parameter_3046" name="KmcactC12AcylCarMAT" value="15"/>
          <Constant key="Parameter_3047" name="Keqcact" value="1"/>
          <Constant key="Parameter_3048" name="KicactCarCYT" value="200"/>
          <Constant key="Parameter_3049" name="KmcactCarCYT" value="130"/>
          <Constant key="Parameter_3051" name="KmcactCarMAT" value="130"/>
          <Constant key="Parameter_3050" name="Vfcact" value="0.42"/>
          <Constant key="Parameter_3052" name="Vrcact" value="0.42"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Parameter_2981"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Parameter_3024"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Parameter_3046"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="vcactC10" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:18:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3053" name="KicactC10AcylCarCYT" value="56"/>
          <Constant key="Parameter_3054" name="KmcactC10AcylCarCYT" value="15"/>
          <Constant key="Parameter_3055" name="KmcactC10AcylCarMAT" value="15"/>
          <Constant key="Parameter_3056" name="Keqcact" value="1"/>
          <Constant key="Parameter_3057" name="KicactCarCYT" value="200"/>
          <Constant key="Parameter_3058" name="KmcactCarCYT" value="130"/>
          <Constant key="Parameter_3059" name="KmcactCarMAT" value="130"/>
          <Constant key="Parameter_3060" name="Vfcact" value="0.42"/>
          <Constant key="Parameter_3061" name="Vrcact" value="0.42"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_3053"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Parameter_3054"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Parameter_3055"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="vcactC8" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3062" name="KicactC8AcylCarCYT" value="56"/>
          <Constant key="Parameter_3063" name="KmcactC8AcylCarCYT" value="15"/>
          <Constant key="Parameter_3064" name="KmcactC8AcylCarMAT" value="15"/>
          <Constant key="Parameter_3065" name="Keqcact" value="1"/>
          <Constant key="Parameter_3066" name="KicactCarCYT" value="200"/>
          <Constant key="Parameter_3067" name="KmcactCarCYT" value="130"/>
          <Constant key="Parameter_3068" name="KmcactCarMAT" value="130"/>
          <Constant key="Parameter_3069" name="Vfcact" value="0.42"/>
          <Constant key="Parameter_3070" name="Vrcact" value="0.42"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="Parameter_3062"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Parameter_3063"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Parameter_3064"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="vcactC6" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:27:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3071" name="KicactC6AcylCarCYT" value="56"/>
          <Constant key="Parameter_3072" name="KmcactC6AcylCarCYT" value="15"/>
          <Constant key="Parameter_3073" name="KmcactC6AcylCarMAT" value="15"/>
          <Constant key="Parameter_3074" name="Keqcact" value="1"/>
          <Constant key="Parameter_3075" name="KicactCarCYT" value="200"/>
          <Constant key="Parameter_3076" name="KmcactCarCYT" value="130"/>
          <Constant key="Parameter_3077" name="KmcactCarMAT" value="130"/>
          <Constant key="Parameter_3078" name="Vfcact" value="0.42"/>
          <Constant key="Parameter_3079" name="Vrcact" value="0.42"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Parameter_3071"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Parameter_3072"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="Parameter_3073"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="vcactC4" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3080" name="KicactC4AcylCarCYT" value="56"/>
          <Constant key="Parameter_3081" name="KmcactC4AcylCarCYT" value="15"/>
          <Constant key="Parameter_3082" name="KmcactC4AcylCarMAT" value="15"/>
          <Constant key="Parameter_3083" name="Keqcact" value="1"/>
          <Constant key="Parameter_3084" name="KicactCarCYT" value="200"/>
          <Constant key="Parameter_3085" name="KmcactCarCYT" value="130"/>
          <Constant key="Parameter_3086" name="KmcactCarMAT" value="130"/>
          <Constant key="Parameter_3087" name="Vfcact" value="0.42"/>
          <Constant key="Parameter_3088" name="Vrcact" value="0.42"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_657">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Parameter_3080"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="Parameter_3081"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="Parameter_3082"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="vcpt2C16" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T18:03:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3089" name="sfcpt2C16" value="0.85"/>
          <Constant key="Parameter_3090" name="Keqcpt2" value="2.22"/>
          <Constant key="Parameter_3091" name="Kmcpt2C10AcylCarMAT" value="51"/>
          <Constant key="Parameter_3092" name="Kmcpt2C10AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3093" name="Kmcpt2C12AcylCarMAT" value="51"/>
          <Constant key="Parameter_3094" name="Kmcpt2C12AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3095" name="Kmcpt2C14AcylCarMAT" value="51"/>
          <Constant key="Parameter_3096" name="Kmcpt2C14AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3097" name="Kmcpt2C16AcylCarMAT" value="51"/>
          <Constant key="Parameter_3098" name="Kmcpt2C16AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3099" name="Kmcpt2C4AcylCarMAT" value="51"/>
          <Constant key="Parameter_3100" name="Kmcpt2C4AcylCoAMAT" value="1e+06"/>
          <Constant key="Parameter_3101" name="Kmcpt2C6AcylCarMAT" value="51"/>
          <Constant key="Parameter_3102" name="Kmcpt2C6AcylCoAMAT" value="1000"/>
          <Constant key="Parameter_3103" name="Kmcpt2C8AcylCarMAT" value="51"/>
          <Constant key="Parameter_3104" name="Kmcpt2C8AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3105" name="Kmcpt2CarMAT" value="350"/>
          <Constant key="Parameter_3106" name="Kmcpt2CoAMAT" value="30"/>
          <Constant key="Parameter_3107" name="Vcpt2" value="0.391"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Parameter_3089"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="vcpt2C14" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:18:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3108" name="sfcpt2C14" value="1"/>
          <Constant key="Parameter_3109" name="Keqcpt2" value="2.22"/>
          <Constant key="Parameter_3110" name="Kmcpt2C10AcylCarMAT" value="51"/>
          <Constant key="Parameter_3111" name="Kmcpt2C10AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3112" name="Kmcpt2C12AcylCarMAT" value="51"/>
          <Constant key="Parameter_3113" name="Kmcpt2C12AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3114" name="Kmcpt2C14AcylCarMAT" value="51"/>
          <Constant key="Parameter_3115" name="Kmcpt2C14AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3116" name="Kmcpt2C16AcylCarMAT" value="51"/>
          <Constant key="Parameter_3117" name="Kmcpt2C16AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3118" name="Kmcpt2C4AcylCoAMAT" value="1e+06"/>
          <Constant key="Parameter_3119" name="Kmcpt2C6AcylCarMAT" value="51"/>
          <Constant key="Parameter_3120" name="Kmcpt2C6AcylCoAMAT" value="1000"/>
          <Constant key="Parameter_3121" name="Kmcpt2C8AcylCarMAT" value="51"/>
          <Constant key="Parameter_3122" name="Kmcpt2C8AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3123" name="Kmcpt2CarMAT" value="350"/>
          <Constant key="Parameter_3124" name="Kmcpt2CoAMAT" value="30"/>
          <Constant key="Parameter_3125" name="Vcpt2" value="0.391"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_656">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="Parameter_3108"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="vcpt2C12" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3126" name="sfcpt2C12" value="0.95"/>
          <Constant key="Parameter_3127" name="Keqcpt2" value="2.22"/>
          <Constant key="Parameter_3128" name="Kmcpt2C10AcylCarMAT" value="51"/>
          <Constant key="Parameter_3129" name="Kmcpt2C10AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3130" name="Kmcpt2C12AcylCarMAT" value="51"/>
          <Constant key="Parameter_3131" name="Kmcpt2C12AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3132" name="Kmcpt2C14AcylCarMAT" value="51"/>
          <Constant key="Parameter_3133" name="Kmcpt2C14AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3134" name="Kmcpt2C16AcylCarMAT" value="51"/>
          <Constant key="Parameter_3135" name="Kmcpt2C16AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3136" name="Kmcpt2C4AcylCarMAT" value="51"/>
          <Constant key="Parameter_3137" name="Kmcpt2C4AcylCoAMAT" value="1e+06"/>
          <Constant key="Parameter_3138" name="Kmcpt2C6AcylCarMAT" value="51"/>
          <Constant key="Parameter_3139" name="Kmcpt2C6AcylCoAMAT" value="1000"/>
          <Constant key="Parameter_3140" name="Kmcpt2C8AcylCarMAT" value="51"/>
          <Constant key="Parameter_3141" name="Kmcpt2C8AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3142" name="Kmcpt2CarMAT" value="350"/>
          <Constant key="Parameter_3143" name="Kmcpt2CoAMAT" value="30"/>
          <Constant key="Parameter_3144" name="Vcpt2" value="0.391"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_754">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_755">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_756">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_757">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_758">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_759">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_760">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_761">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_762">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_763">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_764">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_765">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_766">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_767">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_769">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_770">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_771">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_772">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_773">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_774">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_775">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_777">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_778">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_779">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_780">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_781">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_782">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_783">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_784">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_785">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_786">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_787">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_789">
              <SourceParameter reference="Parameter_3126"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="vcpt2C10" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T18:02:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3145" name="sfcpt2C10" value="0.95"/>
          <Constant key="Parameter_3146" name="Keqcpt2" value="2.22"/>
          <Constant key="Parameter_3147" name="Kmcpt2C10AcylCarMAT" value="51"/>
          <Constant key="Parameter_3148" name="Kmcpt2C10AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3149" name="Kmcpt2C12AcylCarMAT" value="51"/>
          <Constant key="Parameter_3150" name="Kmcpt2C12AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3151" name="Kmcpt2C14AcylCarMAT" value="51"/>
          <Constant key="Parameter_3152" name="Kmcpt2C14AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3153" name="Kmcpt2C16AcylCarMAT" value="51"/>
          <Constant key="Parameter_3154" name="Kmcpt2C16AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3155" name="Kmcpt2C4AcylCarMAT" value="51"/>
          <Constant key="Parameter_3156" name="Kmcpt2C4AcylCoAMAT" value="1e+06"/>
          <Constant key="Parameter_3157" name="Kmcpt2C6AcylCarMAT" value="51"/>
          <Constant key="Parameter_3158" name="Kmcpt2C6AcylCoAMAT" value="1000"/>
          <Constant key="Parameter_3159" name="Kmcpt2C8AcylCarMAT" value="51"/>
          <Constant key="Parameter_3160" name="Kmcpt2C8AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3161" name="Kmcpt2CarMAT" value="350"/>
          <Constant key="Parameter_3162" name="Kmcpt2CoAMAT" value="30"/>
          <Constant key="Parameter_3163" name="Vcpt2" value="0.391"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_690">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="Parameter_3145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="vcpt2C8" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-05T12:53:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3164" name="sfcpt2C8" value="0.35"/>
          <Constant key="Parameter_3165" name="Keqcpt2" value="2.22"/>
          <Constant key="Parameter_3166" name="Kmcpt2C10AcylCarMAT" value="51"/>
          <Constant key="Parameter_3167" name="Kmcpt2C10AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3168" name="Kmcpt2C12AcylCarMAT" value="51"/>
          <Constant key="Parameter_3169" name="Kmcpt2C12AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3170" name="Kmcpt2C14AcylCarMAT" value="51"/>
          <Constant key="Parameter_3171" name="Kmcpt2C14AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3172" name="Kmcpt2C16AcylCarMAT" value="51"/>
          <Constant key="Parameter_3173" name="Kmcpt2C16AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3174" name="Kmcpt2C4AcylCarMAT" value="51"/>
          <Constant key="Parameter_3175" name="Kmcpt2C4AcylCoAMAT" value="1e+06"/>
          <Constant key="Parameter_3176" name="Kmcpt2C6AcylCarMAT" value="51"/>
          <Constant key="Parameter_3177" name="Kmcpt2C6AcylCoAMAT" value="1000"/>
          <Constant key="Parameter_3178" name="Kmcpt2C8AcylCarMAT" value="51"/>
          <Constant key="Parameter_3179" name="Kmcpt2C8AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3180" name="Kmcpt2CarMAT" value="350"/>
          <Constant key="Parameter_3181" name="Kmcpt2CoAMAT" value="30"/>
          <Constant key="Parameter_3182" name="Vcpt2" value="0.391"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_730">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_737">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_738">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_739">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_740">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_742">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_743">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_744">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_745">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_750">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_751">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_752">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_753">
              <SourceParameter reference="Parameter_3164"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="vcpt2C6" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3183" name="sfcpt2C6" value="0.15"/>
          <Constant key="Parameter_3184" name="Keqcpt2" value="2.22"/>
          <Constant key="Parameter_3185" name="Kmcpt2C10AcylCarMAT" value="51"/>
          <Constant key="Parameter_3186" name="Kmcpt2C10AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3187" name="Kmcpt2C12AcylCarMAT" value="51"/>
          <Constant key="Parameter_3188" name="Kmcpt2C12AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3189" name="Kmcpt2C14AcylCarMAT" value="51"/>
          <Constant key="Parameter_3190" name="Kmcpt2C14AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3191" name="Kmcpt2C16AcylCarMAT" value="51"/>
          <Constant key="Parameter_3192" name="Kmcpt2C16AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3193" name="Kmcpt2C4AcylCarMAT" value="51"/>
          <Constant key="Parameter_3194" name="Kmcpt2C4AcylCoAMAT" value="1e+06"/>
          <Constant key="Parameter_3195" name="Kmcpt2C6AcylCarMAT" value="51"/>
          <Constant key="Parameter_3196" name="Kmcpt2C6AcylCoAMAT" value="1000"/>
          <Constant key="Parameter_3197" name="Kmcpt2C8AcylCarMAT" value="51"/>
          <Constant key="Parameter_3198" name="Kmcpt2C8AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3199" name="Kmcpt2CarMAT" value="350"/>
          <Constant key="Parameter_3200" name="Kmcpt2CoAMAT" value="30"/>
          <Constant key="Parameter_3201" name="Vcpt2" value="0.391"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_826">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_827">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_828">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_829">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_830">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_831">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_832">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_833">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_834">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_835">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_836">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_837">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_838">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_839">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_840">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_841">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_842">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_843">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_844">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_845">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_846">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_847">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_848">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_849">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_850">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_851">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_852">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_853">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_854">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_855">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_856">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_857">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_858">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_859">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_860">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_861">
              <SourceParameter reference="Parameter_3183"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="vcpt2C4" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3202" name="sfcpt2C4" value="0.01"/>
          <Constant key="Parameter_3203" name="Keqcpt2" value="2.22"/>
          <Constant key="Parameter_3204" name="Kmcpt2C10AcylCarMAT" value="51"/>
          <Constant key="Parameter_3205" name="Kmcpt2C10AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3206" name="Kmcpt2C12AcylCarMAT" value="51"/>
          <Constant key="Parameter_3207" name="Kmcpt2C12AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3208" name="Kmcpt2C14AcylCarMAT" value="51"/>
          <Constant key="Parameter_3209" name="Kmcpt2C14AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3210" name="Kmcpt2C16AcylCarMAT" value="51"/>
          <Constant key="Parameter_3211" name="Kmcpt2C16AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3212" name="Kmcpt2C4AcylCarMAT" value="51"/>
          <Constant key="Parameter_3213" name="Kmcpt2C4AcylCoAMAT" value="1e+06"/>
          <Constant key="Parameter_3214" name="Kmcpt2C6AcylCarMAT" value="51"/>
          <Constant key="Parameter_3215" name="Kmcpt2C6AcylCoAMAT" value="1000"/>
          <Constant key="Parameter_3216" name="Kmcpt2C8AcylCarMAT" value="51"/>
          <Constant key="Parameter_3217" name="Kmcpt2C8AcylCoAMAT" value="38"/>
          <Constant key="Parameter_3218" name="Kmcpt2CarMAT" value="350"/>
          <Constant key="Parameter_3219" name="Kmcpt2CoAMAT" value="30"/>
          <Constant key="Parameter_3220" name="Vcpt2" value="0.391"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_790">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_791">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_792">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_793">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_794">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_795">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_796">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_797">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_798">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_799">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_800">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_801">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_802">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_803">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_804">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_805">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_806">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_807">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_808">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_809">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_810">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_811">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_812">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_813">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_814">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_815">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_816">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_817">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_818">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_819">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_820">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_821">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_822">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_823">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_824">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_825">
              <SourceParameter reference="Parameter_3202"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="vvlcadC16" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3221" name="sfvlcadC16" value="1"/>
          <Constant key="Parameter_3222" name="Keqvlcad" value="6"/>
          <Constant key="Parameter_3223" name="KmvlcadC12AcylCoAMAT" value="2.7"/>
          <Constant key="Parameter_3224" name="KmvlcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3225" name="KmvlcadC14AcylCoAMAT" value="4"/>
          <Constant key="Parameter_3226" name="KmvlcadC14EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3227" name="KmvlcadC16AcylCoAMAT" value="6.5"/>
          <Constant key="Parameter_3228" name="KmvlcadC16EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3229" name="KmvlcadFAD" value="0.12"/>
          <Constant key="Parameter_3230" name="KmvlcadFADH" value="24.2"/>
          <Constant key="Parameter_3231" name="Vvlcad" value="0.008"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_946">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_947">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_948">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_949">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_950">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_951">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_952">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_953">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_954">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_955">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_956">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_957">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_958">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_959">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_960">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_961">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_962">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_963">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_964">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_965">
              <SourceParameter reference="Parameter_3221"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="vvlcadC14" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3232" name="sfvlcadC14" value="0.42"/>
          <Constant key="Parameter_3233" name="Keqvlcad" value="6"/>
          <Constant key="Parameter_3234" name="KmvlcadC12AcylCoAMAT" value="2.7"/>
          <Constant key="Parameter_3235" name="KmvlcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3236" name="KmvlcadC14AcylCoAMAT" value="4"/>
          <Constant key="Parameter_3237" name="KmvlcadC14EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3238" name="KmvlcadC16AcylCoAMAT" value="6.5"/>
          <Constant key="Parameter_3239" name="KmvlcadC16EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3240" name="KmvlcadFAD" value="0.12"/>
          <Constant key="Parameter_3241" name="KmvlcadFADH" value="24.2"/>
          <Constant key="Parameter_3242" name="Vvlcad" value="0.008"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_878">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_879">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_880">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_881">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_882">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_883">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_884">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_885">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_886">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_887">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_888">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_889">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_890">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_891">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_892">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_893">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_894">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_895">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_896">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_897">
              <SourceParameter reference="Parameter_3232"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="vvlcadC12" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:48:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3243" name="sfvlcadC12" value="0.11"/>
          <Constant key="Parameter_3244" name="Keqvlcad" value="6"/>
          <Constant key="Parameter_3245" name="KmvlcadC12AcylCoAMAT" value="2.7"/>
          <Constant key="Parameter_3246" name="KmvlcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3247" name="KmvlcadC14AcylCoAMAT" value="4"/>
          <Constant key="Parameter_3248" name="KmvlcadC14EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3249" name="KmvlcadC16AcylCoAMAT" value="6.5"/>
          <Constant key="Parameter_3250" name="KmvlcadC16EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3251" name="KmvlcadFAD" value="0.12"/>
          <Constant key="Parameter_3252" name="KmvlcadFADH" value="24.2"/>
          <Constant key="Parameter_3253" name="Vvlcad" value="0.008"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_945">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_944">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_943">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_942">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_941">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_940">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_939">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_938">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_966">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_967">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_968">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_969">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_970">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_971">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_972">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_973">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_974">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_975">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_976">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_977">
              <SourceParameter reference="Parameter_3243"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="vlcadC16" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3254" name="sflcadC16" value="0.9"/>
          <Constant key="Parameter_3255" name="Keqlcad" value="6"/>
          <Constant key="Parameter_3256" name="KmlcadC10AcylCoAMAT" value="24.3"/>
          <Constant key="Parameter_3257" name="KmlcadC10EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3258" name="KmlcadC12AcylCoAMAT" value="9"/>
          <Constant key="Parameter_3259" name="KmlcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3260" name="KmlcadC14AcylCoAMAT" value="7.4"/>
          <Constant key="Parameter_3261" name="KmlcadC14EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3262" name="KmlcadC16AcylCoAMAT" value="2.5"/>
          <Constant key="Parameter_3263" name="KmlcadC16EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3264" name="KmlcadC8AcylCoAMAT" value="123"/>
          <Constant key="Parameter_3265" name="KmlcadC8EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3266" name="KmlcadFAD" value="0.12"/>
          <Constant key="Parameter_3267" name="KmlcadFADH" value="24.2"/>
          <Constant key="Parameter_3268" name="Vlcad" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_909">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_908">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_907">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_906">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_905">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_904">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_903">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_902">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_877">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_876">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_875">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_874">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_873">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_872">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_871">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_870">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_869">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_868">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_867">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_866">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_865">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_864">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_863">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_862">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_898">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_899">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_900">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_901">
              <SourceParameter reference="Parameter_3254"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="vlcadC14" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3269" name="sflcadC14" value="1"/>
          <Constant key="Parameter_3270" name="Keqlcad" value="6"/>
          <Constant key="Parameter_3271" name="KmlcadC10AcylCoAMAT" value="24.3"/>
          <Constant key="Parameter_3272" name="KmlcadC10EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3273" name="KmlcadC12AcylCoAMAT" value="9"/>
          <Constant key="Parameter_3274" name="KmlcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3275" name="KmlcadC14AcylCoAMAT" value="7.4"/>
          <Constant key="Parameter_3276" name="KmlcadC14EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3277" name="KmlcadC16AcylCoAMAT" value="2.5"/>
          <Constant key="Parameter_3278" name="KmlcadC16EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3279" name="KmlcadC8AcylCoAMAT" value="123"/>
          <Constant key="Parameter_3280" name="KmlcadC8EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3281" name="KmlcadFAD" value="0.12"/>
          <Constant key="Parameter_3282" name="KmlcadFADH" value="24.2"/>
          <Constant key="Parameter_3283" name="Vlcad" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_910">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_911">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_912">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_913">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_914">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_915">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_916">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_917">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_918">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_919">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_920">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_921">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_922">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_923">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_924">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_925">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_926">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_927">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_928">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_929">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_930">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_931">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_932">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_933">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_934">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_935">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_936">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_937">
              <SourceParameter reference="Parameter_3269"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="vlcadC12" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3284" name="sflcadC12" value="0.9"/>
          <Constant key="Parameter_3285" name="Keqlcad" value="6"/>
          <Constant key="Parameter_3286" name="KmlcadC10AcylCoAMAT" value="24.3"/>
          <Constant key="Parameter_3287" name="KmlcadC10EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3288" name="KmlcadC12AcylCoAMAT" value="9"/>
          <Constant key="Parameter_3289" name="KmlcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3290" name="KmlcadC14AcylCoAMAT" value="7.4"/>
          <Constant key="Parameter_3291" name="KmlcadC14EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3292" name="KmlcadC16AcylCoAMAT" value="2.5"/>
          <Constant key="Parameter_3293" name="KmlcadC16EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3294" name="KmlcadC8AcylCoAMAT" value="123"/>
          <Constant key="Parameter_3295" name="KmlcadC8EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3296" name="KmlcadFAD" value="0.12"/>
          <Constant key="Parameter_3297" name="KmlcadFADH" value="24.2"/>
          <Constant key="Parameter_3298" name="Vlcad" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1007">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1008">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1009">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1010">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1011">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1012">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1013">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1014">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1015">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1016">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1017">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1018">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1019">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1020">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1021">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1022">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1023">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1024">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1025">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1026">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1027">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1028">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1029">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1030">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1031">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1032">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1033">
              <SourceParameter reference="Parameter_3284"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="vlcadC10" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3299" name="sflcadC10" value="0.75"/>
          <Constant key="Parameter_3300" name="Keqlcad" value="6"/>
          <Constant key="Parameter_3301" name="KmlcadC10AcylCoAMAT" value="24.3"/>
          <Constant key="Parameter_3302" name="KmlcadC10EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3303" name="KmlcadC12AcylCoAMAT" value="9"/>
          <Constant key="Parameter_3304" name="KmlcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3305" name="KmlcadC14AcylCoAMAT" value="7.4"/>
          <Constant key="Parameter_3306" name="KmlcadC14EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3307" name="KmlcadC16AcylCoAMAT" value="2.5"/>
          <Constant key="Parameter_3308" name="KmlcadC16EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3309" name="KmlcadC8AcylCoAMAT" value="123"/>
          <Constant key="Parameter_3310" name="KmlcadC8EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3311" name="KmlcadFAD" value="0.12"/>
          <Constant key="Parameter_3312" name="KmlcadFADH" value="24.2"/>
          <Constant key="Parameter_3313" name="Vlcad" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1005">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1004">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1003">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1002">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1001">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1000">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_999">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_998">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_978">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_979">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_980">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_981">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_982">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_983">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_984">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_985">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_986">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_987">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_988">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_989">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_990">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_991">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_992">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_993">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_994">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_995">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_996">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_997">
              <SourceParameter reference="Parameter_3299"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="vmcadC12" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3314" name="sfmcadC12" value="0.38"/>
          <Constant key="Parameter_3315" name="Keqmcad" value="6"/>
          <Constant key="Parameter_3316" name="KmmcadC10AcylCoAMAT" value="5.4"/>
          <Constant key="Parameter_3317" name="KmmcadC10EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3318" name="KmmcadC12AcylCoAMAT" value="5.7"/>
          <Constant key="Parameter_3319" name="KmmcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3320" name="KmmcadC4AcylCoAMAT" value="135"/>
          <Constant key="Parameter_3321" name="KmmcadC4EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3322" name="KmmcadC6AcylCoAMAT" value="9.4"/>
          <Constant key="Parameter_3323" name="KmmcadC6EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3324" name="KmmcadC8AcylCoAMAT" value="4"/>
          <Constant key="Parameter_3325" name="KmmcadC8EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3326" name="KmmcadFAD" value="0.12"/>
          <Constant key="Parameter_3327" name="KmmcadFADH" value="24.2"/>
          <Constant key="Parameter_3328" name="Vmcad" value="0.081"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1061">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1062">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1063">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1064">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1065">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1066">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1067">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1068">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1069">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1070">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1071">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1072">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1073">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1074">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1075">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1076">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1077">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1078">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1079">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1080">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1081">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1082">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1083">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1084">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1085">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1086">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1087">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1088">
              <SourceParameter reference="Parameter_3314"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="vmcadC10" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3329" name="sfmcadC10" value="0.8"/>
          <Constant key="Parameter_3330" name="Keqmcad" value="6"/>
          <Constant key="Parameter_3331" name="KmmcadC10AcylCoAMAT" value="5.4"/>
          <Constant key="Parameter_3332" name="KmmcadC10EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3333" name="KmmcadC12AcylCoAMAT" value="5.7"/>
          <Constant key="Parameter_3334" name="KmmcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3335" name="KmmcadC4AcylCoAMAT" value="135"/>
          <Constant key="Parameter_3336" name="KmmcadC4EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3337" name="KmmcadC6AcylCoAMAT" value="9.4"/>
          <Constant key="Parameter_3338" name="KmmcadC6EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3339" name="KmmcadC8AcylCoAMAT" value="4"/>
          <Constant key="Parameter_3340" name="KmmcadC8EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3341" name="KmmcadFAD" value="0.12"/>
          <Constant key="Parameter_3342" name="KmmcadFADH" value="24.2"/>
          <Constant key="Parameter_3343" name="Vmcad" value="0.081"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1060">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1006">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1034">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1035">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1036">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1037">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1038">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1039">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1040">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1041">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1042">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1043">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1044">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1045">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1046">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1047">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1048">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1049">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1050">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1051">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1052">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1053">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1054">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1055">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1056">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1057">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1058">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1059">
              <SourceParameter reference="Parameter_3329"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="vmcadC8" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3344" name="sfmcadC8" value="0.87"/>
          <Constant key="Parameter_3345" name="Keqmcad" value="6"/>
          <Constant key="Parameter_3346" name="KmmcadC10AcylCoAMAT" value="5.4"/>
          <Constant key="Parameter_3347" name="KmmcadC10EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3348" name="KmmcadC12AcylCoAMAT" value="5.7"/>
          <Constant key="Parameter_3349" name="KmmcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3350" name="KmmcadC4AcylCoAMAT" value="135"/>
          <Constant key="Parameter_3351" name="KmmcadC4EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3353" name="KmmcadC6AcylCoAMAT" value="9.4"/>
          <Constant key="Parameter_3354" name="KmmcadC6EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3355" name="KmmcadC8AcylCoAMAT" value="4"/>
          <Constant key="Parameter_3356" name="KmmcadC8EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3352" name="KmmcadFAD" value="0.12"/>
          <Constant key="Parameter_3357" name="KmmcadFADH" value="24.2"/>
          <Constant key="Parameter_3358" name="Vmcad" value="0.081"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1117">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1118">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1119">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1120">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1121">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1122">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1123">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1124">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1125">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1126">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1127">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1128">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1129">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1130">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1131">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1132">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1133">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1134">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1135">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1136">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1137">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1138">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1139">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1140">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1141">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1142">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1143">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1144">
              <SourceParameter reference="Parameter_3344"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="vmcadC6" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3359" name="sfmcadC6" value="1"/>
          <Constant key="Parameter_3360" name="Keqmcad" value="6"/>
          <Constant key="Parameter_3361" name="KmmcadC10AcylCoAMAT" value="5.4"/>
          <Constant key="Parameter_3362" name="KmmcadC10EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3363" name="KmmcadC12AcylCoAMAT" value="5.7"/>
          <Constant key="Parameter_3364" name="KmmcadC12EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3365" name="KmmcadC4AcylCoAMAT" value="135"/>
          <Constant key="Parameter_3366" name="KmmcadC4EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3367" name="KmmcadC6AcylCoAMAT" value="9.4"/>
          <Constant key="Parameter_3368" name="KmmcadC6EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3369" name="KmmcadC8AcylCoAMAT" value="4"/>
          <Constant key="Parameter_3370" name="KmmcadC8EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3371" name="KmmcadFAD" value="0.12"/>
          <Constant key="Parameter_3372" name="KmmcadFADH" value="24.2"/>
          <Constant key="Parameter_3373" name="Vmcad" value="0.081"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1089">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1090">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1091">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1092">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1093">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1094">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1095">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1096">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1097">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1098">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1099">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1100">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1101">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1102">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1103">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1104">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1105">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1106">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1107">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1108">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1109">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1110">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1111">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1112">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1113">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1114">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1115">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1116">
              <SourceParameter reference="Parameter_3359"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="vscadC4" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3374" name="sfscadC4" value="1"/>
          <Constant key="Parameter_3375" name="Keqscad" value="6"/>
          <Constant key="Parameter_3376" name="KmscadC4AcylCoAMAT" value="10.7"/>
          <Constant key="Parameter_3377" name="KmscadC4EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3378" name="KmscadC6AcylCoAMAT" value="285"/>
          <Constant key="Parameter_3379" name="KmscadC6EnoylCoAMAT" value="1.08"/>
          <Constant key="Parameter_3380" name="KmscadFAD" value="0.12"/>
          <Constant key="Parameter_3381" name="KmscadFADH" value="24.2"/>
          <Constant key="Parameter_3382" name="Vscad" value="0.081"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1201">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1202">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1203">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1204">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1205">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1206">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1207">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1208">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1209">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1210">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1211">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1212">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1213">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1214">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1215">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1216">
              <SourceParameter reference="Parameter_3374"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="vmckatC6" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3383" name="sfmckatC6" value="1"/>
          <Constant key="Parameter_3384" name="Keqmckat" value="1051"/>
          <Constant key="Parameter_3385" name="KmmckatAcetylCoAMAT" value="30"/>
          <Constant key="Parameter_3386" name="KmmckatC10AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3387" name="KmmckatC10KetoacylCoAMAT" value="2.1"/>
          <Constant key="Parameter_3388" name="KmmckatC12AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3389" name="KmmckatC12KetoacylCoAMAT" value="1.3"/>
          <Constant key="Parameter_3390" name="KmmckatC14AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3391" name="KmmckatC14KetoacylCoAMAT" value="1.2"/>
          <Constant key="Parameter_3392" name="KmmckatC16AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3393" name="KmmckatC16KetoacylCoAMAT" value="1.1"/>
          <Constant key="Parameter_3394" name="KmmckatC4AcetoacylCoAMAT" value="12.4"/>
          <Constant key="Parameter_3395" name="KmmckatC4AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3396" name="KmmckatC6AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3397" name="KmmckatC6KetoacylCoAMAT" value="6.7"/>
          <Constant key="Parameter_3398" name="KmmckatC8AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3399" name="KmmckatC8KetoacylCoAMAT" value="3.2"/>
          <Constant key="Parameter_3400" name="KmmckatCoAMAT" value="26.6"/>
          <Constant key="Parameter_3401" name="Vmckat" value="0.377"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1232">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1231">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1230">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1229">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1228">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1227">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1226">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1225">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1224">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1223">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1222">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1221">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1220">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1219">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1218">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1217">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1181">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1182">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1183">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1184">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1200">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1199">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1198">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1197">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1196">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1195">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1194">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1193">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1192">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1191">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1190">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1189">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1188">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1187">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1186">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1185">
              <SourceParameter reference="Parameter_3383"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="vmckatC4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T17:59:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3402" name="sfmckatC4" value="0.49"/>
          <Constant key="Parameter_3403" name="Keqmckat" value="1051"/>
          <Constant key="Parameter_3404" name="KmmckatAcetylCoAMAT" value="30"/>
          <Constant key="Parameter_3405" name="KmmckatC10AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3406" name="KmmckatC10KetoacylCoAMAT" value="2.1"/>
          <Constant key="Parameter_3407" name="KmmckatC12AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3408" name="KmmckatC12KetoacylCoAMAT" value="1.3"/>
          <Constant key="Parameter_3409" name="KmmckatC14AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3410" name="KmmckatC14KetoacylCoAMAT" value="1.2"/>
          <Constant key="Parameter_3411" name="KmmckatC16AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3412" name="KmmckatC16KetoacylCoAMAT" value="1.1"/>
          <Constant key="Parameter_3413" name="KmmckatC4AcetoacylCoAMAT" value="12.4"/>
          <Constant key="Parameter_3414" name="KmmckatC4AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3415" name="KmmckatC6AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3416" name="KmmckatC6KetoacylCoAMAT" value="6.7"/>
          <Constant key="Parameter_3417" name="KmmckatC8AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3418" name="KmmckatC8KetoacylCoAMAT" value="3.2"/>
          <Constant key="Parameter_3419" name="KmmckatCoAMAT" value="26.6"/>
          <Constant key="Parameter_3420" name="Vmckat" value="0.377"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1233">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1234">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1235">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1236">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1237">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1238">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1239">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1240">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1241">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1242">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1243">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1244">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1245">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1246">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1247">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1248">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1249">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1250">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1251">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1252">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1253">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1254">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1255">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1256">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1257">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1258">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1259">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1260">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1261">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1262">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1263">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1264">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1265">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1266">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1267">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1268">
              <SourceParameter reference="Parameter_3402"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="vmtpC16" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T16:46:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3421" name="sfmtpC16" value="1"/>
          <Constant key="Parameter_3422" name="Keqmtp" value="0.71"/>
          <Constant key="Parameter_3423" name="KicrotC4AcetoacylCoA" value="1.6"/>
          <Constant key="Parameter_3424" name="KmmtpAcetylCoAMAT" value="30"/>
          <Constant key="Parameter_3425" name="KmmtpC10AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3426" name="KmmtpC10EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3427" name="KmmtpC12AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3428" name="KmmtpC12EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3429" name="KmmtpC14AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3430" name="KmmtpC14EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3431" name="KmmtpC16AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3432" name="KmmtpC16EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3433" name="KmmtpC6AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3434" name="KmmtpC8AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3435" name="KmmtpC8EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3436" name="KmmtpCoAMAT" value="30"/>
          <Constant key="Parameter_3437" name="KmmtpNADHMAT" value="50"/>
          <Constant key="Parameter_3438" name="KmmtpNADMAT" value="60"/>
          <Constant key="Parameter_3439" name="Vmtp" value="2.84"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1180">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1179">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1178">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1177">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1176">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1175">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1174">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1173">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1145">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1146">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1147">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1148">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1149">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1150">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1151">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1152">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1153">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1154">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1155">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1156">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1157">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1158">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1159">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1160">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1161">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1162">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1163">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1164">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1165">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1166">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1167">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1168">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1169">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1170">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1171">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1172">
              <SourceParameter reference="Parameter_3421"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="vmtpC14" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3440" name="sfmtpC14" value="0.9"/>
          <Constant key="Parameter_3441" name="Keqmtp" value="0.71"/>
          <Constant key="Parameter_3442" name="KicrotC4AcetoacylCoA" value="1.6"/>
          <Constant key="Parameter_3443" name="KmmtpAcetylCoAMAT" value="30"/>
          <Constant key="Parameter_3444" name="KmmtpC10AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3445" name="KmmtpC10EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3446" name="KmmtpC12AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3447" name="KmmtpC12EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3448" name="KmmtpC14AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3449" name="KmmtpC14EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3450" name="KmmtpC16AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3451" name="KmmtpC16EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3452" name="KmmtpC6AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3453" name="KmmtpC8AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3454" name="KmmtpC8EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3455" name="KmmtpCoAMAT" value="30"/>
          <Constant key="Parameter_3456" name="KmmtpNADHMAT" value="50"/>
          <Constant key="Parameter_3457" name="KmmtpNADMAT" value="60"/>
          <Constant key="Parameter_3458" name="Vmtp" value="2.84"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1305">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1306">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1307">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1308">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1309">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1310">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1311">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1312">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1313">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1314">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1315">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1316">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1317">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1318">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1319">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1320">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1321">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1322">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1323">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1324">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1325">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1326">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1327">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1328">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1329">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1330">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1331">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1332">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1333">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1334">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1335">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1336">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1337">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1338">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1339">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1340">
              <SourceParameter reference="Parameter_3440"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="vmtpC12" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3459" name="sfmtpC12" value="0.81"/>
          <Constant key="Parameter_3460" name="Keqmtp" value="0.71"/>
          <Constant key="Parameter_3461" name="KicrotC4AcetoacylCoA" value="1.6"/>
          <Constant key="Parameter_3462" name="KmmtpAcetylCoAMAT" value="30"/>
          <Constant key="Parameter_3463" name="KmmtpC10AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3464" name="KmmtpC10EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3465" name="KmmtpC12AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3466" name="KmmtpC12EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3467" name="KmmtpC14AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3468" name="KmmtpC14EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3469" name="KmmtpC16AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3470" name="KmmtpC16EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3471" name="KmmtpC6AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3472" name="KmmtpC8AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3473" name="KmmtpC8EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3474" name="KmmtpCoAMAT" value="30"/>
          <Constant key="Parameter_3475" name="KmmtpNADHMAT" value="50"/>
          <Constant key="Parameter_3476" name="KmmtpNADMAT" value="60"/>
          <Constant key="Parameter_3477" name="Vmtp" value="2.84"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1269">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1270">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1271">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1272">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1273">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1274">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1275">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1276">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1277">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1278">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1279">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1280">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1281">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1282">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1283">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1284">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1285">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1286">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1287">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1288">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1289">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1290">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1291">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1292">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1293">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1294">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1295">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1296">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1297">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1298">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1299">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1300">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1301">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1302">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1303">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1304">
              <SourceParameter reference="Parameter_3459"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="vmtpC10" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-04T15:58:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3478" name="sfmtpC10" value="0.73"/>
          <Constant key="Parameter_3479" name="Keqmtp" value="0.71"/>
          <Constant key="Parameter_3480" name="KicrotC4AcetoacylCoA" value="1.6"/>
          <Constant key="Parameter_3481" name="KmmtpAcetylCoAMAT" value="30"/>
          <Constant key="Parameter_3482" name="KmmtpC10AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3483" name="KmmtpC10EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3484" name="KmmtpC12AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3485" name="KmmtpC12EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3486" name="KmmtpC14AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3487" name="KmmtpC14EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3488" name="KmmtpC16AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3489" name="KmmtpC16EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3490" name="KmmtpC6AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3491" name="KmmtpC8AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3492" name="KmmtpC8EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3493" name="KmmtpCoAMAT" value="30"/>
          <Constant key="Parameter_3494" name="KmmtpNADHMAT" value="50"/>
          <Constant key="Parameter_3495" name="KmmtpNADMAT" value="60"/>
          <Constant key="Parameter_3496" name="Vmtp" value="2.84"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1341">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1342">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1343">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1344">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1345">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1346">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1347">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1348">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1349">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1350">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1351">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1352">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1353">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1354">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1355">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1356">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1357">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1358">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1359">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1360">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1361">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1362">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1363">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1364">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1365">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1366">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1367">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1368">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1369">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1370">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1371">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1372">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1373">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1374">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1375">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1376">
              <SourceParameter reference="Parameter_3478"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="vmtpC8" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3497" name="sfmtpC8" value="0.34"/>
          <Constant key="Parameter_3498" name="Keqmtp" value="0.71"/>
          <Constant key="Parameter_3499" name="KicrotC4AcetoacylCoA" value="1.6"/>
          <Constant key="Parameter_3500" name="KmmtpAcetylCoAMAT" value="30"/>
          <Constant key="Parameter_3501" name="KmmtpC10AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3502" name="KmmtpC10EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3503" name="KmmtpC12AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3504" name="KmmtpC12EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3505" name="KmmtpC14AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3506" name="KmmtpC14EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3507" name="KmmtpC16AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3508" name="KmmtpC16EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3509" name="KmmtpC6AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3510" name="KmmtpC8AcylCoAMAT" value="13.83"/>
          <Constant key="Parameter_3511" name="KmmtpC8EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3512" name="KmmtpCoAMAT" value="30"/>
          <Constant key="Parameter_3513" name="KmmtpNADHMAT" value="50"/>
          <Constant key="Parameter_3514" name="KmmtpNADMAT" value="60"/>
          <Constant key="Parameter_3515" name="Vmtp" value="2.84"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1433">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1432">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1431">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1430">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1429">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1428">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1427">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1426">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1425">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1424">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1423">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1422">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1421">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1420">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1419">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1391">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1390">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1389">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1388">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1387">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1386">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1385">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1384">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1383">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1382">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1381">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1380">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1379">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1378">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1377">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1413">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1414">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1415">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1416">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1417">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1418">
              <SourceParameter reference="Parameter_3497"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="vacesink" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-03T17:45:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3516" name="K1acesink" value="30"/>
          <Constant key="Parameter_3517" name="Ksacesink" value="6e+06"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1466">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1467">
              <SourceParameter reference="Parameter_3516"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1468">
              <SourceParameter reference="Parameter_3517"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1469">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="vcrmsC6" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-05T12:55:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3518" name="sfcrotC6" value="0.83"/>
          <Constant key="Parameter_3519" name="sfmschadC6" value="1"/>
          <Constant key="Parameter_3520" name="Keqcrot" value="3.13"/>
          <Constant key="Parameter_3521" name="Keqmschad" value="0.000217"/>
          <Constant key="Parameter_3522" name="KicrotC4AcetoacylCoA" value="1.6"/>
          <Constant key="Parameter_3523" name="KmcrotC4EnoylCoAMAT" value="40"/>
          <Constant key="Parameter_3524" name="KmcrotC6EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3525" name="KmmschadC4AcetoacylCoAMAT" value="16.9"/>
          <Constant key="Parameter_3526" name="KmmschadC6HydroxyacylCoAMAT" value="28.6"/>
          <Constant key="Parameter_3527" name="KmmschadC6KetoacylCoAMAT" value="5.8"/>
          <Constant key="Parameter_3528" name="KmmschadNADHMAT" value="5.4"/>
          <Constant key="Parameter_3529" name="KmmschadNADMAT" value="58.5"/>
          <Constant key="Parameter_3530" name="Vcrot" value="3.6"/>
          <Constant key="Parameter_3531" name="Vmschad" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1445">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1446">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1447">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1448">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1449">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1450">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1451">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1452">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1453">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1454">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1455">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1456">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1457">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1458">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1459">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1460">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1461">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1465">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1464">
              <SourceParameter reference="Parameter_3518"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1463">
              <SourceParameter reference="Parameter_3519"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1462">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_0" name="vcrmsC4" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:dcterms="http://purl.org/dc/terms/">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-03-05T13:05:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3532" name="sfcrotC4" value="1"/>
          <Constant key="Parameter_3533" name="sfmschadC4" value="0.67"/>
          <Constant key="Parameter_3534" name="Keqcrot" value="3.13"/>
          <Constant key="Parameter_3535" name="Keqmschad" value="0.000217"/>
          <Constant key="Parameter_3536" name="KicrotC4AcetoacylCoA" value="1.6"/>
          <Constant key="Parameter_3537" name="KmcrotC4EnoylCoAMAT" value="40"/>
          <Constant key="Parameter_3538" name="KmcrotC6EnoylCoAMAT" value="25"/>
          <Constant key="Parameter_3539" name="KmmschadC4AcetoacylCoAMAT" value="16.9"/>
          <Constant key="Parameter_3540" name="KmmschadC4HydroxyacylCoAMAT" value="69.9"/>
          <Constant key="Parameter_3541" name="KmmschadC6KetoacylCoAMAT" value="5.8"/>
          <Constant key="Parameter_3542" name="KmmschadNADHMAT" value="5.4"/>
          <Constant key="Parameter_3543" name="KmmschadNADMAT" value="58.5"/>
          <Constant key="Parameter_3544" name="Vcrot" value="3.6"/>
          <Constant key="Parameter_3545" name="Vmschad" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default" scalingCompartment="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1444">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1443">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1442">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1441">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1440">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1439">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1438">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1437">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1436">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1435">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1434">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1470">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1471">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1472">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1473">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1474">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1475">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1476">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1477">
              <SourceParameter reference="Parameter_3532"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1478">
              <SourceParameter reference="Parameter_3533"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1479">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model)" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT]" value="0.01" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT]" value="1.7999999999999999e-06" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C16AcylCarCYT]" value="1029786086547000.1" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C14AcylCarCYT]" value="138509239711000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C12AcylCarCYT]" value="662435494270000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C10AcylCarCYT]" value="114420676283000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C8AcylCarCYT]" value="313151324564000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C6AcylCarCYT]" value="102376394569000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C4AcylCarCYT]" value="48177126856000.016" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C16AcylCoACYT]" value="1.613933749676e+17" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[CarCYT]" value="2.4088563428e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[CoACYT]" value="8.4309971998000026e+17" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[MalCoACYT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16AcylCarMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16AcylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16EnoylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16HydroxyacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16KetoacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14AcylCarMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14AcylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14EnoylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14HydroxyacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14KetoacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12AcylCarMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12AcylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12EnoylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12HydroxyacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12KetoacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10AcylCarMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10AcylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10EnoylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10HydroxyacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10KetoacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8AcylCarMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8AcylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8EnoylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8HydroxyacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8KetoacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6AcylCarMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6AcylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6EnoylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6HydroxyacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6KetoacylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4AcylCarMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4AcylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4EnoylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4HydroxyacylCoAMAT]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4AcetoacylCoAMAT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[AcetylCoAMAT]" value="32519560627800" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[FADHMAT]" value="498633262959.59998" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[NADHMAT]" value="17343765668160" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[CoAMAT]" value="5387407210672199" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[CarMAT]" value="1029786086547000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[FADtMAT]" value="834668722780.19946" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[NADtMAT]" value="270996338565000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[CoAMATt]" value="5419926771300000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[NAD]" value="253652572896840" type="Species" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vfcact]" value="0.41999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vrcact]" value="0.41999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarMAT]" value="130" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarCYT]" value="130" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicactCarCYT]" value="200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcact]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcpt2]" value="0.39100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCarMAT]" value="51" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCarMAT]" value="51" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCarMAT]" value="51" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCarMAT]" value="51" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCarMAT]" value="51" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCarMAT]" value="51" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCarMAT]" value="51" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CoAMAT]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCoAMAT]" value="38" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCoAMAT]" value="38" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCoAMAT]" value="38" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCoAMAT]" value="38" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCoAMAT]" value="38" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCoAMAT]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCoAMAT]" value="1000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CarMAT]" value="350" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcpt2]" value="2.2200000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vvlcad]" value="0.0080000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC16AcylCoAMAT]" value="6.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC14AcylCoAMAT]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC12AcylCoAMAT]" value="2.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadFAD]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC16EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC14EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC12EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadFADH]" value="24.199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqvlcad]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vlcad]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16AcylCoAMAT]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14AcylCoAMAT]" value="7.4000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12AcylCoAMAT]" value="9" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10AcylCoAMAT]" value="24.300000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8AcylCoAMAT]" value="123" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFAD]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFADH]" value="24.199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqlcad]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmcad]" value="0.081000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12AcylCoAMAT]" value="5.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10AcylCoAMAT]" value="5.4000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8AcylCoAMAT]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6AcylCoAMAT]" value="9.4000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4AcylCoAMAT]" value="135" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFAD]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFADH]" value="24.199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmcad]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vscad]" value="0.081000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadC6AcylCoAMAT]" value="285" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadC4AcylCoAMAT]" value="10.699999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadFAD]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadC6EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadC4EnoylCoAMAT]" value="1.0800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadFADH]" value="24.199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqscad]" value="6" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcrot]" value="3.6000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC16EnoylCoAMAT]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC14EnoylCoAMAT]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC12EnoylCoAMAT]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC10EnoylCoAMAT]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC8EnoylCoAMAT]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC6EnoylCoAMAT]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC4EnoylCoAMAT]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC16HydroxyacylCoAMAT]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC14HydroxyacylCoAMAT]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC12HydroxyacylCoAMAT]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC10HydroxyacylCoAMAT]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC8HydroxyacylCoAMAT]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC6HydroxyacylCoAMAT]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC4HydroxyacylCoAMAT]" value="45" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicrotC4AcetoacylCoA]" value="1.6000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcrot]" value="3.1299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmschad]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC16HydroxyacylCoAMAT]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC14HydroxyacylCoAMAT]" value="1.8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC12HydroxyacylCoAMAT]" value="3.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC10HydroxyacylCoAMAT]" value="8.8000000000000007" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC8HydroxyacylCoAMAT]" value="16.300000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC6HydroxyacylCoAMAT]" value="28.600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC4HydroxyacylCoAMAT]" value="69.900000000000006" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadNADMAT]" value="58.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC16KetoacylCoAMAT]" value="1.3999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC14KetoacylCoAMAT]" value="1.3999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC12KetoacylCoAMAT]" value="1.6000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC10KetoacylCoAMAT]" value="2.2999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC8KetoacylCoAMAT]" value="4.0999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC6KetoacylCoAMAT]" value="5.7999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC4AcetoacylCoAMAT]" value="16.899999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadNADHMAT]" value="5.4000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmschad]" value="0.00021699999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmckat]" value="0.377" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC16KetoacylCoAMAT]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC14KetoacylCoAMAT]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC12KetoacylCoAMAT]" value="1.3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC10KetoacylCoAMAT]" value="2.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC8KetoacylCoAMAT]" value="3.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC6KetoacylCoAMAT]" value="6.7000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC4AcetoacylCoAMAT]" value="12.4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatCoAMAT]" value="26.600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC14AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC16AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC12AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC10AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC8AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC6AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC4AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatAcetylCoAMAT]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmckat]" value="1051" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmtp]" value="2.8399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16EnoylCoAMAT]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14EnoylCoAMAT]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12EnoylCoAMAT]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10EnoylCoAMAT]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8EnoylCoAMAT]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADMAT]" value="60" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpCoAMAT]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC6AcylCoAMAT]" value="13.83" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADHMAT]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpAcetylCoAMAT]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmtp]" value="0.70999999999999996" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16],ParameterGroup=Parameters,Parameter=Keqcpt1" value="0.45000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16],ParameterGroup=Parameters,Parameter=Kicpt1MalCoACYT" value="9.0999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16],ParameterGroup=Parameters,Parameter=Kmcpt1C16AcylCarCYT" value="136" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16],ParameterGroup=Parameters,Parameter=Kmcpt1C16AcylCoACYT" value="13.800000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16],ParameterGroup=Parameters,Parameter=Kmcpt1CarCYT" value="125" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16],ParameterGroup=Parameters,Parameter=Kmcpt1CoACYT" value="40.700000000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16],ParameterGroup=Parameters,Parameter=Vcpt1" value="0.012" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16],ParameterGroup=Parameters,Parameter=ncpt1" value="2.4799000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt1C16],ParameterGroup=Parameters,Parameter=sfcpt1C16" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16],ParameterGroup=Parameters,Parameter=KicactC16AcylCarCYT" value="56" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16],ParameterGroup=Parameters,Parameter=KmcactC16AcylCarCYT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16],ParameterGroup=Parameters,Parameter=KmcactC16AcylCarMAT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16],ParameterGroup=Parameters,Parameter=Keqcact" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16],ParameterGroup=Parameters,Parameter=KicactCarCYT" value="200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16],ParameterGroup=Parameters,Parameter=KmcactCarCYT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16],ParameterGroup=Parameters,Parameter=KmcactCarMAT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16],ParameterGroup=Parameters,Parameter=Vfcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vfcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC16],ParameterGroup=Parameters,Parameter=Vrcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vrcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14],ParameterGroup=Parameters,Parameter=KicactC14AcylCarCYT" value="56" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14],ParameterGroup=Parameters,Parameter=KmcactC14AcylCarCYT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14],ParameterGroup=Parameters,Parameter=KmcactC14AcylCarMAT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14],ParameterGroup=Parameters,Parameter=Keqcact" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14],ParameterGroup=Parameters,Parameter=KicactCarCYT" value="200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14],ParameterGroup=Parameters,Parameter=KmcactCarCYT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14],ParameterGroup=Parameters,Parameter=KmcactCarMAT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14],ParameterGroup=Parameters,Parameter=Vfcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vfcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC14],ParameterGroup=Parameters,Parameter=Vrcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vrcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12],ParameterGroup=Parameters,Parameter=KicactC12AcylCarCYT" value="56" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12],ParameterGroup=Parameters,Parameter=KmcactC12AcylCarCYT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12],ParameterGroup=Parameters,Parameter=KmcactC12AcylCarMAT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12],ParameterGroup=Parameters,Parameter=Keqcact" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12],ParameterGroup=Parameters,Parameter=KicactCarCYT" value="200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12],ParameterGroup=Parameters,Parameter=KmcactCarCYT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12],ParameterGroup=Parameters,Parameter=KmcactCarMAT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12],ParameterGroup=Parameters,Parameter=Vfcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vfcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC12],ParameterGroup=Parameters,Parameter=Vrcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vrcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10],ParameterGroup=Parameters,Parameter=KicactC10AcylCarCYT" value="56" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10],ParameterGroup=Parameters,Parameter=KmcactC10AcylCarCYT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10],ParameterGroup=Parameters,Parameter=KmcactC10AcylCarMAT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10],ParameterGroup=Parameters,Parameter=Keqcact" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10],ParameterGroup=Parameters,Parameter=KicactCarCYT" value="200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10],ParameterGroup=Parameters,Parameter=KmcactCarCYT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10],ParameterGroup=Parameters,Parameter=KmcactCarMAT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10],ParameterGroup=Parameters,Parameter=Vfcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vfcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC10],ParameterGroup=Parameters,Parameter=Vrcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vrcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8],ParameterGroup=Parameters,Parameter=KicactC8AcylCarCYT" value="56" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8],ParameterGroup=Parameters,Parameter=KmcactC8AcylCarCYT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8],ParameterGroup=Parameters,Parameter=KmcactC8AcylCarMAT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8],ParameterGroup=Parameters,Parameter=Keqcact" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8],ParameterGroup=Parameters,Parameter=KicactCarCYT" value="200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8],ParameterGroup=Parameters,Parameter=KmcactCarCYT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8],ParameterGroup=Parameters,Parameter=KmcactCarMAT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8],ParameterGroup=Parameters,Parameter=Vfcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vfcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC8],ParameterGroup=Parameters,Parameter=Vrcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vrcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6],ParameterGroup=Parameters,Parameter=KicactC6AcylCarCYT" value="56" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6],ParameterGroup=Parameters,Parameter=KmcactC6AcylCarCYT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6],ParameterGroup=Parameters,Parameter=KmcactC6AcylCarMAT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6],ParameterGroup=Parameters,Parameter=Keqcact" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6],ParameterGroup=Parameters,Parameter=KicactCarCYT" value="200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6],ParameterGroup=Parameters,Parameter=KmcactCarCYT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6],ParameterGroup=Parameters,Parameter=KmcactCarMAT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6],ParameterGroup=Parameters,Parameter=Vfcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vfcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC6],ParameterGroup=Parameters,Parameter=Vrcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vrcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4],ParameterGroup=Parameters,Parameter=KicactC4AcylCarCYT" value="56" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4],ParameterGroup=Parameters,Parameter=KmcactC4AcylCarCYT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4],ParameterGroup=Parameters,Parameter=KmcactC4AcylCarMAT" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4],ParameterGroup=Parameters,Parameter=Keqcact" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4],ParameterGroup=Parameters,Parameter=KicactCarCYT" value="200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4],ParameterGroup=Parameters,Parameter=KmcactCarCYT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarCYT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4],ParameterGroup=Parameters,Parameter=KmcactCarMAT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcactCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4],ParameterGroup=Parameters,Parameter=Vfcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vfcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcactC4],ParameterGroup=Parameters,Parameter=Vrcact" value="0.41999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vrcact],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=sfcpt2C16" value="0.84999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Keqcpt2" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCoAMAT" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCoAMAT" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2CarMAT" value="350" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Kmcpt2CoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C16],ParameterGroup=Parameters,Parameter=Vcpt2" value="0.39100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=sfcpt2C14" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Keqcpt2" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCoAMAT" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCoAMAT" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2CarMAT" value="350" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Kmcpt2CoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C14],ParameterGroup=Parameters,Parameter=Vcpt2" value="0.39100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=sfcpt2C12" value="0.94999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Keqcpt2" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCoAMAT" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCoAMAT" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2CarMAT" value="350" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Kmcpt2CoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C12],ParameterGroup=Parameters,Parameter=Vcpt2" value="0.39100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=sfcpt2C10" value="0.94999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Keqcpt2" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCoAMAT" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCoAMAT" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2CarMAT" value="350" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Kmcpt2CoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C10],ParameterGroup=Parameters,Parameter=Vcpt2" value="0.39100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=sfcpt2C8" value="0.34999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Keqcpt2" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCoAMAT" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCoAMAT" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2CarMAT" value="350" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Kmcpt2CoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C8],ParameterGroup=Parameters,Parameter=Vcpt2" value="0.39100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=sfcpt2C6" value="0.14999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Keqcpt2" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCoAMAT" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCoAMAT" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2CarMAT" value="350" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Kmcpt2CoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C6],ParameterGroup=Parameters,Parameter=Vcpt2" value="0.39100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=sfcpt2C4" value="0.01" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Keqcpt2" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C10AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C12AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C14AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C16AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C4AcylCoAMAT" value="1000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C6AcylCoAMAT" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCarMAT" value="51" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2C8AcylCoAMAT" value="38" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2C8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2CarMAT" value="350" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CarMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Kmcpt2CoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Kmcpt2CoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcpt2C4],ParameterGroup=Parameters,Parameter=Vcpt2" value="0.39100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcpt2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=sfvlcadC16" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=Keqvlcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqvlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=KmvlcadC12AcylCoAMAT" value="2.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=KmvlcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=KmvlcadC14AcylCoAMAT" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=KmvlcadC14EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=KmvlcadC16AcylCoAMAT" value="6.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=KmvlcadC16EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=KmvlcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=KmvlcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC16],ParameterGroup=Parameters,Parameter=Vvlcad" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vvlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=sfvlcadC14" value="0.41999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=Keqvlcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqvlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=KmvlcadC12AcylCoAMAT" value="2.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=KmvlcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=KmvlcadC14AcylCoAMAT" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=KmvlcadC14EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=KmvlcadC16AcylCoAMAT" value="6.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=KmvlcadC16EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=KmvlcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=KmvlcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC14],ParameterGroup=Parameters,Parameter=Vvlcad" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vvlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=sfvlcadC12" value="0.11" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=Keqvlcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqvlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=KmvlcadC12AcylCoAMAT" value="2.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=KmvlcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=KmvlcadC14AcylCoAMAT" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=KmvlcadC14EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=KmvlcadC16AcylCoAMAT" value="6.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=KmvlcadC16EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=KmvlcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=KmvlcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmvlcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vvlcadC12],ParameterGroup=Parameters,Parameter=Vvlcad" value="0.0080000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vvlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=sflcadC16" value="0.90000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=Keqlcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC10AcylCoAMAT" value="24.300000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC10EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC12AcylCoAMAT" value="9" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC14AcylCoAMAT" value="7.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC14EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC16AcylCoAMAT" value="2.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC16EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC8AcylCoAMAT" value="123" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadC8EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=KmlcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC16],ParameterGroup=Parameters,Parameter=Vlcad" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=sflcadC14" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=Keqlcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC10AcylCoAMAT" value="24.300000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC10EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC12AcylCoAMAT" value="9" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC14AcylCoAMAT" value="7.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC14EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC16AcylCoAMAT" value="2.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC16EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC8AcylCoAMAT" value="123" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadC8EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=KmlcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC14],ParameterGroup=Parameters,Parameter=Vlcad" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=sflcadC12" value="0.90000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=Keqlcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC10AcylCoAMAT" value="24.300000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC10EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC12AcylCoAMAT" value="9" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC14AcylCoAMAT" value="7.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC14EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC16AcylCoAMAT" value="2.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC16EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC8AcylCoAMAT" value="123" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadC8EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=KmlcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC12],ParameterGroup=Parameters,Parameter=Vlcad" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=sflcadC10" value="0.75" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=Keqlcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC10AcylCoAMAT" value="24.300000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC10EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC12AcylCoAMAT" value="9" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC14AcylCoAMAT" value="7.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC14EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC16AcylCoAMAT" value="2.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC16EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC8AcylCoAMAT" value="123" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadC8EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=KmlcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmlcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vlcadC10],ParameterGroup=Parameters,Parameter=Vlcad" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vlcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=sfmcadC12" value="0.38" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=Keqmcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC10AcylCoAMAT" value="5.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC10EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC12AcylCoAMAT" value="5.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC4AcylCoAMAT" value="135" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC4EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC6AcylCoAMAT" value="9.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC6EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC8AcylCoAMAT" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadC8EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=KmmcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC12],ParameterGroup=Parameters,Parameter=Vmcad" value="0.081000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=sfmcadC10" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=Keqmcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC10AcylCoAMAT" value="5.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC10EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC12AcylCoAMAT" value="5.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC4AcylCoAMAT" value="135" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC4EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC6AcylCoAMAT" value="9.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC6EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC8AcylCoAMAT" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadC8EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=KmmcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC10],ParameterGroup=Parameters,Parameter=Vmcad" value="0.081000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=sfmcadC8" value="0.87" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=Keqmcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC10AcylCoAMAT" value="5.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC10EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC12AcylCoAMAT" value="5.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC4AcylCoAMAT" value="135" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC4EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC6AcylCoAMAT" value="9.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC6EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC8AcylCoAMAT" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadC8EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=KmmcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC8],ParameterGroup=Parameters,Parameter=Vmcad" value="0.081000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=sfmcadC6" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=Keqmcad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC10AcylCoAMAT" value="5.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC10EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC12AcylCoAMAT" value="5.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC12EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC4AcylCoAMAT" value="135" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC4EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC4EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC6AcylCoAMAT" value="9.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC6EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC6EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC8AcylCoAMAT" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadC8EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=KmmcadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmcadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmcadC6],ParameterGroup=Parameters,Parameter=Vmcad" value="0.081000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmcad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4],ParameterGroup=Parameters,Parameter=sfscadC4" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4],ParameterGroup=Parameters,Parameter=Keqscad" value="6" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqscad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4],ParameterGroup=Parameters,Parameter=KmscadC4AcylCoAMAT" value="10.699999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadC4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4],ParameterGroup=Parameters,Parameter=KmscadC4EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadC4EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4],ParameterGroup=Parameters,Parameter=KmscadC6AcylCoAMAT" value="285" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4],ParameterGroup=Parameters,Parameter=KmscadC6EnoylCoAMAT" value="1.0800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadC6EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4],ParameterGroup=Parameters,Parameter=KmscadFAD" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadFAD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4],ParameterGroup=Parameters,Parameter=KmscadFADH" value="24.199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmscadFADH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vscadC4],ParameterGroup=Parameters,Parameter=Vscad" value="0.081000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vscad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=sfmckatC6" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=Keqmckat" value="1051" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmckat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatAcetylCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatAcetylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC10AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC10KetoacylCoAMAT" value="2.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC10KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC12AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC12KetoacylCoAMAT" value="1.3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC12KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC14AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC14KetoacylCoAMAT" value="1.2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC14KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC16AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC16KetoacylCoAMAT" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC16KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC4AcetoacylCoAMAT" value="12.4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC4AcetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC4AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC6AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC6KetoacylCoAMAT" value="6.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC6KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC8AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatC8KetoacylCoAMAT" value="3.2000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC8KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=KmmckatCoAMAT" value="26.600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC6],ParameterGroup=Parameters,Parameter=Vmckat" value="0.377" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmckat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=sfmckatC4" value="0.48999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=Keqmckat" value="1051" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmckat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatAcetylCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatAcetylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC10AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC10KetoacylCoAMAT" value="2.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC10KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC12AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC12KetoacylCoAMAT" value="1.3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC12KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC14AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC14KetoacylCoAMAT" value="1.2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC14KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC16AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC16KetoacylCoAMAT" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC16KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC4AcetoacylCoAMAT" value="12.4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC4AcetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC4AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC4AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC6AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC6KetoacylCoAMAT" value="6.7000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC6KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC8AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatC8KetoacylCoAMAT" value="3.2000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatC8KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=KmmckatCoAMAT" value="26.600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmckatCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmckatC4],ParameterGroup=Parameters,Parameter=Vmckat" value="0.377" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmckat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=sfmtpC16" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=Keqmtp" value="0.70999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KicrotC4AcetoacylCoA" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicrotC4AcetoacylCoA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpAcetylCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpAcetylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC10AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC10EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC12AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC12EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC14AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC14EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC16AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC16EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC6AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC8AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpC8EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpNADHMAT" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADHMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=KmmtpNADMAT" value="60" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC16],ParameterGroup=Parameters,Parameter=Vmtp" value="2.8399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=sfmtpC14" value="0.90000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=Keqmtp" value="0.70999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KicrotC4AcetoacylCoA" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicrotC4AcetoacylCoA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpAcetylCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpAcetylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC10AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC10EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC12AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC12EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC14AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC14EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC16AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC16EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC6AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC8AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpC8EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpNADHMAT" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADHMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=KmmtpNADMAT" value="60" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC14],ParameterGroup=Parameters,Parameter=Vmtp" value="2.8399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=sfmtpC12" value="0.81000000000000005" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=Keqmtp" value="0.70999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KicrotC4AcetoacylCoA" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicrotC4AcetoacylCoA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpAcetylCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpAcetylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC10AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC10EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC12AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC12EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC14AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC14EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC16AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC16EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC6AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC8AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpC8EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpNADHMAT" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADHMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=KmmtpNADMAT" value="60" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC12],ParameterGroup=Parameters,Parameter=Vmtp" value="2.8399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=sfmtpC10" value="0.72999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=Keqmtp" value="0.70999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KicrotC4AcetoacylCoA" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicrotC4AcetoacylCoA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpAcetylCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpAcetylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC10AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC10EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC12AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC12EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC14AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC14EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC16AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC16EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC6AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC8AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpC8EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpNADHMAT" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADHMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=KmmtpNADMAT" value="60" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC10],ParameterGroup=Parameters,Parameter=Vmtp" value="2.8399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=sfmtpC8" value="0.34000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=Keqmtp" value="0.70999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KicrotC4AcetoacylCoA" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicrotC4AcetoacylCoA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpAcetylCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpAcetylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC10AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC10EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC10EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC12AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC12EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC12EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC14AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC14EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC14EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC16AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC16EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC16EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC6AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC6AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC8AcylCoAMAT" value="13.83" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8AcylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpC8EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpC8EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpCoAMAT" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpNADHMAT" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADHMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=KmmtpNADMAT" value="60" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmtpNADMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vmtpC8],ParameterGroup=Parameters,Parameter=Vmtp" value="2.8399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmtp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vacesink]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vacesink],ParameterGroup=Parameters,Parameter=K1acesink" value="30" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vacesink],ParameterGroup=Parameters,Parameter=Ksacesink" value="6000000" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=sfcrotC6" value="0.82999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=sfmschadC6" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=Keqcrot" value="3.1299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcrot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=Keqmschad" value="0.00021699999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmschad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=KicrotC4AcetoacylCoA" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicrotC4AcetoacylCoA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=KmcrotC4EnoylCoAMAT" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC4EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=KmcrotC6EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC6EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=KmmschadC4AcetoacylCoAMAT" value="16.899999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC4AcetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=KmmschadC6HydroxyacylCoAMAT" value="28.600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC6HydroxyacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=KmmschadC6KetoacylCoAMAT" value="5.7999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC6KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=KmmschadNADHMAT" value="5.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadNADHMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=KmmschadNADMAT" value="58.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadNADMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=Vcrot" value="3.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcrot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC6],ParameterGroup=Parameters,Parameter=Vmschad" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmschad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=sfcrotC4" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=sfmschadC4" value="0.67000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=Keqcrot" value="3.1299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqcrot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=Keqmschad" value="0.00021699999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Keqmschad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=KicrotC4AcetoacylCoA" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KicrotC4AcetoacylCoA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=KmcrotC4EnoylCoAMAT" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC4EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=KmcrotC6EnoylCoAMAT" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmcrotC6EnoylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=KmmschadC4AcetoacylCoAMAT" value="16.899999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC4AcetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=KmmschadC4HydroxyacylCoAMAT" value="69.900000000000006" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC4HydroxyacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=KmmschadC6KetoacylCoAMAT" value="5.7999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadC6KetoacylCoAMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=KmmschadNADHMAT" value="5.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadNADHMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=KmmschadNADMAT" value="58.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[KmmschadNADMAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=Vcrot" value="3.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vcrot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Reactions[vcrmsC4],ParameterGroup=Parameters,Parameter=Vmschad" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Values[Vmschad],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
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
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 32519560627800 0 0 0 0 0 0 0 1029786086547000.1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 114420676283000 662435494270000 48177126856000.016 313151324564000 138509239711000 102376394569000 1.613933749676e+17 5387407210672199 2.4088563428e+18 8.4309971998000026e+17 0 0 0 0 0 0 0 0 0 0 0 0 0 498633262959.59998 17343765668160 1029786086547000 834668722780.19946 270996338565000 5419926771300000 253652572896840 0.01 1.7999999999999999e-06 0.41999999999999998 0.41999999999999998 130 130 200 1 0.39100000000000001 51 51 51 51 51 51 51 30 38 38 38 38 38 1000 1000000 350 2.2200000000000002 0.0080000000000000002 6.5 4 2.7000000000000002 0.12 1.0800000000000001 1.0800000000000001 1.0800000000000001 24.199999999999999 6 0.01 2.5 7.4000000000000004 9 24.300000000000001 123 0.12 1.0800000000000001 1.0800000000000001 1.0800000000000001 1.0800000000000001 1.0800000000000001 24.199999999999999 6 0.081000000000000003 5.7000000000000002 5.4000000000000004 4 9.4000000000000004 135 0.12 1.0800000000000001 1.0800000000000001 1.0800000000000001 1.0800000000000001 1.0800000000000001 24.199999999999999 6 0.081000000000000003 285 10.699999999999999 0.12 1.0800000000000001 1.0800000000000001 24.199999999999999 6 3.6000000000000001 150 100 25 25 25 25 40 45 45 45 45 45 45 45 1.6000000000000001 3.1299999999999999 1 1.5 1.8 3.7000000000000002 8.8000000000000007 16.300000000000001 28.600000000000001 69.900000000000006 58.5 1.3999999999999999 1.3999999999999999 1.6000000000000001 2.2999999999999998 4.0999999999999996 5.7999999999999998 16.899999999999999 5.4000000000000004 0.00021699999999999999 0.377 1.1000000000000001 1.2 1.3 2.1000000000000001 3.2000000000000002 6.7000000000000002 12.4 26.600000000000001 13.83 13.83 13.83 13.83 13.83 13.83 13.83 30 1051 2.8399999999999999 25 25 25 25 25 60 30 13.83 13.83 13.83 13.83 13.83 13.83 50 30 0.70999999999999996 
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
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.25"/>
        <Parameter name="Duration" type="float" value="25"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
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
    <Task key="Task_0" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[C16AcylCarCYT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C16AcylCarCYT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C14AcylCarCYT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C14AcylCarCYT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C12AcylCarCYT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C12AcylCarCYT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C10AcylCarCYT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C10AcylCarCYT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C8AcylCarCYT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C8AcylCarCYT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C6AcylCarCYT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C6AcylCarCYT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C4AcylCarCYT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C4AcylCarCYT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C16AcylCoACYT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VCYT],Vector=Metabolites[C16AcylCoACYT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C16AcylCarMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16AcylCarMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C16AcylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16AcylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C16EnoylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C16EnoylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C14AcylCarMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14AcylCarMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C14AcylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14AcylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C14EnoylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C14EnoylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C12AcylCarMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12AcylCarMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C12AcylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12AcylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C12EnoylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C12EnoylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C10AcylCarMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10AcylCarMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C10AcylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10AcylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C10EnoylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C10EnoylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C8AcylCarMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8AcylCarMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C8AcylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8AcylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C8EnoylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C8EnoylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C6AcylCarMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6AcylCarMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C6AcylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6AcylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C6EnoylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6EnoylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C6KetoacylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C6KetoacylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C4AcylCarMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4AcylCarMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C4AcylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4AcylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C4EnoylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4EnoylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[C4AcetoacylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[C4AcetoacylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[AcetylCoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[AcetylCoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CoAMAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Rao2014 - Fatty acid beta-oxidation (reduced model),Vector=Compartments[VMAT],Vector=Metabolites[CoAMAT],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1403250000_url-1.xml">
    <SBMLMap SBMLid="AcetylCoAMAT" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="C10AcylCarCYT" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="C10AcylCarMAT" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="C10AcylCoAMAT" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="C10EnoylCoAMAT" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="C10HydroxyacylCoAMAT" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="C10KetoacylCoAMAT" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="C12AcylCarCYT" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="C12AcylCarMAT" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="C12AcylCoAMAT" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="C12EnoylCoAMAT" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="C12HydroxyacylCoAMAT" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="C12KetoacylCoAMAT" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="C14AcylCarCYT" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="C14AcylCarMAT" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="C14AcylCoAMAT" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="C14EnoylCoAMAT" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="C14HydroxyacylCoAMAT" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="C14KetoacylCoAMAT" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="C16AcylCarCYT" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="C16AcylCarMAT" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="C16AcylCoACYT" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="C16AcylCoAMAT" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="C16EnoylCoAMAT" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="C16HydroxyacylCoAMAT" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="C16KetoacylCoAMAT" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="C4AcetoacylCoAMAT" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="C4AcylCarCYT" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="C4AcylCarMAT" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="C4AcylCoAMAT" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="C4EnoylCoAMAT" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="C4HydroxyacylCoAMAT" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="C6AcylCarCYT" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="C6AcylCarMAT" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="C6AcylCoAMAT" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="C6EnoylCoAMAT" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="C6HydroxyacylCoAMAT" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="C6KetoacylCoAMAT" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="C8AcylCarCYT" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="C8AcylCarMAT" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="C8AcylCoAMAT" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="C8EnoylCoAMAT" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="C8HydroxyacylCoAMAT" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="C8KetoacylCoAMAT" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="CPT1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="CPT2" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="CRMS" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="CRMS_C4_1" COPASIkey="Function_87"/>
    <SBMLMap SBMLid="CRMS_C6_1" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="CarCYT" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="CarMAT" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="CoACYT" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="CoAMAT" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="CoAMATt" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="FADHMAT" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="FADtMAT" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="Keqcact" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="Keqcpt2" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="Keqcrot" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="Keqlcad" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="Keqmcad" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="Keqmckat" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Keqmschad" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Keqmtp" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Keqscad" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="Keqvlcad" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="KicactCarCYT" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="KicrotC4AcetoacylCoA" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="KmcactCarCYT" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="KmcactCarMAT" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="Kmcpt2C10AcylCarMAT" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="Kmcpt2C10AcylCoAMAT" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="Kmcpt2C12AcylCarMAT" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="Kmcpt2C12AcylCoAMAT" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="Kmcpt2C14AcylCarMAT" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="Kmcpt2C14AcylCoAMAT" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="Kmcpt2C16AcylCarMAT" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="Kmcpt2C16AcylCoAMAT" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="Kmcpt2C4AcylCarMAT" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="Kmcpt2C4AcylCoAMAT" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="Kmcpt2C6AcylCarMAT" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="Kmcpt2C6AcylCoAMAT" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="Kmcpt2C8AcylCarMAT" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="Kmcpt2C8AcylCoAMAT" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="Kmcpt2CarMAT" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="Kmcpt2CoAMAT" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="KmcrotC10EnoylCoAMAT" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="KmcrotC10HydroxyacylCoAMAT" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="KmcrotC12EnoylCoAMAT" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="KmcrotC12HydroxyacylCoAMAT" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="KmcrotC14EnoylCoAMAT" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="KmcrotC14HydroxyacylCoAMAT" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="KmcrotC16EnoylCoAMAT" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="KmcrotC16HydroxyacylCoAMAT" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="KmcrotC4EnoylCoAMAT" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="KmcrotC4HydroxyacylCoAMAT" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="KmcrotC6EnoylCoAMAT" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="KmcrotC6HydroxyacylCoAMAT" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="KmcrotC8EnoylCoAMAT" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="KmcrotC8HydroxyacylCoAMAT" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="KmlcadC10AcylCoAMAT" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="KmlcadC10EnoylCoAMAT" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="KmlcadC12AcylCoAMAT" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="KmlcadC12EnoylCoAMAT" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="KmlcadC14AcylCoAMAT" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="KmlcadC14EnoylCoAMAT" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="KmlcadC16AcylCoAMAT" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="KmlcadC16EnoylCoAMAT" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="KmlcadC8AcylCoAMAT" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="KmlcadC8EnoylCoAMAT" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="KmlcadFAD" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="KmlcadFADH" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="KmmcadC10AcylCoAMAT" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="KmmcadC10EnoylCoAMAT" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="KmmcadC12AcylCoAMAT" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="KmmcadC12EnoylCoAMAT" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="KmmcadC4AcylCoAMAT" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="KmmcadC4EnoylCoAMAT" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="KmmcadC6AcylCoAMAT" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="KmmcadC6EnoylCoAMAT" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="KmmcadC8AcylCoAMAT" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="KmmcadC8EnoylCoAMAT" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="KmmcadFAD" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="KmmcadFADH" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="KmmckatAcetylCoAMAT" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="KmmckatC10AcylCoAMAT" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="KmmckatC10KetoacylCoAMAT" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="KmmckatC12AcylCoAMAT" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="KmmckatC12KetoacylCoAMAT" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="KmmckatC14AcylCoAMAT" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="KmmckatC14KetoacylCoAMAT" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="KmmckatC16AcylCoAMAT" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="KmmckatC16KetoacylCoAMAT" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="KmmckatC4AcetoacylCoAMAT" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="KmmckatC4AcylCoAMAT" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="KmmckatC6AcylCoAMAT" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="KmmckatC6KetoacylCoAMAT" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="KmmckatC8AcylCoAMAT" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="KmmckatC8KetoacylCoAMAT" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="KmmckatCoAMAT" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="KmmschadC10HydroxyacylCoAMAT" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="KmmschadC10KetoacylCoAMAT" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="KmmschadC12HydroxyacylCoAMAT" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="KmmschadC12KetoacylCoAMAT" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="KmmschadC14HydroxyacylCoAMAT" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="KmmschadC14KetoacylCoAMAT" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="KmmschadC16HydroxyacylCoAMAT" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="KmmschadC16KetoacylCoAMAT" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="KmmschadC4AcetoacylCoAMAT" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="KmmschadC4HydroxyacylCoAMAT" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="KmmschadC6HydroxyacylCoAMAT" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="KmmschadC6KetoacylCoAMAT" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="KmmschadC8HydroxyacylCoAMAT" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="KmmschadC8KetoacylCoAMAT" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="KmmschadNADHMAT" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="KmmschadNADMAT" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="KmmtpAcetylCoAMAT" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="KmmtpC10AcylCoAMAT" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="KmmtpC10EnoylCoAMAT" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="KmmtpC12AcylCoAMAT" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="KmmtpC12EnoylCoAMAT" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="KmmtpC14AcylCoAMAT" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="KmmtpC14EnoylCoAMAT" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="KmmtpC16AcylCoAMAT" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="KmmtpC16EnoylCoAMAT" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="KmmtpC6AcylCoAMAT" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="KmmtpC8AcylCoAMAT" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="KmmtpC8EnoylCoAMAT" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="KmmtpCoAMAT" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="KmmtpNADHMAT" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="KmmtpNADMAT" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="KmscadC4AcylCoAMAT" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="KmscadC4EnoylCoAMAT" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="KmscadC6AcylCoAMAT" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="KmscadC6EnoylCoAMAT" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="KmscadFAD" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="KmscadFADH" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="KmvlcadC12AcylCoAMAT" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="KmvlcadC12EnoylCoAMAT" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="KmvlcadC14AcylCoAMAT" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="KmvlcadC14EnoylCoAMAT" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="KmvlcadC16AcylCoAMAT" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="KmvlcadC16EnoylCoAMAT" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="KmvlcadFAD" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="KmvlcadFADH" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="LCAD" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="MCAD" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="MCKATA" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="MCKATB" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="MTP" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="MalCoACYT" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="NADHMAT" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="NADtMAT" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="RES" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="SCAD" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="VCYT" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="VLCAD" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="VMAT" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="Vcpt2" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="Vcrot" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="Vfcact" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="Vlcad" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="Vmcad" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="Vmckat" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Vmschad" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="Vmtp" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="Vrcact" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="Vscad" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="Vvlcad" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="function_4_vacesink_1" COPASIkey="Function_85"/>
    <SBMLMap SBMLid="function_4_vcactC10_1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_4_vcactC12_1" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="function_4_vcactC14_1" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="function_4_vcactC16_1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_4_vcactC4_1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="function_4_vcactC6_1" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="function_4_vcactC8_1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="function_4_vcpt1C16_1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_4_vcpt2C10_1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="function_4_vcpt2C12_1" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="function_4_vcpt2C14_1" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="function_4_vcpt2C16_1" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="function_4_vcpt2C4_1" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="function_4_vcpt2C6_1" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="function_4_vcpt2C8_1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="function_4_vlcadC10_1" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="function_4_vlcadC12_1" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="function_4_vlcadC14_1" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="function_4_vlcadC16_1" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="function_4_vmcadC10_1" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="function_4_vmcadC12_1" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="function_4_vmcadC6_1" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="function_4_vmcadC8_1" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="function_4_vmckatC4_1" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="function_4_vmckatC6_1" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="function_4_vmtpC10_1" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="function_4_vmtpC12_1" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="function_4_vmtpC14_1" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="function_4_vmtpC16_1" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="function_4_vmtpC8_1" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="function_4_vscadC4_1" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="function_4_vvlcadC12_1" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="function_4_vvlcadC14_1" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="function_4_vvlcadC16_1" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction_2" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="vacesink" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="vcactC10" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="vcactC12" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="vcactC14" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="vcactC16" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="vcactC4" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="vcactC6" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="vcactC8" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="vcpt1C16" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="vcpt2C10" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="vcpt2C12" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="vcpt2C14" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="vcpt2C16" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="vcpt2C4" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="vcpt2C6" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="vcpt2C8" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="vlcadC10" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="vlcadC12" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="vlcadC14" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="vlcadC16" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="vmcadC10" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="vmcadC12" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="vmcadC6" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="vmcadC8" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="vmckatC4" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="vmckatC6" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="vmtpC10" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="vmtpC12" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="vmtpC14" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="vmtpC16" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="vmtpC8" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="vscadC4" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="vvlcadC12" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="vvlcadC14" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="vvlcadC16" COPASIkey="Reaction_21"/>
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
