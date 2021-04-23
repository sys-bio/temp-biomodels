<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.23 (Build 184) (http://www.copasi.org) at 2018-05-31 16:21:05 UTC -->
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
    <Function key="Function_40" name="Function for Synthesis" type="UserDefined" reversible="unspecified">
      <Expression>
        E2F1*cytoplasm*ksynth/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="E2F1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_263" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_262" name="ksynth" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for transport cytoplasm_Foxo1_Pa0_pUb0 to nucleus_Foxo1_Pa0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_pUb0*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_250" name="cytoplasm_Foxo1_Pa0_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for transport nucleus_Foxo1_Pa0_pUb0 to cytoplasm_Foxo1_Pa0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_266" name="nucleus_Foxo1_Pa0_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for transport nucleus_Foxo1_Pa0_pUb0 to dnabound_Foxo1_Pa0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_269" name="nucleus_Foxo1_Pa0_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for transport dnabound_Foxo1_Pa0_pUb0 to nucleus_Foxo1_Pa0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_pUb0*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_273" name="dnabound_Foxo1_Pa0_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for transport cytoplasm_Foxo1_Pa0_pUb1 to nucleus_Foxo1_Pa0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_pUb1*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_276" name="cytoplasm_Foxo1_Pa0_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for transport nucleus_Foxo1_Pa0_pUb1 to cytoplasm_Foxo1_Pa0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_278" name="nucleus_Foxo1_Pa0_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for transport nucleus_Foxo1_Pa0_pUb1 to dnabound_Foxo1_Pa0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_281" name="nucleus_Foxo1_Pa0_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for transport dnabound_Foxo1_Pa0_pUb1 to nucleus_Foxo1_Pa0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_pUb1*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_285" name="dnabound_Foxo1_Pa0_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_284" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for transport cytoplasm_Foxo1_Pa1_pUb0 to nucleus_Foxo1_Pa1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_pUb0*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_288" name="cytoplasm_Foxo1_Pa1_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for transport nucleus_Foxo1_Pa1_pUb0 to cytoplasm_Foxo1_Pa1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_290" name="nucleus_Foxo1_Pa1_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for transport nucleus_Foxo1_Pa1_pUb0 to dnabound_Foxo1_Pa1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_293" name="nucleus_Foxo1_Pa1_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for transport dnabound_Foxo1_Pa1_pUb0 to nucleus_Foxo1_Pa1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_pUb0*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_297" name="dnabound_Foxo1_Pa1_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for transport cytoplasm_Foxo1_Pa1_pUb1 to nucleus_Foxo1_Pa1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_pUb1*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_300" name="cytoplasm_Foxo1_Pa1_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_299" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for transport nucleus_Foxo1_Pa1_pUb1 to cytoplasm_Foxo1_Pa1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_302" name="nucleus_Foxo1_Pa1_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for transport nucleus_Foxo1_Pa1_pUb1 to dnabound_Foxo1_Pa1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_305" name="nucleus_Foxo1_Pa1_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for transport dnabound_Foxo1_Pa1_pUb1 to nucleus_Foxo1_Pa1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_pUb1*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_309" name="dnabound_Foxo1_Pa1_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_308" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for conversion of cytoplasm_Foxo1_Pa0_pUb0 to cytoplasm_Foxo1_Pa1_pUb0 by Akt" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_pUb0*cytoplasm*(Akt*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_311" name="cytoplasm_Foxo1_Pa0_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for conversion of nucleus_Foxo1_Pa0_pUb0 to nucleus_Foxo1_Pa1_pUb0 by Akt" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_pUb0*nucleus*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_316" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_319" name="nucleus_Foxo1_Pa0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for conversion of dnabound_Foxo1_Pa0_pUb0 to dnabound_Foxo1_Pa1_pUb0 by Akt" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_pUb0*dnabound*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_323" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_322" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_321" name="dnabound_Foxo1_Pa0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_320" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for conversion of cytoplasm_Foxo1_Pa0_pUb1 to cytoplasm_Foxo1_Pa1_pUb1 by Akt" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_pUb1*cytoplasm*(Akt*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_328" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_327" name="cytoplasm_Foxo1_Pa0_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for conversion of nucleus_Foxo1_Pa0_pUb1 to nucleus_Foxo1_Pa1_pUb1 by Akt" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_pUb1*nucleus*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_330" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_333" name="nucleus_Foxo1_Pa0_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for conversion of dnabound_Foxo1_Pa0_pUb1 to dnabound_Foxo1_Pa1_pUb1 by Akt" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_pUb1*dnabound*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_337" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_336" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_335" name="dnabound_Foxo1_Pa0_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_334" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for conversion of cytoplasm_Foxo1_Pa0_pUb0 to cytoplasm_Foxo1_Pa1_pUb0 by SGK" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_pUb0*cytoplasm*(SGK*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_342" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_341" name="cytoplasm_Foxo1_Pa0_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_340" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for conversion of nucleus_Foxo1_Pa0_pUb0 to nucleus_Foxo1_Pa1_pUb0 by SGK" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_pUb0*nucleus*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_346" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_345" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_344" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_347" name="nucleus_Foxo1_Pa0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for conversion of dnabound_Foxo1_Pa0_pUb0 to dnabound_Foxo1_Pa1_pUb0 by SGK" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_pUb0*dnabound*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_351" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_350" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_349" name="dnabound_Foxo1_Pa0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for conversion of cytoplasm_Foxo1_Pa0_pUb1 to cytoplasm_Foxo1_Pa1_pUb1 by SGK" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_pUb1*cytoplasm*(SGK*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_357" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_356" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_355" name="cytoplasm_Foxo1_Pa0_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_354" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for conversion of nucleus_Foxo1_Pa0_pUb1 to nucleus_Foxo1_Pa1_pUb1 by SGK" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_pUb1*nucleus*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_360" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_359" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_358" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_361" name="nucleus_Foxo1_Pa0_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for conversion of dnabound_Foxo1_Pa0_pUb1 to dnabound_Foxo1_Pa1_pUb1 by SGK" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_pUb1*dnabound*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_364" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_363" name="dnabound_Foxo1_Pa0_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_362" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for conversion of cytoplasm_Foxo1_Pa1_pUb0 to cytoplasm_Foxo1_Pa0_pUb0 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_pUb0*cytoplasm*(PP2A*cytoplasm)*kdephos/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_371" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_370" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_369" name="cytoplasm_Foxo1_Pa1_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_368" name="kdephos" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for conversion of nucleus_Foxo1_Pa1_pUb0 to nucleus_Foxo1_Pa0_pUb0 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_pUb0*nucleus*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_374" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_373" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_372" name="kdephos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_375" name="nucleus_Foxo1_Pa1_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for conversion of dnabound_Foxo1_Pa1_pUb0 to dnabound_Foxo1_Pa0_pUb0 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_pUb0*dnabound*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_379" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_378" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_377" name="dnabound_Foxo1_Pa1_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="kdephos" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for conversion of cytoplasm_Foxo1_Pa1_pUb1 to cytoplasm_Foxo1_Pa0_pUb1 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_pUb1*cytoplasm*(PP2A*cytoplasm)*kdephos/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_384" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_383" name="cytoplasm_Foxo1_Pa1_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_382" name="kdephos" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for conversion of nucleus_Foxo1_Pa1_pUb1 to nucleus_Foxo1_Pa0_pUb1 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_pUb1*nucleus*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_388" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_387" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_386" name="kdephos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_389" name="nucleus_Foxo1_Pa1_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for conversion of dnabound_Foxo1_Pa1_pUb1 to dnabound_Foxo1_Pa0_pUb1 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_pUb1*dnabound*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_393" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_392" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_391" name="dnabound_Foxo1_Pa1_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="kdephos" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for conversion of cytoplasm_Foxo1_Pa0_pUb0 to cytoplasm_Foxo1_Pa0_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_pUb0*cytoplasm*(SCF*cytoplasm)*kub/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_399" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_398" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_397" name="cytoplasm_Foxo1_Pa0_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="kub" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for conversion of nucleus_Foxo1_Pa0_pUb0 to nucleus_Foxo1_Pa0_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_pUb0*nucleus*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_402" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_401" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_400" name="kub" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_403" name="nucleus_Foxo1_Pa0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for conversion of dnabound_Foxo1_Pa0_pUb0 to dnabound_Foxo1_Pa0_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_pUb0*dnabound*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_408" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_407" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_406" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_405" name="dnabound_Foxo1_Pa0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_404" name="kub" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for conversion of cytoplasm_Foxo1_Pa1_pUb0 to cytoplasm_Foxo1_Pa1_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_pUb0*cytoplasm*(SCF*cytoplasm)*kub/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_413" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_412" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_411" name="cytoplasm_Foxo1_Pa1_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="kub" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for conversion of nucleus_Foxo1_Pa1_pUb0 to nucleus_Foxo1_Pa1_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_pUb0*nucleus*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_416" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_415" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_414" name="kub" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_417" name="nucleus_Foxo1_Pa1_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for conversion of dnabound_Foxo1_Pa1_pUb0 to dnabound_Foxo1_Pa1_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_pUb0*dnabound*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_422" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_421" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_420" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_419" name="dnabound_Foxo1_Pa1_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_418" name="kub" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for degradation of cytoplasm_Foxo1_Pa0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_pUb1*cytoplasm*(Proteasome*cytoplasm)*kdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_427" name="Proteasome" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_426" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_425" name="cytoplasm_Foxo1_Pa0_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_424" name="kdeg" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for degradation of cytoplasm_Foxo1_Pa1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_pUb1*cytoplasm*(Proteasome*cytoplasm)*kdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_430" name="Proteasome" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_429" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_428" name="cytoplasm_Foxo1_Pa1_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="kdeg" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for transcription of inr by dnabound_Foxo1_Pa0_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_434" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_433" name="dnabound_Foxo1_Pa0_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_432" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for transcription of sod2 by dnabound_Foxo1_Pa0_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_436" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_435" name="dnabound_Foxo1_Pa0_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_431" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for transcription of inr by dnabound_Foxo1_Pa0_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_439" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_438" name="dnabound_Foxo1_Pa0_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_437" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for transcription of sod2 by dnabound_Foxo1_Pa0_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_442" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_441" name="dnabound_Foxo1_Pa0_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_440" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for transcription of inr by dnabound_Foxo1_Pa1_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_445" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_444" name="dnabound_Foxo1_Pa1_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_443" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for transcription of sod2 by dnabound_Foxo1_Pa1_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_448" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_447" name="dnabound_Foxo1_Pa1_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_446" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for transcription of inr by dnabound_Foxo1_Pa1_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_450" name="dnabound_Foxo1_Pa1_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_449" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for transcription of sod2 by dnabound_Foxo1_Pa1_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_454" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_453" name="dnabound_Foxo1_Pa1_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_452" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Function for export of inr RNA" type="UserDefined" reversible="false">
      <Expression>
        nucleus_RNA_Inr*nucleus*kexp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_457" name="kexp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_456" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_455" name="nucleus_RNA_Inr" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="Function for cyto degr of inr RNA" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_RNA_Inr*cytoplasm*kmdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_460" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_459" name="cytoplasm_RNA_Inr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_458" name="kmdeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="Function for translation of inr" type="UserDefined" reversible="unspecified">
      <Expression>
        cytoplasm_RNA_Inr*cytoplasm*ktransl/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_463" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_462" name="cytoplasm_RNA_Inr" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_461" name="ktransl" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="Function for degradation of Inr protein" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Inr*cytoplasm*kpdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_466" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_465" name="cytoplasm_Inr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_464" name="kpdeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="Function for export of sod2 RNA" type="UserDefined" reversible="false">
      <Expression>
        nucleus_RNA_Sod2*nucleus*kexp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_469" name="kexp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_468" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_467" name="nucleus_RNA_Sod2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="Function for cyto degr of sod2 RNA" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_RNA_Sod2*cytoplasm*kmdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_472" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_471" name="cytoplasm_RNA_Sod2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_470" name="kmdeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="Function for translation of sod2" type="UserDefined" reversible="unspecified">
      <Expression>
        cytoplasm_RNA_Sod2*cytoplasm*ktransl/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_475" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_474" name="cytoplasm_RNA_Sod2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_473" name="ktransl" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="Function for degradation of Sod2 protein" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Sod2*cytoplasm*kpdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_478" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_477" name="cytoplasm_Sod2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_476" name="kpdeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:2759"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:doi:10.1371/journal.pone.0011092"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T10:07:34Z</dcterms:W3CDTF>
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
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0008152"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0043687"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0051726"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:ncit:C17557"/>
    <CopasiMT:is rdf:resource="urn:miriam:biomodels.db:MODEL1112260000"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="extracellular" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:35:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005576" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="cellsurface" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:35:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0009986" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="cytoplasm" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:36:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005737" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="nucleus" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:35:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0005634" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_4" name="dnabound" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_4">
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0003677" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:36:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Contains all species bound to dna
        </Comment>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="null" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:58:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="degr_Foxo1" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C25650" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="cytoplasm_Foxo1_unpolyubiquitinated_unphosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="nucleus_Foxo1_unpolyubiquitinated_unphosphorylated" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:52:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="dnabound_Foxo1_unpolyubiquitinated_unphosphorylated" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:37:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="cytoplasm_Foxo1_polyubiquitinated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000037077" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="nucleus_Foxo1_polyubiquitinated" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000037077" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:53:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="dnabound_Foxo1_polyubiquitinated" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000037077" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="cytoplasm_Foxo1_phosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="nucleus_Foxo1_phosphorylated" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:52:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="dnabound_Foxo1_phosphorylated" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="cytoplasm_Foxo1_polyubiquitinated_phosphorylated" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000037077" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="nucleus_Foxo1_polyubiquitinated_phosphorylated" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000037077" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="dnabound_Foxo1_polyubiquitinated_phosphorylated" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000037077" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Foxo1_unphosphorylated_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:52:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_unpolyubiquitinated_unphosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_unpolyubiquitinated_unphosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_unpolyubiquitinated_unphosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_polyubiquitinated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_polyubiquitinated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_polyubiquitinated],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Foxo1_phosphorylated_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002220" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:52:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_polyubiquitinated_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_polyubiquitinated_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_polyubiquitinated_phosphorylated],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Foxo1_unpolyubiquitinated_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:52:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_unpolyubiquitinated_unphosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_unpolyubiquitinated_unphosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_unpolyubiquitinated_unphosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_phosphorylated],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Foxo1_polyubiquitinated_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000037077" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:52:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_polyubiquitinated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_polyubiquitinated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_polyubiquitinated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_polyubiquitinated_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_polyubiquitinated_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_polyubiquitinated_phosphorylated],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="cytoplasm_Foxo1_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_unpolyubiquitinated_unphosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_polyubiquitinated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_polyubiquitinated_phosphorylated],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="nucleus_Foxo1_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_unpolyubiquitinated_unphosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_polyubiquitinated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_polyubiquitinated_phosphorylated],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="dnabound_Foxo1_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_unpolyubiquitinated_unphosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_polyubiquitinated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_phosphorylated],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_polyubiquitinated_phosphorylated],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Foxo1_total" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R1E0" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[cytoplasm_Foxo1_total],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[nucleus_Foxo1_total],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[dnabound_Foxo1_total],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="nucleus_RNA_Inr" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:33697" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="cytoplasm_RNA_Inr" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:33697" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="cytoplasm_Inr" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C25447" />
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ncit:C17021" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="nucleus_RNA_Sod2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:uniprot:P09671" />
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:33697" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="cytoplasm_RNA_Sod2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes rdf:resource="urn:miriam:uniprot:P09671" />
    <CopasiMT:is rdf:resource="urn:miriam:chebi:CHEBI:33697" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="cytoplasm_Sod2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:P09671" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="E2F1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q61501" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Akt" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T10:15:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:P31750" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="SGK" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:58:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9WVC6" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="CDK2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:P97377" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="AMPK" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q91WG5" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="IKK" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9R0T8" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="JNK" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q9ESN9" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="PP2A" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:58:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:uniprot:Q76MZ3" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="CBPP300" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:P97769" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="SIRT1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:58:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q923E4" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="E3" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:54:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:P62878" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="USP7" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-31T10:00:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isHomologTo rdf:resource="urn:miriam:uniprot:Q6A4J8" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="SCF" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:58:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0019005" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Proteasome" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:58:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0000502" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Foxo1_total_rate" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-31T16:51:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_total],Reference=Concentration>/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_total],Reference=InitialConcentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="transcription_rate" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="kmdeg" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="kpdeg" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kdeg" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="kdephos" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="kexp" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kkin" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="kub1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="kub2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="ksynth" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="ktranscr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="ktransl" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="ktr1_181818" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="ktr2_0181818" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="ktr3_125" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="ktr4_055" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="ktr5_25" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="ktr4_55" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:10:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C61408" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5024" name="ksynth" value="0.0055"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="transport cytoplasm_Foxo1 to nucleus_Foxo1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:32:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051170" />
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
          <Constant key="Parameter_5023" name="ktr" value="0.181818"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="transport nucleus_Foxo1 to cytoplasm_Foxo1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:38:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
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
          <Constant key="Parameter_5022" name="ktr" value="0.055"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="transport nucleus_Foxo1 to dnabound_Foxo1_" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:38:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5021" name="ktr" value="0.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="transport dnabound_Foxo1 to nucleus_Foxo1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:38:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5020" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="transport cytoplasm_Foxo1_polyubiquitinated to nucleus_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:33:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051170" />
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
          <Constant key="Parameter_5019" name="ktr" value="0.181818"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="transport nucleus_Foxo1_polyubiquitinated to cytoplasm_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:35:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
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
          <Constant key="Parameter_5018" name="ktr" value="0.055"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="transport nucleus_Foxo1_polyubiquitinated to dnabound_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:38:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5017" name="ktr" value="0.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="transport dnabound_Foxo1_polyubiquitinated to nucleus_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:38:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5016" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="transport cytoplasm_Foxo1_phosphorylated to nucleus_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:38:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051170" />
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
          <Constant key="Parameter_5015" name="ktr" value="0.0181818"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="transport nucleus_Foxo1_phosphorylated to cytoplasm_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:35:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
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
          <Constant key="Parameter_5014" name="ktr" value="0.55"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="transport nucleus_Foxo1_phosphorylated to dnabound_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:38:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
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
          <Constant key="Parameter_5013" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="transport dnabound_Foxo1_phosphorylated to nucleus_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:38:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="transport cytoplasm_Foxo1_phosphorylated_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:33:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051170" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="ktr" value="0.0181818"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="transport nucleus_Foxo1_phosphorylated_polyubiquitinated to cytoplasm_Foxo1_phosphorylated_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:35:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
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
          <Constant key="Parameter_5010" name="ktr" value="0.55"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="transport nucleus_Foxo1_phosphorylated_polyubiquitinated to dnabound_Foxo1_phosphorylated_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:38:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
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
          <Constant key="Parameter_5009" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="transport dnabound_Foxo1_phosphorylated_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T11:38:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C89777" />
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
          <Constant key="Parameter_5008" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="phosphorylation of cytoplasm_Foxo1_not_polyubiquitinated Akt" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:13:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="phosphorylation of nucleus_Foxo1_not_polyubiquitinated by Akt" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="phosphorylation of dnabound_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:16:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="phosphorylation of cytoplasm_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="phosphorylation of nucleus_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="phosphorylation of dnabound_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="phosphorylation of cytoplasm_Foxo1 to cytoplasm_Foxo1_phosphorylated by SGK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="phosphorylation of nucleus_Foxo1 to nucleus_Foxo1_phosphorylated by SGK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="phosphorylation of dnabound_Foxo1 to dnabound_Foxo1_phosphorylated by SGK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="phosphorylation of cytoplasm_Foxo1_polyubiquitinated to cytoplasm_Foxo1_phosphorylated_polyubiquitinated by SGK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4998" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="phosphorylation of nucleus_Foxo1_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinatedby SGK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="phosphorylation of dnabound_Foxo1_polyubiquitinated to dnabound_Foxo1_phosphorylated_polyubiquitinated by SGK" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016310" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="dephosphorylation of cytoplasm_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:16:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016311" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="dephosphorylation of nucleus_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016311" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="dephosphorylation of dnabound_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016311" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="dephosphorylation of cytoplasm_Foxo1_phosphorylated_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:16:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016311" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="dephosphorylation of nucleus_Foxo1_phosphorylated_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016311" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="dephosphorylation of dnabound_Foxo1_phosphorylated_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016311" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="polyubiquination of cytoplasm_Foxo1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:11:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0000209" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="kub" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="polyubiquination of nucleus_Foxo1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0000209" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="kub" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="polyubiquination of dnabound_Foxo1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:16:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0000209" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4987" name="kub" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="polyubiquination of cytoplasm_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:16:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0000209" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4986" name="kub" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="polyubiquination of nucleus_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0000209" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="kub" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="polyubiquination of dnabound_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0000209" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="kub" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="degradation of cytoplasm_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:29:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="kdeg" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="degradation of cytoplasm_Foxo1_Pa1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:29:35Z</dcterms:W3CDTF>
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
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4982" name="kdeg" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="transcription of inr by dnabound_Foxo1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:31:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="transcription of sod2 by dnabound_Foxo1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:31:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4980" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="transcription of inr by dnabound_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:31:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="transcription of sod2 by dnabound_Foxo1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:32:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4978" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="transcription of inr by dnabound_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:31:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4977" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="transcription of sod2 by dnabound_Foxo1_phosphorylated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:32:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4976" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="transcription of inr by dnabound_Foxo1_Pa1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:31:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4975" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="transcription of sod2 by dnabound_Foxo1_Pa1_polyubiquitinated" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:32:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4974" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_90" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="basal transcription of inr" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:11:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006351" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4973" name="v" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="export of inr RNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:30:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051168" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4972" name="kexp" value="0.22"/>
        </ListOfConstants>
        <KineticLaw function="Function_91" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="cyto degradation of inr RNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:32:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4971" name="kmdeg" value="5.622"/>
        </ListOfConstants>
        <KineticLaw function="Function_92" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="translation of inr" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:32:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006412" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4970" name="ktransl" value="1.23"/>
        </ListOfConstants>
        <KineticLaw function="Function_93" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="degradation of Inr protein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:29:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4969" name="kpdeg" value="0.0019"/>
        </ListOfConstants>
        <KineticLaw function="Function_94" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="basal transcription of sod2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:24:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006351" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="v" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="export of sod2 RNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:30:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0051168" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4967" name="kexp" value="0.22"/>
        </ListOfConstants>
        <KineticLaw function="Function_95" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="cyto degradation of sod2 RNA" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T12:40:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4966" name="kmdeg" value="5.622"/>
        </ListOfConstants>
        <KineticLaw function="Function_96" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="translation of sod2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:32:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0006412" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4965" name="ktransl" value="1.23"/>
        </ListOfConstants>
        <KineticLaw function="Function_97" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="degradation of Sod2 protein" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T13:30:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4964" name="kpdeg" value="0.0019"/>
        </ListOfConstants>
        <KineticLaw function="Function_98" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular]" value="8.2999999999999998e-12" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cellsurface]" value="6.4000000000000005e-14" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]" value="1.6500000000000001e-11" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus]" value="4.9999999999999999e-13" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound]" value="1e-13" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[null]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[degr_Foxo1]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_unpolyubiquitinated_unphosphorylated]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_unpolyubiquitinated_unphosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_unpolyubiquitinated_unphosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_polyubiquitinated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_polyubiquitinated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_polyubiquitinated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_polyubiquitinated_phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_polyubiquitinated_phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_polyubiquitinated_phosphorylated]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_unphosphorylated_total]" value="1000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_phosphorylated_total]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_unpolyubiquitinated_total]" value="1000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_polyubiquitinated_total]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[cytoplasm_Foxo1_total]" value="1000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[nucleus_Foxo1_total]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[dnabound_Foxo1_total]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_total]" value="1000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_RNA_Inr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_RNA_Inr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Inr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_RNA_Sod2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_RNA_Sod2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Sod2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[E2F1]" value="100" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[Akt]" value="25000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[SGK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[CDK2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[AMPK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[IKK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[JNK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[PP2A]" value="10000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[CBPP300]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[SIRT1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[E3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[USP7]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[SCF]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[Proteasome]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_total_rate]" value="8.2999999999999998e-12" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[transcription_rate]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kmdeg]" value="5.6219999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kpdeg]" value="0.0019" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdeg]" value="0.0001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdephos]" value="5.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kexp]" value="0.22" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin]" value="5.0000000000000002e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kub1]" value="9.9999999999999995e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kub2]" value="3.0000000000000001e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ksynth]" value="0.0054999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktranscr]" value="0.29999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktransl]" value="1.23" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr1_181818]" value="0.18181800000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr2_0181818]" value="0.018181800000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr3_125]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr4_055]" value="0.055" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr5_25]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr4_55]" value="0.55000000000000004" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[Synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[Synthesis],ParameterGroup=Parameters,Parameter=ksynth" value="0.0054999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ksynth],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1 to nucleus_Foxo1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1 to nucleus_Foxo1],ParameterGroup=Parameters,Parameter=ktr" value="0.18181800000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr1_181818],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1 to cytoplasm_Foxo1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1 to cytoplasm_Foxo1],ParameterGroup=Parameters,Parameter=ktr" value="0.055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr4_055],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1 to dnabound_Foxo1_]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1 to dnabound_Foxo1_],ParameterGroup=Parameters,Parameter=ktr" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr5_25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1 to nucleus_Foxo1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1 to nucleus_Foxo1],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr3_125],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_polyubiquitinated to nucleus_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_polyubiquitinated to nucleus_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktr" value="0.18181800000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr1_181818],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_polyubiquitinated to cytoplasm_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_polyubiquitinated to cytoplasm_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktr" value="0.055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr4_055],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_polyubiquitinated to dnabound_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_polyubiquitinated to dnabound_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktr" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr5_25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_polyubiquitinated to nucleus_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_polyubiquitinated to nucleus_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr3_125],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_phosphorylated to nucleus_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_phosphorylated to nucleus_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=ktr" value="0.018181800000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr2_0181818],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_phosphorylated to cytoplasm_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_phosphorylated to cytoplasm_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=ktr" value="0.55000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr4_55],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_phosphorylated to dnabound_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_phosphorylated to dnabound_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr3_125],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_phosphorylated to nucleus_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_phosphorylated to nucleus_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr3_125],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_phosphorylated_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_phosphorylated_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktr" value="0.018181800000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr2_0181818],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_phosphorylated_polyubiquitinated to cytoplasm_Foxo1_phosphorylated_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_phosphorylated_polyubiquitinated to cytoplasm_Foxo1_phosphorylated_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktr" value="0.55000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr4_55],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_phosphorylated_polyubiquitinated to dnabound_Foxo1_phosphorylated_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_phosphorylated_polyubiquitinated to dnabound_Foxo1_phosphorylated_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr3_125],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_phosphorylated_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_phosphorylated_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktr3_125],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of cytoplasm_Foxo1_not_polyubiquitinated Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of cytoplasm_Foxo1_not_polyubiquitinated Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of nucleus_Foxo1_not_polyubiquitinated by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of nucleus_Foxo1_not_polyubiquitinated by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of dnabound_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of dnabound_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of cytoplasm_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of cytoplasm_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of nucleus_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of nucleus_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of dnabound_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of dnabound_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of cytoplasm_Foxo1 to cytoplasm_Foxo1_phosphorylated by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of cytoplasm_Foxo1 to cytoplasm_Foxo1_phosphorylated by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of nucleus_Foxo1 to nucleus_Foxo1_phosphorylated by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of nucleus_Foxo1 to nucleus_Foxo1_phosphorylated by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of dnabound_Foxo1 to dnabound_Foxo1_phosphorylated by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of dnabound_Foxo1 to dnabound_Foxo1_phosphorylated by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of cytoplasm_Foxo1_polyubiquitinated to cytoplasm_Foxo1_phosphorylated_polyubiquitinated by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of cytoplasm_Foxo1_polyubiquitinated to cytoplasm_Foxo1_phosphorylated_polyubiquitinated by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of nucleus_Foxo1_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinatedby SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of nucleus_Foxo1_polyubiquitinated to nucleus_Foxo1_phosphorylated_polyubiquitinatedby SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of dnabound_Foxo1_polyubiquitinated to dnabound_Foxo1_phosphorylated_polyubiquitinated by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[phosphorylation of dnabound_Foxo1_polyubiquitinated to dnabound_Foxo1_phosphorylated_polyubiquitinated by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kkin],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of cytoplasm_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of cytoplasm_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of nucleus_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of nucleus_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of dnabound_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of dnabound_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of cytoplasm_Foxo1_phosphorylated_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of cytoplasm_Foxo1_phosphorylated_polyubiquitinated],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of nucleus_Foxo1_phosphorylated_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of nucleus_Foxo1_phosphorylated_polyubiquitinated],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of dnabound_Foxo1_phosphorylated_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[dephosphorylation of dnabound_Foxo1_phosphorylated_polyubiquitinated],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdephos],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of cytoplasm_Foxo1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of cytoplasm_Foxo1],ParameterGroup=Parameters,Parameter=kub" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kub1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of nucleus_Foxo1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of nucleus_Foxo1],ParameterGroup=Parameters,Parameter=kub" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kub1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of dnabound_Foxo1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of dnabound_Foxo1],ParameterGroup=Parameters,Parameter=kub" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kub1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of cytoplasm_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of cytoplasm_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=kub" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kub2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of nucleus_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of nucleus_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=kub" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kub2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of dnabound_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[polyubiquination of dnabound_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=kub" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kub2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=kdeg" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdeg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa1_polyubiquitinated],ParameterGroup=Parameters,Parameter=kdeg" value="0.0001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kdeg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktranscr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktranscr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktranscr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktranscr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktranscr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_phosphorylated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_phosphorylated],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktranscr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktranscr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_polyubiquitinated]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_polyubiquitinated],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktranscr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[basal transcription of inr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[basal transcription of inr],ParameterGroup=Parameters,Parameter=v" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[transcription_rate],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[export of inr RNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[export of inr RNA],ParameterGroup=Parameters,Parameter=kexp" value="0.22" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kexp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[cyto degradation of inr RNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[cyto degradation of inr RNA],ParameterGroup=Parameters,Parameter=kmdeg" value="5.6219999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kmdeg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[translation of inr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[translation of inr],ParameterGroup=Parameters,Parameter=ktransl" value="1.23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktransl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of Inr protein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of Inr protein],ParameterGroup=Parameters,Parameter=kpdeg" value="0.0019" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kpdeg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[basal transcription of sod2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[basal transcription of sod2],ParameterGroup=Parameters,Parameter=v" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[transcription_rate],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[export of sod2 RNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[export of sod2 RNA],ParameterGroup=Parameters,Parameter=kexp" value="0.22" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kexp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[cyto degradation of sod2 RNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[cyto degradation of sod2 RNA],ParameterGroup=Parameters,Parameter=kmdeg" value="5.6219999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kmdeg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[translation of sod2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[translation of sod2],ParameterGroup=Parameters,Parameter=ktransl" value="1.23" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[ktransl],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of Sod2 protein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of Sod2 protein],ParameterGroup=Parameters,Parameter=kpdeg" value="0.0019" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Values[kpdeg],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 1000 0 0 0 0 0 0 0 0 0 0 0 0 0 1000 0 1000 0 1000 0 0 1000 8.2999999999999998e-12 0 0 100 25000 0 0 0 0 0 10000 0 0 0 1000 1000 0 8.2999999999999998e-12 6.4000000000000005e-14 1.6500000000000001e-11 4.9999999999999999e-13 1e-13 3 5.6219999999999999 0.0019 0.0001 5.0000000000000002e-05 0.22 5.0000000000000002e-05 9.9999999999999995e-07 3.0000000000000001e-06 0.0054999999999999997 0.29999999999999999 1.23 0.18181800000000001 0.018181800000000001 0.125 0.055 0.25 0.55000000000000004 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="0.071999999999999995"/>
        <Parameter name="Duration" type="float" value="720"/>
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
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
    <PlotSpecification name="Figure 4C red curve" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Foxo1_total_rate]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="#FF0000"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_total_rate],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="pone.0011092.s003.xml">
    <SBMLMap SBMLid="AMPK" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="Akt" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="CBPP300" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="CDK2" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="E2F1" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="E3" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Foxo1_Pa0_tot" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="Foxo1_Pa1_tot" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Foxo1_all" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Foxo1_pUb0_tot" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Foxo1_pUb1_tot" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="IKKb" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="JNK" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="PP2A" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="Proteasome" COPASIkey="Metabolite_41"/>
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
    <SBMLMap SBMLid="R30" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="R31" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="R32" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="R33" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="R34" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="R35" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="R36" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="R37" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="R38" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="R39" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="R4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="R40" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="R41" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="R42" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="R43" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="R44" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="R45" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="R46" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="R47" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="R48" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="R49" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="R5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="R50" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="R51" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="R52" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="R53" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="R54" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="R55" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="R56" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="R57" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="R58" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="R59" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="R6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="R60" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="R61" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="R7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="R8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="R9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="SCF" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="SGK" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="SIRT1" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="USP7" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="cellsurface" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="cytoplasm" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa0_pUb0" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa0_pUb1" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa1_pUb0" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa1_pUb1" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_tot" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="cytoplasm_Inr" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="cytoplasm_RNA_Inr" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="cytoplasm_RNA_Sod2" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="cytoplasm_Sod2" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="degr_Foxo1" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="dnabound" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa0_pUb0" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa0_pUb1" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa1_pUb0" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa1_pUb1" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="dnabound_Foxo1_tot" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="extracellular" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="nucleus" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa0_pUb0" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa0_pUb1" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa1_pUb0" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa1_pUb1" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="nucleus_Foxo1_tot" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="nucleus_RNA_Inr" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="nucleus_RNA_Sod2" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="null" COPASIkey="Metabolite_0"/>
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
