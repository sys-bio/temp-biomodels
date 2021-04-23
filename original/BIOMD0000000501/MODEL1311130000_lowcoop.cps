<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.10 (Build 55) (http://www.copasi.org) at 2014-01-07 16:09:58 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="10" versionDevel="55" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="function_4_DNA26_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0110*S1-Koff_NG1*DNA1110)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="DNA0110" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="DNA1110" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_254" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_265" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function_4_DNA1_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0000*S1-Koff_NG1*DNA0001)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="DNA0000" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="DNA0001" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_268" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_271" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function_4_DNA2_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0000*S1-Koff_NG1*DNA0010)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="DNA0000" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="DNA0010" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_274" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function_4_DNA3_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0001*S1-Koff_NG1*DNA0011)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="DNA0001" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="DNA0011" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_280" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function_4_DNA4_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0010*S1-Koff_NG1*DNA0011)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="DNA0010" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="DNA0011" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_286" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function_4_DNA5_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_G1*DNA0000*S1-Koff_G1*DNA0100)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="DNA0000" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_291" name="DNA0100" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_292" name="Koff_G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="Kon_G1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function_4_DNA6_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0100*S1-Koff_NG1*DNA0101)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="DNA0100" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_297" name="DNA0101" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_298" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function_4_DNA23_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0101*S1-Koff_NG1*DNA1101)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="DNA0101" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_303" name="DNA1101" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_304" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_307" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function_4_DNA15_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA1000*S1-Koff_NG1*DNA1001)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="DNA1000" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_309" name="DNA1001" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_310" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_313" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function_4_DNA13_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0000*S1-Koff_NG1*DNA1000)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="DNA0000" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_315" name="DNA1000" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_316" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_319" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function_4_DNA19_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA1001*S1-Koff_NG1*DNA1011)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="DNA1001" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_321" name="DNA1011" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_322" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_DNA11_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0101*S1-Koff_NG1*DNA0111)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="DNA0101" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="DNA0111" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_328" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_331" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_DNA8_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_G1*DNA0010*S1-Koff_G1*DNA0110)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="DNA0010" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_333" name="DNA0110" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_334" name="Koff_G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="Kon_G1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_DNA22_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0100*S1-Koff_NG1*DNA1100)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="DNA0100" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_339" name="DNA1100" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_340" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_343" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_DNA10_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_G1*DNA0011*S1-Koff_G1*DNA0111)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="DNA0011" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_345" name="DNA0111" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_346" name="Koff_G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="Kon_G1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_349" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_DNA17_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0010*S1-Koff_NG1*DNA1010)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="DNA0010" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_351" name="DNA1010" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_352" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_355" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_DNA24_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_G1*DNA1001*S1-Koff_G1*DNA1101)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="DNA1001" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_357" name="DNA1101" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_358" name="Koff_G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="Kon_G1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_361" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_DNA18_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0011*S1-Koff_NG1*DNA1011)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_362" name="DNA0011" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_363" name="DNA1011" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_364" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_367" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_DNA21_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_G1*DNA1000*S1-Koff_G1*DNA1100)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_368" name="DNA1000" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_369" name="DNA1100" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_370" name="Koff_G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="Kon_G1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_373" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_DNA9_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0100*S1-Koff_NG1*DNA0110)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_374" name="DNA0100" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_375" name="DNA0110" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_376" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_379" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function_4_DNA16_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA1000*S1-Koff_NG1*DNA1010)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="DNA1000" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_381" name="DNA1010" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_382" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_385" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="function_4_DNA20_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA1010*S1-Koff_NG1*DNA1011)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_386" name="DNA1010" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="DNA1011" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_388" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_391" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="function_4_DNA12_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0110*S1-Koff_NG1*DNA0111)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_392" name="DNA0110" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_393" name="DNA0111" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_394" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_397" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="function_4_DNA25_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA1100*S1-Koff_NG1*DNA1101)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_398" name="DNA1100" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_399" name="DNA1101" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_400" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_403" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="function_4_DNA7_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_G1*DNA0001*S1-Koff_G1*DNA0101)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="DNA0001" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_405" name="DNA0101" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_406" name="Koff_G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="Kon_G1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_409" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="function_4_DNA27_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_G1*DNA1010*S1-Koff_G1*DNA1110)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_410" name="DNA1010" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_411" name="DNA1110" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_412" name="Koff_G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="Kon_G1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_415" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="function_4_DNA28_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA1100*S1-Koff_NG1*DNA1110)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_416" name="DNA1100" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_417" name="DNA1110" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_418" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_421" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="function_4_DNA29_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0111*S1-Koff_NG1*DNA1111)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_422" name="DNA0111" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="DNA1111" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_424" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_427" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="function_4_DNA30_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_G1*DNA1011*S1-Koff_G1*DNA1111)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_428" name="DNA1011" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_429" name="DNA1111" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_430" name="Koff_G1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="Kon_G1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_432" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_433" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="function_4_DNA31_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA1101*S1-Koff_NG1*DNA1111)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_434" name="DNA1101" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_435" name="DNA1111" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_436" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_439" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="function_4_DNA32_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA1110*S1-Koff_NG1*DNA1111)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_440" name="DNA1110" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_441" name="DNA1111" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_442" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_445" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="function_4_DNA33_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA0011-Koff_P1*DNA001_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_446" name="DNA0011" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_447" name="DNA001_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_448" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="function_4_DNA34_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA0110-Koff_P1*DNA01_10)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="DNA0110" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_452" name="DNA01_10" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_453" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="function_4_DNA42_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1110-Koff_P1*DNA11_10)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="DNA1110" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_457" name="DNA11_10" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_458" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="function_4_DNA35_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA0111-Koff_P1*DNA01_11)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_461" name="DNA0111" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_462" name="DNA01_11" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_463" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="function_4_DNA36_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA0111-Koff_P1*DNA011_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_466" name="DNA0111" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_467" name="DNA011_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_468" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_469" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_470" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="function_4_DNA37_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA01_11-Koff_P1*DNA01_1_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_471" name="DNA01_11" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_472" name="DNA01_1_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_473" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_475" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="function_4_DNA38_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA011_1-Koff_P1*DNA01_1_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_476" name="DNA011_1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_477" name="DNA01_1_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_478" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_479" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="function_4_DNA39_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1100-Koff_P1*DNA1_100)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_481" name="DNA1100" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_482" name="DNA1_100" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_483" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="function_4_DNA40_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1101-Koff_P1*DNA1_101)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_486" name="DNA1101" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_487" name="DNA1_101" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_488" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_489" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_490" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="function_4_DNA41_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1110-Koff_P1*DNA1_110)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_491" name="DNA1110" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_492" name="DNA1_110" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_493" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_494" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_495" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="function_4_DNA14_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_NG1*DNA0001*S1-Koff_NG1*DNA1001)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_496" name="DNA0001" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_497" name="DNA1001" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_498" name="Koff_NG1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_499" name="Kon_NG1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="S1" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_501" name="nucleus" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="function_4_DNA50_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1_111-Koff_P1*DNA1_1_11)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_502" name="DNA1_111" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_503" name="DNA1_1_11" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_504" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_505" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_506" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="function_4_DNA43_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1_110-Koff_P1*DNA1_1_10)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_507" name="DNA1_110" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_508" name="DNA1_1_10" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_509" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_510" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_511" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="function_4_DNA44_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA11_10-Koff_P1*DNA1_1_10)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_512" name="DNA11_10" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_513" name="DNA1_1_10" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_514" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_515" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="function_4_DNA45_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1111-Koff_P1*DNA1_111)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_517" name="DNA1111" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_518" name="DNA1_111" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_519" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_520" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_521" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="function_4_DNA46_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1111-Koff_P1*DNA11_11)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_522" name="DNA1111" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_523" name="DNA11_11" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_524" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_525" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_526" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="function_4_DNA47_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1111-Koff_P1*DNA111_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_527" name="DNA1111" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_528" name="DNA111_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_529" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_530" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_531" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="function_4_DNA48_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1_111-Koff_P1*DNA1_11_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_532" name="DNA1_111" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_533" name="DNA1_11_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_534" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_535" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_536" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="function_4_DNA49_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA111_1-Koff_P1*DNA1_11_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_537" name="DNA111_1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_538" name="DNA1_11_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_539" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_540" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="function_4_DNA52_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA11_11-Koff_P1*DNA11_1_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_542" name="DNA11_11" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_543" name="DNA11_1_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_544" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_545" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_546" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="function_4_DNA53_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA111_1-Koff_P1*DNA11_1_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_547" name="DNA111_1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_548" name="DNA11_1_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_549" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_551" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="function_4_DNA54_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1_1_11-Koff_P1*DNA1_1_1_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_552" name="DNA1_1_11" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_553" name="DNA1_1_1_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_554" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_556" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="function_4_DNA55_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1_11_1-Koff_P1*DNA1_1_1_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_557" name="DNA1_11_1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_558" name="DNA1_1_1_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_559" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_560" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_561" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="function_4_DNA56_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA11_1_1-Koff_P1*DNA1_1_1_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_562" name="DNA11_1_1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_563" name="DNA1_1_1_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_564" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_565" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_566" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="function_4_DNA57" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA1011-Koff_P1*DNA101_1)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_567" name="DNA1011" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_568" name="DNA101_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_569" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_570" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_571" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="function_4_DNA51_1" type="UserDefined" reversible="unspecified">
      <Expression>
        (Kon_P1*DNA11_11-Koff_P1*DNA1_1_11)/nucleus
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_572" name="DNA11_11" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_573" name="DNA1_1_11" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_574" name="Koff_P1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_575" name="Kon_P1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_576" name="nucleus" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="DoubleGasBegitt2013_STAT" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-01-07T14:01:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:MODEL1311130000"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="nucleus" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-25T10:59:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="S1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_1" name="DNA0000" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-26T14:54:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="DNA0001" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-25T09:36:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="DNA0010" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_4" name="DNA0100" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_5" name="DNA1000" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_6" name="DNA1100" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_7" name="DNA1010" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_8" name="DNA1001" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_9" name="DNA0110" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_10" name="DNA0101" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_11" name="DNA0011" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_12" name="DNA1110" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_13" name="DNA1011" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_14" name="DNA1101" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_15" name="DNA0111" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_16" name="DNA1111" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_17" name="DNA001_1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_18" name="DNA01_10" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_19" name="DNA01_11" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_20" name="DNA011_1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_21" name="DNA01_1_1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_22" name="DNA101_1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_23" name="DNA1_100" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_24" name="DNA1_101" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_25" name="DNA1_110" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_26" name="DNA11_10" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_27" name="DNA1_1_10" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_28" name="DNA1_111" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_29" name="DNA11_11" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_30" name="DNA111_1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_31" name="DNA1_1_11" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_32" name="DNA1_11_1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_33" name="DNA11_1_1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_34" name="DNA1_1_1_1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Kon_P1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-25T10:56:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Koff_P1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-25T11:52:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Kon_G1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-25T10:57:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="Koff_G1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-25T10:57:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Kon_NG1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Koff_NG1" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-25T09:36:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="DoubleGasOccupancy" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-01-07T14:02:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA0100],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1100],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA0110],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA0101],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1110],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1101],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA0111],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1111],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1_100],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA01_10],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1_110],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA11_10],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1_1_10],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1_101],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA01_11],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA011_1],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA01_1_1],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1_111],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA11_11],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA111_1],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1_1_11],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1_11_1],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA11_1_1],Reference=Concentration&gt;+&lt;CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[DNA1_1_1_1],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="DNA1" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:04:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="DNA2" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="DNA3" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:06:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="DNA4" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-24T11:08:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="DNA5" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-24T11:08:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="DNA6" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-24T11:08:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="DNA7" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-24T11:08:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="DNA8" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-24T11:08:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="DNA9" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-24T11:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="DNA10" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:04:24Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="DNA11" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:04:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="DNA12" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:04:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="DNA13" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:04:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="DNA14" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:04:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="DNA15" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:04:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="DNA16" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="DNA17" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="DNA18" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:14Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="DNA19" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="DNA20" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="DNA21" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="DNA22" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="DNA23" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="DNA24" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:05:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="DNA25" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:06:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="DNA26" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:06:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="DNA27" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:06:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="DNA28" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:06:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="DNA29" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:06:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="DNA30" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:06:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="DNA31" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:06:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="DNA32" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:06:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_70">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="DNA33" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:07:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="DNA34" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:07:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="DNA35" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:07:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="DNA36" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:07:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="DNA37" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-22T12:07:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="DNA38" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="DNA39" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="DNA40" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-24T11:08:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="DNA41" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="DNA42" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="DNA43" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="DNA44" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="DNA45" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="DNA46" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="DNA47" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="DNA48" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="DNA49" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="DNA50" reversible="true">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-04-24T11:08:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="DNA51" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="DNA52" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="DNA53" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_91">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="DNA54" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_92">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="DNA55" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_93">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="DNA56" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_94">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="DNA57" reversible="true">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <KineticLaw function="Function_95">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6603158029899.2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 60221417900000 0 1 1000 100 20000000000 100 20000000000 5000 
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
        <Parameter name="Resolution" type="unsignedFloat" value="1e-09"/>
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
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="0"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Number of steps" type="unsignedInteger" value="50"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[S1],Reference=InitialConcentration"/>
            <Parameter name="Minimum" type="float" value="9.999999999999999e-12"/>
            <Parameter name="Maximum" type="float" value="1e-07"/>
            <Parameter name="log" type="bool" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
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
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
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
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
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
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="1e-06"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="1e-06"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
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
    <PlotSpecification name="Scan of Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[DoubleGasOccupancy]" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Compartments[nucleus],Vector=Metabolites[S1],Reference=InitialConcentration"/>
            <ChannelSpec cn="CN=Root,Model=DoubleGasBegitt2013_STAT,Vector=Values[DoubleGasOccupancy],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1311130000_highcoop.xml">
    <SBMLMap SBMLid="DNA0000" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="DNA0001" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="DNA0010" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="DNA0011" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="DNA001_1" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="DNA0100" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="DNA0101" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="DNA0110" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="DNA0111" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="DNA011_1" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="DNA01_10" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="DNA01_11" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="DNA01_1_1" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="DNA1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="DNA10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="DNA1000" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="DNA1001" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="DNA1010" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="DNA1011" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="DNA101_1" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="DNA11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="DNA1100" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="DNA1101" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="DNA1110" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="DNA1111" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="DNA111_1" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="DNA11_10" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="DNA11_11" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="DNA11_1_1" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="DNA12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="DNA13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="DNA14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="DNA15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="DNA16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="DNA17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="DNA18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="DNA19" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="DNA1_100" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="DNA1_101" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="DNA1_110" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="DNA1_111" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="DNA1_11_1" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="DNA1_1_10" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="DNA1_1_11" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="DNA1_1_1_1" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="DNA2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="DNA20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="DNA21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="DNA22" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="DNA23" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="DNA24" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="DNA25" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="DNA26" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="DNA27" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="DNA28" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="DNA29" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="DNA3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="DNA30" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="DNA31" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="DNA32" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="DNA33" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="DNA34" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="DNA35" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="DNA36" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="DNA37" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="DNA38" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="DNA39" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="DNA4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="DNA40" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="DNA41" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="DNA42" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="DNA43" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="DNA44" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="DNA45" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="DNA46" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="DNA47" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="DNA48" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="DNA49" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="DNA5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="DNA50" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="DNA51" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="DNA52" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="DNA53" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="DNA54" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="DNA55" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="DNA56" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="DNA57" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="DNA6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="DNA7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="DNA8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="DNA9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Koff_G1" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="Koff_NG1" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Koff_P1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Kon_G1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="Kon_NG1" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Kon_P1" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="S1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="function_4_DNA10_1" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="function_4_DNA11_1" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="function_4_DNA12_1" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="function_4_DNA13_1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_4_DNA14_1" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="function_4_DNA15_1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_4_DNA16_1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="function_4_DNA17_1" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="function_4_DNA18_1" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="function_4_DNA19_1" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="function_4_DNA1_1" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_4_DNA20_1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="function_4_DNA21_1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="function_4_DNA22_1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_4_DNA23_1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_4_DNA24_1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="function_4_DNA25_1" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="function_4_DNA26_1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_4_DNA27_1" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="function_4_DNA28_1" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="function_4_DNA29_1" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="function_4_DNA2_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_4_DNA30_1" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="function_4_DNA31_1" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="function_4_DNA32_1" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="function_4_DNA33_1" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="function_4_DNA34_1" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="function_4_DNA35_1" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="function_4_DNA36_1" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="function_4_DNA37_1" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="function_4_DNA38_1" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="function_4_DNA39_1" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="function_4_DNA3_1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_4_DNA40_1" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="function_4_DNA41_1" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="function_4_DNA42_1" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="function_4_DNA43_1" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="function_4_DNA44_1" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="function_4_DNA45_1" COPASIkey="Function_85"/>
    <SBMLMap SBMLid="function_4_DNA46_1" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="function_4_DNA47_1" COPASIkey="Function_87"/>
    <SBMLMap SBMLid="function_4_DNA48_1" COPASIkey="Function_88"/>
    <SBMLMap SBMLid="function_4_DNA49_1" COPASIkey="Function_89"/>
    <SBMLMap SBMLid="function_4_DNA4_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_4_DNA50_1" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="function_4_DNA51_1" COPASIkey="Function_96"/>
    <SBMLMap SBMLid="function_4_DNA52_1" COPASIkey="Function_90"/>
    <SBMLMap SBMLid="function_4_DNA53_1" COPASIkey="Function_91"/>
    <SBMLMap SBMLid="function_4_DNA54_1" COPASIkey="Function_92"/>
    <SBMLMap SBMLid="function_4_DNA55_1" COPASIkey="Function_93"/>
    <SBMLMap SBMLid="function_4_DNA56_1" COPASIkey="Function_94"/>
    <SBMLMap SBMLid="function_4_DNA57" COPASIkey="Function_95"/>
    <SBMLMap SBMLid="function_4_DNA5_1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_4_DNA6_1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_4_DNA7_1" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="function_4_DNA8_1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_4_DNA9_1" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="nucleus" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="parameter_1" COPASIkey="ModelValue_6"/>
  </SBMLReference>
</COPASI>
