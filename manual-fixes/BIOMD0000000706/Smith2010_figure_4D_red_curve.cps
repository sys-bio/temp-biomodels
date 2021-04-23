<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.23 (Build 184) (http://www.copasi.org) at 2018-06-01 10:55:15 UTC -->
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
    <Function key="Function_41" name="Function for transport cytoplasm_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac0_pUb0*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_250" name="cytoplasm_Foxo1_Pa0_Ac0_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for transport nucleus_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_266" name="nucleus_Foxo1_Pa0_Ac0_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for transport nucleus_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_269" name="nucleus_Foxo1_Pa0_Ac0_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for transport dnabound_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_273" name="dnabound_Foxo1_Pa0_Ac0_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_272" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for transport cytoplasm_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac0_pUb1*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_276" name="cytoplasm_Foxo1_Pa0_Ac0_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for transport nucleus_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa0_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_278" name="nucleus_Foxo1_Pa0_Ac0_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for transport nucleus_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_281" name="nucleus_Foxo1_Pa0_Ac0_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for transport dnabound_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_285" name="dnabound_Foxo1_Pa0_Ac0_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_284" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for transport cytoplasm_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac1_pUb0*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_288" name="cytoplasm_Foxo1_Pa0_Ac1_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_287" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for transport nucleus_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_290" name="nucleus_Foxo1_Pa0_Ac1_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for transport nucleus_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_293" name="nucleus_Foxo1_Pa0_Ac1_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for transport dnabound_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_297" name="dnabound_Foxo1_Pa0_Ac1_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for transport cytoplasm_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac1_pUb1*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_300" name="cytoplasm_Foxo1_Pa0_Ac1_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_299" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for transport nucleus_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa0_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_302" name="nucleus_Foxo1_Pa0_Ac1_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for transport nucleus_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_305" name="nucleus_Foxo1_Pa0_Ac1_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for transport dnabound_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_309" name="dnabound_Foxo1_Pa0_Ac1_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_308" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for transport cytoplasm_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac0_pUb0*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_312" name="cytoplasm_Foxo1_Pa1_Ac0_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for transport nucleus_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_316" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_314" name="nucleus_Foxo1_Pa1_Ac0_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for transport nucleus_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_317" name="nucleus_Foxo1_Pa1_Ac0_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for transport dnabound_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_321" name="dnabound_Foxo1_Pa1_Ac0_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_320" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for transport cytoplasm_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac0_pUb1*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_324" name="cytoplasm_Foxo1_Pa1_Ac0_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_323" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for transport nucleus_Foxo1_Pa1_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac0_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_326" name="nucleus_Foxo1_Pa1_Ac0_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for transport nucleus_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac0_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_329" name="nucleus_Foxo1_Pa1_Ac0_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for transport dnabound_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_333" name="dnabound_Foxo1_Pa1_Ac0_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for transport cytoplasm_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac1_pUb0*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_336" name="cytoplasm_Foxo1_Pa1_Ac1_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for transport nucleus_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_340" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_338" name="nucleus_Foxo1_Pa1_Ac1_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for transport nucleus_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_341" name="nucleus_Foxo1_Pa1_Ac1_pUb0" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for transport dnabound_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_346" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_345" name="dnabound_Foxo1_Pa1_Ac1_pUb0" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_344" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for transport cytoplasm_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac1_pUb1*cytoplasm*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_349" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_348" name="cytoplasm_Foxo1_Pa1_Ac1_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for transport nucleus_Foxo1_Pa1_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac1_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_350" name="nucleus_Foxo1_Pa1_Ac1_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for transport nucleus_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac1_pUb1*nucleus*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="ktr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_353" name="nucleus_Foxo1_Pa1_Ac1_pUb1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for transport dnabound_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*ktr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_357" name="dnabound_Foxo1_Pa1_Ac1_pUb1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_356" name="ktr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0 by Akt" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac0_pUb0*cytoplasm*(Akt*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_360" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_359" name="cytoplasm_Foxo1_Pa0_Ac0_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_362" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by Akt" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_364" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_367" name="nucleus_Foxo1_Pa0_Ac0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by Akt" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_372" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_371" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_370" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_369" name="dnabound_Foxo1_Pa0_Ac0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_368" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by Akt" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac0_pUb1*cytoplasm*(Akt*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_376" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_375" name="cytoplasm_Foxo1_Pa0_Ac0_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_374" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by Akt" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_379" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_378" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_381" name="nucleus_Foxo1_Pa0_Ac0_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by Akt" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_386" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_385" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_384" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_383" name="dnabound_Foxo1_Pa0_Ac0_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_382" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0 by Akt" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac1_pUb0*cytoplasm*(Akt*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_390" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_389" name="cytoplasm_Foxo1_Pa0_Ac1_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_388" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by Akt" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_393" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_392" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_395" name="nucleus_Foxo1_Pa0_Ac1_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by Akt" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_400" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_399" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_398" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_397" name="dnabound_Foxo1_Pa0_Ac1_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by Akt" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac1_pUb1*cytoplasm*(Akt*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_405" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_404" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_403" name="cytoplasm_Foxo1_Pa0_Ac1_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_402" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by Akt" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_408" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_407" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_406" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_409" name="nucleus_Foxo1_Pa0_Ac1_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by Akt" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*(Akt*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_414" name="Akt" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_413" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_412" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_411" name="dnabound_Foxo1_Pa0_Ac1_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0 by SGK" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac0_pUb0*cytoplasm*(SGK*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_419" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_418" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_417" name="cytoplasm_Foxo1_Pa0_Ac0_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_416" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by SGK" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_422" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_421" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_420" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_423" name="nucleus_Foxo1_Pa0_Ac0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by SGK" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_428" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_427" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_426" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_425" name="dnabound_Foxo1_Pa0_Ac0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_424" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by SGK" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac0_pUb1*cytoplasm*(SGK*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_433" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_432" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_431" name="cytoplasm_Foxo1_Pa0_Ac0_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_430" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SGK" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_436" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_435" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_434" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_437" name="nucleus_Foxo1_Pa0_Ac0_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SGK" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_442" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_441" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_440" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_439" name="dnabound_Foxo1_Pa0_Ac0_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_438" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0 by SGK" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac1_pUb0*cytoplasm*(SGK*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_447" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_446" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_445" name="cytoplasm_Foxo1_Pa0_Ac1_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_444" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="Function for conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by SGK" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_450" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_449" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_448" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_451" name="nucleus_Foxo1_Pa0_Ac1_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="Function for conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by SGK" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_455" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_454" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_453" name="dnabound_Foxo1_Pa0_Ac1_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_452" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by SGK" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac1_pUb1*cytoplasm*(SGK*cytoplasm)*kkin/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_461" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_460" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_459" name="cytoplasm_Foxo1_Pa0_Ac1_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_458" name="kkin" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="Function for conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by SGK" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_464" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_463" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_462" name="kkin" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_457" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_465" name="nucleus_Foxo1_Pa0_Ac1_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="Function for conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by SGK" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*(SGK*cytoplasm)*kkin
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_470" name="SGK" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_469" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_468" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_467" name="dnabound_Foxo1_Pa0_Ac1_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_466" name="kkin" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="Function for conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb0 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac0_pUb0*cytoplasm*(PP2A*cytoplasm)*kdephos/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_475" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_474" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_473" name="cytoplasm_Foxo1_Pa1_Ac0_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_472" name="kdephos" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="Function for conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_478" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_477" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_476" name="kdephos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_471" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_479" name="nucleus_Foxo1_Pa1_Ac0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="Function for conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_484" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_483" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_482" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_481" name="dnabound_Foxo1_Pa1_Ac0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_480" name="kdephos" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="Function for conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb1 to cytoplasm_Foxo1_Pa0_Ac0_pUb1 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac0_pUb1*cytoplasm*(PP2A*cytoplasm)*kdephos/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_489" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_488" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_487" name="cytoplasm_Foxo1_Pa1_Ac0_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_486" name="kdephos" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="Function for conversion of nucleus_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac0_pUb1*nucleus*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_492" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_491" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_490" name="kdephos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_493" name="nucleus_Foxo1_Pa1_Ac0_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="Function for conversion of dnabound_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_498" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_497" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_496" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_495" name="dnabound_Foxo1_Pa1_Ac0_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_494" name="kdephos" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="Function for conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb0 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac1_pUb0*cytoplasm*(PP2A*cytoplasm)*kdephos/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_503" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_502" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_501" name="cytoplasm_Foxo1_Pa1_Ac1_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_500" name="kdephos" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="Function for conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_506" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_505" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_504" name="kdephos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_499" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_507" name="nucleus_Foxo1_Pa1_Ac1_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="Function for conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_512" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_511" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_510" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_509" name="dnabound_Foxo1_Pa1_Ac1_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_508" name="kdephos" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="Function for conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb1 to cytoplasm_Foxo1_Pa0_Ac1_pUb1 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac1_pUb1*cytoplasm*(PP2A*cytoplasm)*kdephos/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_517" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_516" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_515" name="cytoplasm_Foxo1_Pa1_Ac1_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_514" name="kdephos" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="Function for conversion of nucleus_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac1_pUb1*nucleus*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_520" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_519" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_518" name="kdephos" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_513" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_521" name="nucleus_Foxo1_Pa1_Ac1_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="Function for conversion of dnabound_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1 by PP2A" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*(PP2A*cytoplasm)*kdephos
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_526" name="PP2A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_525" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_524" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_523" name="dnabound_Foxo1_Pa1_Ac1_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_522" name="kdephos" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="Function for conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0 by CBPP300" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*(CBPP300*cytoplasm)*kacet
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_531" name="CBPP300" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_530" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_529" name="kacet" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_527" name="nucleus_Foxo1_Pa0_Ac0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="Function for conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0 by CBPP300" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*(CBPP300*cytoplasm)*kacet
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_536" name="CBPP300" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_535" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_534" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_533" name="dnabound_Foxo1_Pa0_Ac0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_532" name="kacet" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="Function for conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1 by CBPP300" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb1*nucleus*(CBPP300*cytoplasm)*kacet
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_541" name="CBPP300" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_540" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_539" name="kacet" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_538" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_537" name="nucleus_Foxo1_Pa0_Ac0_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="Function for conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1 by CBPP300" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*(CBPP300*cytoplasm)*kacet
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_546" name="CBPP300" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_545" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_544" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_543" name="dnabound_Foxo1_Pa0_Ac0_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_542" name="kacet" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="Function for conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0 by SIRT1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*(SIRT1*cytoplasm)*kdeac
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_551" name="SIRT1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_550" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_549" name="kdeac" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_548" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_547" name="nucleus_Foxo1_Pa0_Ac1_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="Function for conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0 by SIRT1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*(SIRT1*cytoplasm)*kdeac
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_556" name="SIRT1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_555" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_554" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_553" name="dnabound_Foxo1_Pa0_Ac1_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_552" name="kdeac" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="Function for conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1 by SIRT1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb1*nucleus*(SIRT1*cytoplasm)*kdeac
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_561" name="SIRT1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_560" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_559" name="kdeac" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_558" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_557" name="nucleus_Foxo1_Pa0_Ac1_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="Function for conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1 by SIRT1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*(SIRT1*cytoplasm)*kdeac
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_566" name="SIRT1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_565" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_564" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_563" name="dnabound_Foxo1_Pa0_Ac1_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_562" name="kdeac" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="Function for conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by CBPP300" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*(CBPP300*cytoplasm)*kacet
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_571" name="CBPP300" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_570" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_569" name="kacet" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_568" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_567" name="nucleus_Foxo1_Pa1_Ac0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="Function for conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by CBPP300" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*(CBPP300*cytoplasm)*kacet
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_576" name="CBPP300" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_575" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_574" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_573" name="dnabound_Foxo1_Pa1_Ac0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_572" name="kacet" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="Function for conversion of nucleus_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by CBPP300" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac0_pUb1*nucleus*(CBPP300*cytoplasm)*kacet
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_581" name="CBPP300" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_580" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_579" name="kacet" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_578" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_577" name="nucleus_Foxo1_Pa1_Ac0_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="Function for conversion of dnabound_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by CBPP300" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*(CBPP300*cytoplasm)*kacet
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_586" name="CBPP300" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_585" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_584" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_583" name="dnabound_Foxo1_Pa1_Ac0_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_582" name="kacet" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="Function for conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by SIRT1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*(SIRT1*cytoplasm)*kdeac
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_591" name="SIRT1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_590" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_589" name="kdeac" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_588" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_587" name="nucleus_Foxo1_Pa1_Ac1_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="Function for conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by SIRT1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*(SIRT1*cytoplasm)*kdeac
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_596" name="SIRT1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_595" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_594" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_593" name="dnabound_Foxo1_Pa1_Ac1_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_592" name="kdeac" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="Function for conversion of nucleus_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SIRT1" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac1_pUb1*nucleus*(SIRT1*cytoplasm)*kdeac
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_601" name="SIRT1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_600" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_599" name="kdeac" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_597" name="nucleus_Foxo1_Pa1_Ac1_pUb1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_124" name="Function for conversion of dnabound_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SIRT1" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*(SIRT1*cytoplasm)*kdeac
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_606" name="SIRT1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_605" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_604" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_603" name="dnabound_Foxo1_Pa1_Ac1_pUb1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_602" name="kdeac" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_125" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac0_pUb0*cytoplasm*(SCF*cytoplasm)*kub/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_611" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_610" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_609" name="cytoplasm_Foxo1_Pa0_Ac0_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_608" name="kub" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="Function for conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac0_pUb0*nucleus*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_614" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_613" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_612" name="kub" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_607" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_615" name="nucleus_Foxo1_Pa0_Ac0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_127" name="Function for conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_620" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_619" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_618" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_617" name="dnabound_Foxo1_Pa0_Ac0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_616" name="kub" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_128" name="Function for conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac1_pUb0*cytoplasm*(SCF*cytoplasm)*kub/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_625" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_624" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_623" name="cytoplasm_Foxo1_Pa0_Ac1_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_622" name="kub" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_129" name="Function for conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa0_Ac1_pUb0*nucleus*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_628" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_627" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_626" name="kub" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_621" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_629" name="nucleus_Foxo1_Pa0_Ac1_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_130" name="Function for conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_634" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_633" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_632" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_631" name="dnabound_Foxo1_Pa0_Ac1_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_630" name="kub" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_131" name="Function for conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac0_pUb0*cytoplasm*(SCF*cytoplasm)*kub/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_639" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_638" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_637" name="cytoplasm_Foxo1_Pa1_Ac0_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_636" name="kub" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_132" name="Function for conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac0_pUb0*nucleus*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_642" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_641" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_640" name="kub" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_635" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_643" name="nucleus_Foxo1_Pa1_Ac0_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_133" name="Function for conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_648" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_647" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_646" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_645" name="dnabound_Foxo1_Pa1_Ac0_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_644" name="kub" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_134" name="Function for conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac1_pUb0*cytoplasm*(SCF*cytoplasm)*kub/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_653" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_652" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_651" name="cytoplasm_Foxo1_Pa1_Ac1_pUb0" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_650" name="kub" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_135" name="Function for conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        nucleus_Foxo1_Pa1_Ac1_pUb0*nucleus*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_656" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_655" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_654" name="kub" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="nucleus" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_657" name="nucleus_Foxo1_Pa1_Ac1_pUb0" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_136" name="Function for conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb1 by SCF" type="UserDefined" reversible="false">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*(SCF*cytoplasm)*kub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_662" name="SCF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_661" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_660" name="dnabound" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_659" name="dnabound_Foxo1_Pa1_Ac1_pUb0" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_658" name="kub" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_137" name="Function for degradation of cytoplasm_Foxo1_Pa0_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac0_pUb1*cytoplasm*(Proteasome*cytoplasm)*kdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_667" name="Proteasome" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_666" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_665" name="cytoplasm_Foxo1_Pa0_Ac0_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_664" name="kdeg" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_138" name="Function for degradation of cytoplasm_Foxo1_Pa0_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa0_Ac1_pUb1*cytoplasm*(Proteasome*cytoplasm)*kdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_670" name="Proteasome" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_669" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_668" name="cytoplasm_Foxo1_Pa0_Ac1_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_663" name="kdeg" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_139" name="Function for degradation of cytoplasm_Foxo1_Pa1_Ac0_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac0_pUb1*cytoplasm*(Proteasome*cytoplasm)*kdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_674" name="Proteasome" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_673" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_672" name="cytoplasm_Foxo1_Pa1_Ac0_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_671" name="kdeg" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_140" name="Function for degradation of cytoplasm_Foxo1_Pa1_Ac1_pUb1" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Foxo1_Pa1_Ac1_pUb1*cytoplasm*(Proteasome*cytoplasm)*kdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_678" name="Proteasome" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_677" name="cytoplasm" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_676" name="cytoplasm_Foxo1_Pa1_Ac1_pUb1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_675" name="kdeg" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_141" name="Function for transcription of inr by dnabound_Foxo1_Pa0_Ac0_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_682" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_681" name="dnabound_Foxo1_Pa0_Ac0_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_680" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_142" name="Function for transcription of sod2 by dnabound_Foxo1_Pa0_Ac0_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_684" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_683" name="dnabound_Foxo1_Pa0_Ac0_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_679" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_143" name="Function for transcription of inr by dnabound_Foxo1_Pa0_Ac0_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_687" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_686" name="dnabound_Foxo1_Pa0_Ac0_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_685" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_144" name="Function for transcription of sod2 by dnabound_Foxo1_Pa0_Ac0_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_Ac0_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_690" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_689" name="dnabound_Foxo1_Pa0_Ac0_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_688" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_145" name="Function for transcription of inr by dnabound_Foxo1_Pa0_Ac1_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_693" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_692" name="dnabound_Foxo1_Pa0_Ac1_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_691" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_146" name="Function for transcription of sod2 by dnabound_Foxo1_Pa0_Ac1_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_696" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_695" name="dnabound_Foxo1_Pa0_Ac1_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_694" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_147" name="Function for transcription of inr by dnabound_Foxo1_Pa0_Ac1_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_699" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_698" name="dnabound_Foxo1_Pa0_Ac1_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_697" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_148" name="Function for transcription of sod2 by dnabound_Foxo1_Pa0_Ac1_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa0_Ac1_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_702" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_701" name="dnabound_Foxo1_Pa0_Ac1_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_700" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_149" name="Function for transcription of inr by dnabound_Foxo1_Pa1_Ac0_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_705" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_704" name="dnabound_Foxo1_Pa1_Ac0_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_703" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_150" name="Function for transcription of sod2 by dnabound_Foxo1_Pa1_Ac0_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_708" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_707" name="dnabound_Foxo1_Pa1_Ac0_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_706" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_151" name="Function for transcription of inr by dnabound_Foxo1_Pa1_Ac0_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_711" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_710" name="dnabound_Foxo1_Pa1_Ac0_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_709" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_152" name="Function for transcription of sod2 by dnabound_Foxo1_Pa1_Ac0_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_Ac0_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_714" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_713" name="dnabound_Foxo1_Pa1_Ac0_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_712" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_153" name="Function for transcription of inr by dnabound_Foxo1_Pa1_Ac1_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_717" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_716" name="dnabound_Foxo1_Pa1_Ac1_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_715" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_154" name="Function for transcription of sod2 by dnabound_Foxo1_Pa1_Ac1_pUb0" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb0*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_720" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_719" name="dnabound_Foxo1_Pa1_Ac1_pUb0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_718" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_155" name="Function for transcription of inr by dnabound_Foxo1_Pa1_Ac1_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_723" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_722" name="dnabound_Foxo1_Pa1_Ac1_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_721" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_156" name="Function for transcription of sod2 by dnabound_Foxo1_Pa1_Ac1_pUb1" type="UserDefined" reversible="unspecified">
      <Expression>
        dnabound_Foxo1_Pa1_Ac1_pUb1*dnabound*ktranscr
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_726" name="dnabound" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_725" name="dnabound_Foxo1_Pa1_Ac1_pUb1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_724" name="ktranscr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_157" name="Function for export of inr RNA" type="UserDefined" reversible="false">
      <Expression>
        nucleus_RNA_Inr*nucleus*kexp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_729" name="kexp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_728" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_727" name="nucleus_RNA_Inr" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_158" name="Function for cyto degr of inr RNA" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_RNA_Inr*cytoplasm*kmdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_732" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_731" name="cytoplasm_RNA_Inr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_730" name="kmdeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_159" name="Function for translation of inr" type="UserDefined" reversible="unspecified">
      <Expression>
        cytoplasm_RNA_Inr*cytoplasm*ktransl/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_735" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_734" name="cytoplasm_RNA_Inr" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_733" name="ktransl" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_160" name="Function for degradation of Inr protein" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Inr*cytoplasm*kpdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_738" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_737" name="cytoplasm_Inr" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_736" name="kpdeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_161" name="Function for export of sod2 RNA" type="UserDefined" reversible="false">
      <Expression>
        nucleus_RNA_Sod2*nucleus*kexp
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_741" name="kexp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_740" name="nucleus" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_739" name="nucleus_RNA_Sod2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_162" name="Function for cyto degr of sod2 RNA" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_RNA_Sod2*cytoplasm*kmdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_744" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_743" name="cytoplasm_RNA_Sod2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_742" name="kmdeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_163" name="Function for translation of sod2" type="UserDefined" reversible="unspecified">
      <Expression>
        cytoplasm_RNA_Sod2*cytoplasm*ktransl/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_747" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_746" name="cytoplasm_RNA_Sod2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_745" name="ktransl" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_164" name="Function for degradation of Sod2 protein" type="UserDefined" reversible="false">
      <Expression>
        cytoplasm_Sod2*cytoplasm*kpdeg/cytoplasm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_750" name="cytoplasm" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_749" name="cytoplasm_Sod2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_748" name="kpdeg" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways" simulationType="time" timeUnit="min" volumeUnit="ml" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-24T10:31:57Z</dcterms:W3CDTF>
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
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="extracellular" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
      <Compartment key="Compartment_1" name="cellsurface" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
      <Compartment key="Compartment_2" name="cytoplasm" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
      <Compartment key="Compartment_3" name="nucleus" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-31T17:01:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_4" name="dnabound" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-31T17:01:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="null" simulationType="fixed" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_1" name="degr_Foxo1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_2" name="cytoplasm_Foxo1_Pa0_Ac0_pUb0" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_3" name="nucleus_Foxo1_Pa0_Ac0_pUb0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_4" name="dnabound_Foxo1_Pa0_Ac0_pUb0" simulationType="reactions" compartment="Compartment_4" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_5" name="cytoplasm_Foxo1_Pa0_Ac0_pUb1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_6" name="nucleus_Foxo1_Pa0_Ac0_pUb1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_7" name="dnabound_Foxo1_Pa0_Ac0_pUb1" simulationType="reactions" compartment="Compartment_4" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_8" name="cytoplasm_Foxo1_Pa0_Ac1_pUb0" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_9" name="nucleus_Foxo1_Pa0_Ac1_pUb0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_10" name="dnabound_Foxo1_Pa0_Ac1_pUb0" simulationType="reactions" compartment="Compartment_4" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_11" name="cytoplasm_Foxo1_Pa0_Ac1_pUb1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_12" name="nucleus_Foxo1_Pa0_Ac1_pUb1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_13" name="dnabound_Foxo1_Pa0_Ac1_pUb1" simulationType="reactions" compartment="Compartment_4" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_14" name="cytoplasm_Foxo1_Pa1_Ac0_pUb0" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_15" name="nucleus_Foxo1_Pa1_Ac0_pUb0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_16" name="dnabound_Foxo1_Pa1_Ac0_pUb0" simulationType="reactions" compartment="Compartment_4" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_17" name="cytoplasm_Foxo1_Pa1_Ac0_pUb1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_18" name="nucleus_Foxo1_Pa1_Ac0_pUb1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_19" name="dnabound_Foxo1_Pa1_Ac0_pUb1" simulationType="reactions" compartment="Compartment_4" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_20" name="cytoplasm_Foxo1_Pa1_Ac1_pUb0" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_21" name="nucleus_Foxo1_Pa1_Ac1_pUb0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_22" name="dnabound_Foxo1_Pa1_Ac1_pUb0" simulationType="reactions" compartment="Compartment_4" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_23" name="cytoplasm_Foxo1_Pa1_Ac1_pUb1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_24" name="nucleus_Foxo1_Pa1_Ac1_pUb1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_25" name="dnabound_Foxo1_Pa1_Ac1_pUb1" simulationType="reactions" compartment="Compartment_4" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Foxo1_Pa0_tot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-31T17:00:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Foxo1_Pa1_tot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Foxo1_Ac0_tot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Foxo1_Ac1_tot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Foxo1_pUb0_tot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Foxo1_pUb1_tot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="cytoplasm_Foxo1_tot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="nucleus_Foxo1_tot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="dnabound_Foxo1_tot" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb1],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb0],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb1],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Foxo1_all" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <Expression>
          (&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[cytoplasm_Foxo1_tot],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[nucleus_Foxo1_tot],Reference=ParticleNumber>+&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[dnabound_Foxo1_tot],Reference=ParticleNumber>)/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Reference=Volume>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="nucleus_RNA_Inr" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_37" name="cytoplasm_RNA_Inr" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_38" name="cytoplasm_Inr" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_39" name="nucleus_RNA_Sod2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_40" name="cytoplasm_RNA_Sod2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_41" name="cytoplasm_Sod2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_42" name="E2F1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Akt" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_44" name="SGK" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_45" name="CDK2" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_46" name="AMPK" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_47" name="IKKb" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_48" name="JNK" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_49" name="PP2A" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_50" name="CBPP300" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_51" name="SIRT1" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_52" name="E3" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_53" name="USP7" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_54" name="SCF" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Proteasome" simulationType="reactions" compartment="Compartment_2" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_56" name="Foxo1_all_rate" simulationType="assignment" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-05-31T16:58:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_all],Reference=Concentration>/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_all],Reference=InitialConcentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="Synthesis" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5024" name="ksynth" value="0.0055"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_5024"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="transport cytoplasm_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5023"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="transport nucleus_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5022"/>
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
      <Reaction key="Reaction_3" name="transport nucleus_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5021"/>
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
      <Reaction key="Reaction_4" name="transport dnabound_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5020"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="transport cytoplasm_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5019"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="transport nucleus_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa0_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5018"/>
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
      <Reaction key="Reaction_7" name="transport nucleus_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5017"/>
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
      <Reaction key="Reaction_8" name="transport dnabound_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5016"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="transport cytoplasm_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5015" name="ktr" value="0.181818"/>
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
              <SourceParameter reference="Parameter_5015"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="transport nucleus_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5014" name="ktr" value="0.055"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_5014"/>
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
      <Reaction key="Reaction_11" name="transport nucleus_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5013"/>
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
      <Reaction key="Reaction_12" name="transport dnabound_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5012"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="transport cytoplasm_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5011" name="ktr" value="0.181818"/>
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
              <SourceParameter reference="Parameter_5011"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="transport nucleus_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa0_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5010" name="ktr" value="0.055"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_5010"/>
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
      <Reaction key="Reaction_15" name="transport nucleus_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5009"/>
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
      <Reaction key="Reaction_16" name="transport dnabound_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
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
              <SourceParameter reference="Parameter_5008"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="transport cytoplasm_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5007" name="ktr" value="0.0181818"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_5007"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="transport nucleus_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="ktr" value="0.55"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Parameter_5006"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="transport nucleus_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_5005"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="transport dnabound_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Parameter_5004"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="transport cytoplasm_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5003" name="ktr" value="0.0181818"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_5003"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="transport nucleus_Foxo1_Pa1_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5002" name="ktr" value="0.55"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Parameter_5002"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="transport nucleus_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_5001"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="transport dnabound_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_5000"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="transport cytoplasm_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4999" name="ktr" value="0.0181818"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_4999"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="transport nucleus_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4998" name="ktr" value="0.55"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Parameter_4998"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="transport nucleus_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="ktr" value="0.0625"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Parameter_4997"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="transport dnabound_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Parameter_4996"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="transport cytoplasm_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4995" name="ktr" value="0.0181818"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_4995"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="transport nucleus_Foxo1_Pa1_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4994" name="ktr" value="0.55"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Parameter_4994"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="transport nucleus_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4993" name="ktr" value="0.0625"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_4993"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="transport dnabound_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="ktr" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Parameter_4992"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Parameter_4991"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4990" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Parameter_4990"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Parameter_4989"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Parameter_4988"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4987" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_4987"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4986" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Parameter_4986"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Parameter_4985"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Parameter_4984"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Parameter_4983"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4982" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Parameter_4982"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Parameter_4981"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by Akt" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4980" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Parameter_4980"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4979" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Parameter_4979"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4978" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Parameter_4978"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4977" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Parameter_4977"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4976" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Parameter_4976"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4975" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Parameter_4975"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4974" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_90" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Parameter_4974"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4973" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_91" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Parameter_4973"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4972" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_92" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Parameter_4972"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4971" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_93" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Parameter_4971"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4970" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_94" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Parameter_4970"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4969" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_95" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Parameter_4969"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by SGK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="kkin" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_96" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Parameter_4968"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb0 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4967" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_97" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Parameter_4967"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4966" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_98" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Parameter_4966"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4965" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_99" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Parameter_4965"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb1 to cytoplasm_Foxo1_Pa0_Ac0_pUb1 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4964" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_100" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Parameter_4964"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="conversion of nucleus_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4963" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_101" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Parameter_4963"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="conversion of dnabound_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4962" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_102" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="Parameter_4962"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb0 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4961" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_103" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Parameter_4961"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4960" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_104" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Parameter_4960"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4959" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_105" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Parameter_4959"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb1 to cytoplasm_Foxo1_Pa0_Ac1_pUb1 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4958" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_106" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="Parameter_4958"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="conversion of nucleus_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4957" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_107" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Parameter_4957"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="conversion of dnabound_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1 by PP2A" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4956" name="kdephos" value="5e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_108" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Parameter_4956"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0 by CBPP300" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4955" name="kacet" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_109" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Parameter_4955"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0 by CBPP300" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4954" name="kacet" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_110" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Parameter_4954"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1 by CBPP300" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4953" name="kacet" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_111" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_4953"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1 by CBPP300" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4952" name="kacet" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_112" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_4952"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0 by SIRT1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4951" name="kdeac" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_113" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="Parameter_4951"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0 by SIRT1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4950" name="kdeac" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_114" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_4950"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1 by SIRT1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4949" name="kdeac" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_115" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Parameter_4949"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1 by SIRT1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4948" name="kdeac" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_116" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Parameter_4948"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by CBPP300" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4947" name="kacet" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_117" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Parameter_4947"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by CBPP300" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4946" name="kacet" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_118" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Parameter_4946"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="conversion of nucleus_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by CBPP300" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4945" name="kacet" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_119" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Parameter_4945"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="conversion of dnabound_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by CBPP300" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4944" name="kacet" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_120" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Parameter_4944"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by SIRT1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4943" name="kdeac" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_121" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Parameter_4943"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by SIRT1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4942" name="kdeac" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_122" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Parameter_4942"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="conversion of nucleus_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SIRT1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4941" name="kdeac" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_123" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="Parameter_4941"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="conversion of dnabound_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SIRT1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4940" name="kdeac" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_124" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="Parameter_4940"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4939" name="kub" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_125" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Parameter_4939"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4938" name="kub" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_126" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="Parameter_4938"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4937" name="kub" value="1e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_127" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Parameter_4937"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4936" name="kub" value="3.33333e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_128" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="Parameter_4936"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4935" name="kub" value="3.33333e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_129" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="Parameter_4935"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4934" name="kub" value="3.33333e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_130" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Parameter_4934"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4933" name="kub" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_131" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="Parameter_4933"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4932" name="kub" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_132" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="Parameter_4932"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4931" name="kub" value="3e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_133" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="Parameter_4931"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4930" name="kub" value="1e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_134" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Parameter_4930"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4929" name="kub" value="1e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_135" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_656">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="Parameter_4929"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_657">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb1 by SCF" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4928" name="kub" value="1e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_136" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="Parameter_4928"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="degradation of cytoplasm_Foxo1_Pa0_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4927" name="kdeg" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_137" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="Parameter_4927"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="degradation of cytoplasm_Foxo1_Pa0_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4926" name="kdeg" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_138" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="Parameter_4926"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="degradation of cytoplasm_Foxo1_Pa1_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4925" name="kdeg" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_139" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Parameter_4925"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="degradation of cytoplasm_Foxo1_Pa1_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4924" name="kdeg" value="0.0001"/>
        </ListOfConstants>
        <KineticLaw function="Function_140" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Parameter_4924"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="transcription of inr by dnabound_Foxo1_Pa0_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4923" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_141" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="Parameter_4923"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="transcription of sod2 by dnabound_Foxo1_Pa0_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4922" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_142" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="Parameter_4922"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="transcription of inr by dnabound_Foxo1_Pa0_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4921" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_143" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="Parameter_4921"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="transcription of sod2 by dnabound_Foxo1_Pa0_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4920" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_144" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_690">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Parameter_4920"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="transcription of inr by dnabound_Foxo1_Pa0_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4919" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_145" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="Parameter_4919"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="transcription of sod2 by dnabound_Foxo1_Pa0_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4918" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_146" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="Parameter_4918"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="transcription of inr by dnabound_Foxo1_Pa0_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4917" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_147" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="Parameter_4917"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="transcription of sod2 by dnabound_Foxo1_Pa0_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4916" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_148" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="Parameter_4916"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="transcription of inr by dnabound_Foxo1_Pa1_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4915" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_149" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="Parameter_4915"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="transcription of sod2 by dnabound_Foxo1_Pa1_Ac0_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4914" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_150" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="Parameter_4914"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="transcription of inr by dnabound_Foxo1_Pa1_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4913" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_151" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="Parameter_4913"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="transcription of sod2 by dnabound_Foxo1_Pa1_Ac0_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4912" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_152" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="Parameter_4912"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="transcription of inr by dnabound_Foxo1_Pa1_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4911" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_153" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="Parameter_4911"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="transcription of sod2 by dnabound_Foxo1_Pa1_Ac1_pUb0" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4910" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_154" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Parameter_4910"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="transcription of inr by dnabound_Foxo1_Pa1_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4909" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_155" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="Parameter_4909"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="transcription of sod2 by dnabound_Foxo1_Pa1_Ac1_pUb1" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4908" name="ktranscr" value="0.3"/>
        </ListOfConstants>
        <KineticLaw function="Function_156" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Parameter_4908"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="basal transcription of inr" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4907" name="v" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4907"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="export of inr RNA" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4906" name="kexp" value="0.22"/>
        </ListOfConstants>
        <KineticLaw function="Function_157" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Parameter_4906"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="cyto degr of inr RNA" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4905" name="kmdeg" value="5.622"/>
        </ListOfConstants>
        <KineticLaw function="Function_158" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_730">
              <SourceParameter reference="Parameter_4905"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="translation of inr" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4904" name="ktransl" value="1.23"/>
        </ListOfConstants>
        <KineticLaw function="Function_159" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="Parameter_4904"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="degradation of Inr protein" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4903" name="kpdeg" value="0.0019"/>
        </ListOfConstants>
        <KineticLaw function="Function_160" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_738">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_737">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="Parameter_4903"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="basal transcription of sod2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4902" name="v" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4902"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="export of sod2 RNA" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4901" name="kexp" value="0.22"/>
        </ListOfConstants>
        <KineticLaw function="Function_161" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="Parameter_4901"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_740">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_739">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="cyto degr of sod2 RNA" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4900" name="kmdeg" value="5.622"/>
        </ListOfConstants>
        <KineticLaw function="Function_162" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_744">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_743">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_742">
              <SourceParameter reference="Parameter_4900"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="translation of sod2" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4899" name="ktransl" value="1.23"/>
        </ListOfConstants>
        <KineticLaw function="Function_163" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_745">
              <SourceParameter reference="Parameter_4899"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="degradation of Sod2 protein" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4898" name="kpdeg" value="0.0019"/>
        </ListOfConstants>
        <KineticLaw function="Function_164" unitType="Default" scalingCompartment="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_750">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="Parameter_4898"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="event_0000001" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Reference=Time> ge 60
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_43">
            <Expression>
              100000/&lt;CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Reference=Volume>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
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
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[degr_Foxo1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb0]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac0_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac0_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac0_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa0_Ac1_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa0_Ac1_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa0_Ac1_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac0_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac0_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac0_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb0]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Foxo1_Pa1_Ac1_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_Foxo1_Pa1_Ac1_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[dnabound],Vector=Metabolites[dnabound_Foxo1_Pa1_Ac1_pUb1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_Pa0_tot]" value="1000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_Pa1_tot]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_Ac0_tot]" value="1000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_Ac1_tot]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_pUb0_tot]" value="1000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_pUb1_tot]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[cytoplasm_Foxo1_tot]" value="1000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[nucleus_Foxo1_tot]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[dnabound_Foxo1_tot]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_all]" value="1000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_RNA_Inr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_RNA_Inr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Inr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[nucleus],Vector=Metabolites[nucleus_RNA_Sod2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_RNA_Sod2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[cytoplasm_Sod2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[E2F1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[Akt]" value="100" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[SGK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[CDK2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[AMPK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[IKKb]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[JNK]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[PP2A]" value="10000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[CBPP300]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[SIRT1]" value="199.99999999650001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[E3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[USP7]" value="1000.0000000650001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[SCF]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[cytoplasm],Vector=Metabolites[Proteasome]" value="1000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_all_rate]" value="8.2999999999999998e-12" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[Synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[Synthesis],ParameterGroup=Parameters,Parameter=ksynth" value="0.0054999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.18181800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.055" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.18181800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa0_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa0_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.055" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.25" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.18181800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.055" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.18181800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa0_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa0_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.055" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.018181800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.55000000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.018181800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.55000000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.018181800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.55000000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.0625" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport cytoplasm_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.018181800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.55000000000000004" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport nucleus_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.0625" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transport dnabound_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktr" value="0.125" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by Akt]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by Akt],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb0 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb1 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb0 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb1 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by SGK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by SGK],ParameterGroup=Parameters,Parameter=kkin" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb0 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb0 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb1 to cytoplasm_Foxo1_Pa0_Ac0_pUb1 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb1 to cytoplasm_Foxo1_Pa0_Ac0_pUb1 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb0 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb0 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb1 to cytoplasm_Foxo1_Pa0_Ac1_pUb1 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb1 to cytoplasm_Foxo1_Pa0_Ac1_pUb1 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1 by PP2A]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1 by PP2A],ParameterGroup=Parameters,Parameter=kdephos" value="5.0000000000000002e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0 by CBPP300]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb0 by CBPP300],ParameterGroup=Parameters,Parameter=kacet" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0 by CBPP300]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb0 by CBPP300],ParameterGroup=Parameters,Parameter=kacet" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1 by CBPP300]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb1 to nucleus_Foxo1_Pa0_Ac1_pUb1 by CBPP300],ParameterGroup=Parameters,Parameter=kacet" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1 by CBPP300]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb1 to dnabound_Foxo1_Pa0_Ac1_pUb1 by CBPP300],ParameterGroup=Parameters,Parameter=kacet" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0 by SIRT1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb0 by SIRT1],ParameterGroup=Parameters,Parameter=kdeac" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0 by SIRT1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb0 by SIRT1],ParameterGroup=Parameters,Parameter=kdeac" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1 by SIRT1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb1 to nucleus_Foxo1_Pa0_Ac0_pUb1 by SIRT1],ParameterGroup=Parameters,Parameter=kdeac" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1 by SIRT1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb1 to dnabound_Foxo1_Pa0_Ac0_pUb1 by SIRT1],ParameterGroup=Parameters,Parameter=kdeac" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by CBPP300]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb0 by CBPP300],ParameterGroup=Parameters,Parameter=kacet" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by CBPP300]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb0 by CBPP300],ParameterGroup=Parameters,Parameter=kacet" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by CBPP300]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb1 to nucleus_Foxo1_Pa1_Ac1_pUb1 by CBPP300],ParameterGroup=Parameters,Parameter=kacet" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by CBPP300]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb1 to dnabound_Foxo1_Pa1_Ac1_pUb1 by CBPP300],ParameterGroup=Parameters,Parameter=kacet" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by SIRT1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb0 by SIRT1],ParameterGroup=Parameters,Parameter=kdeac" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by SIRT1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb0 by SIRT1],ParameterGroup=Parameters,Parameter=kdeac" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SIRT1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb1 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SIRT1],ParameterGroup=Parameters,Parameter=kdeac" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SIRT1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb1 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SIRT1],ParameterGroup=Parameters,Parameter=kdeac" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac0_pUb0 to cytoplasm_Foxo1_Pa0_Ac0_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac0_pUb0 to nucleus_Foxo1_Pa0_Ac0_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac0_pUb0 to dnabound_Foxo1_Pa0_Ac0_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="9.9999999999999995e-07" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa0_Ac1_pUb0 to cytoplasm_Foxo1_Pa0_Ac1_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="3.3333300000000001e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa0_Ac1_pUb0 to nucleus_Foxo1_Pa0_Ac1_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="3.3333300000000001e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa0_Ac1_pUb0 to dnabound_Foxo1_Pa0_Ac1_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="3.3333300000000001e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac0_pUb0 to cytoplasm_Foxo1_Pa1_Ac0_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac0_pUb0 to nucleus_Foxo1_Pa1_Ac0_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac0_pUb0 to dnabound_Foxo1_Pa1_Ac0_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="3.0000000000000001e-06" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of cytoplasm_Foxo1_Pa1_Ac1_pUb0 to cytoplasm_Foxo1_Pa1_Ac1_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of nucleus_Foxo1_Pa1_Ac1_pUb0 to nucleus_Foxo1_Pa1_Ac1_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb1 by SCF]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[conversion of dnabound_Foxo1_Pa1_Ac1_pUb0 to dnabound_Foxo1_Pa1_Ac1_pUb1 by SCF],ParameterGroup=Parameters,Parameter=kub" value="9.9999999999999995e-08" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa0_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa0_Ac0_pUb1],ParameterGroup=Parameters,Parameter=kdeg" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa0_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa0_Ac1_pUb1],ParameterGroup=Parameters,Parameter=kdeg" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa1_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa1_Ac0_pUb1],ParameterGroup=Parameters,Parameter=kdeg" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa1_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of cytoplasm_Foxo1_Pa1_Ac1_pUb1],ParameterGroup=Parameters,Parameter=kdeg" value="0.0001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa0_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa0_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa0_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa0_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa0_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa0_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa0_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa0_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa0_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa0_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa0_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa0_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa0_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa0_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa0_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa0_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_Ac0_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_Ac0_pUb0],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_Ac0_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_Ac0_pUb1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_Ac1_pUb0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_Ac1_pUb0],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of inr by dnabound_Foxo1_Pa1_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_Ac1_pUb1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[transcription of sod2 by dnabound_Foxo1_Pa1_Ac1_pUb1],ParameterGroup=Parameters,Parameter=ktranscr" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[basal transcription of inr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[basal transcription of inr],ParameterGroup=Parameters,Parameter=v" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[export of inr RNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[export of inr RNA],ParameterGroup=Parameters,Parameter=kexp" value="0.22" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[cyto degr of inr RNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[cyto degr of inr RNA],ParameterGroup=Parameters,Parameter=kmdeg" value="5.6219999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[translation of inr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[translation of inr],ParameterGroup=Parameters,Parameter=ktransl" value="1.23" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of Inr protein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of Inr protein],ParameterGroup=Parameters,Parameter=kpdeg" value="0.0019" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[basal transcription of sod2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[basal transcription of sod2],ParameterGroup=Parameters,Parameter=v" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[export of sod2 RNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[export of sod2 RNA],ParameterGroup=Parameters,Parameter=kexp" value="0.22" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[cyto degr of sod2 RNA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[cyto degr of sod2 RNA],ParameterGroup=Parameters,Parameter=kmdeg" value="5.6219999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[translation of sod2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[translation of sod2],ParameterGroup=Parameters,Parameter=ktransl" value="1.23" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of Sod2 protein]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Reactions[degradation of Sod2 protein],ParameterGroup=Parameters,Parameter=kpdeg" value="0.0019" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1000 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1000 0 1000 0 1000 0 1000 0 0 1000 8.2999999999999998e-12 0 0 100 0 0 0 0 0 10000 1000 199.99999999650001 0 1000.0000000650001 1000 1000 8.2999999999999998e-12 6.4000000000000005e-14 1.6500000000000001e-11 4.9999999999999999e-13 1e-13 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="7.2000000000000002"/>
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
    <PlotSpecification name="Figure 4D" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Foxo1_all_rate]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Smith2010 - Response of FOXO Transcription Factors to Post-Translational Modifications Made by Ageing-Related Signalling Pathways,Vector=Compartments[extracellular],Vector=Metabolites[Foxo1_all_rate],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="pone.0011092.s005.xml">
    <SBMLMap SBMLid="AMPK" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="Akt" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="CBPP300" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="CDK2" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="E2F1" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="E3" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="Foxo1_Ac0_tot" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="Foxo1_Ac1_tot" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Foxo1_Pa0_tot" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Foxo1_Pa1_tot" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="Foxo1_all" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="Foxo1_all_rate" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="Foxo1_pUb0_tot" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="Foxo1_pUb1_tot" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="Function_for_Synthesis" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa0_Ac0_pUb1_by_SCF" COPASIkey="Function_125"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb0_by_Akt" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb0_by_SGK" COPASIkey="Function_85"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb1_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1_by_Akt" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac0_pUb1_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1_by_SGK" COPASIkey="Function_88"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa0_Ac1_pUb1_by_SCF" COPASIkey="Function_128"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb0_by_Akt" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb0_by_SGK" COPASIkey="Function_91"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb1_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1_by_Akt" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa0_Ac1_pUb1_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1_by_SGK" COPASIkey="Function_94"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac0_pUb0_to_cytoplasm_Foxo1_Pa0_Ac0_pUb0_by_PP2A" COPASIkey="Function_97"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1_by_SCF" COPASIkey="Function_131"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac0_pUb1_to_cytoplasm_Foxo1_Pa0_Ac0_pUb1_by_PP2A" COPASIkey="Function_100"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac1_pUb0_to_cytoplasm_Foxo1_Pa0_Ac1_pUb0_by_PP2A" COPASIkey="Function_103"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1_by_SCF" COPASIkey="Function_134"/>
    <SBMLMap SBMLid="Function_for_conversion_of_cytoplasm_Foxo1_Pa1_Ac1_pUb1_to_cytoplasm_Foxo1_Pa0_Ac1_pUb1_by_PP2A" COPASIkey="Function_106"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb1_by_SCF" COPASIkey="Function_127"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb0_by_CBPP300" COPASIkey="Function_110"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0_by_Akt" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0_by_SGK" COPASIkey="Function_87"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa0_Ac1_pUb1_by_CBPP300" COPASIkey="Function_112"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_Akt" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_SGK" COPASIkey="Function_90"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb0_by_SIRT1" COPASIkey="Function_114"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb1_by_SCF" COPASIkey="Function_130"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0_by_Akt" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0_by_SGK" COPASIkey="Function_93"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa0_Ac0_pUb1_by_SIRT1" COPASIkey="Function_116"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_Akt" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_SGK" COPASIkey="Function_96"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb0_by_PP2A" COPASIkey="Function_99"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_SCF" COPASIkey="Function_133"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0_by_CBPP300" COPASIkey="Function_118"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb1_to_dnabound_Foxo1_Pa0_Ac0_pUb1_by_PP2A" COPASIkey="Function_102"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_CBPP300" COPASIkey="Function_120"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb0_by_PP2A" COPASIkey="Function_105"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0_by_SIRT1" COPASIkey="Function_122"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb1_by_SCF" COPASIkey="Function_136"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb1_to_dnabound_Foxo1_Pa0_Ac1_pUb1_by_PP2A" COPASIkey="Function_108"/>
    <SBMLMap SBMLid="Function_for_conversion_of_dnabound_Foxo1_Pa1_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1_by_SIRT1" COPASIkey="Function_124"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb1_by_SCF" COPASIkey="Function_126"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0_by_CBPP300" COPASIkey="Function_109"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0_by_Akt" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0_by_SGK" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1_by_CBPP300" COPASIkey="Function_111"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_Akt" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_SGK" COPASIkey="Function_89"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0_by_SIRT1" COPASIkey="Function_113"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb1_by_SCF" COPASIkey="Function_129"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0_by_Akt" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0_by_SGK" COPASIkey="Function_92"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1_by_SIRT1" COPASIkey="Function_115"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_Akt" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_SGK" COPASIkey="Function_95"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0_by_PP2A" COPASIkey="Function_98"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_SCF" COPASIkey="Function_132"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0_by_CBPP300" COPASIkey="Function_117"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1_by_PP2A" COPASIkey="Function_101"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_CBPP300" COPASIkey="Function_119"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0_by_PP2A" COPASIkey="Function_104"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0_by_SIRT1" COPASIkey="Function_121"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb1_by_SCF" COPASIkey="Function_135"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1_by_PP2A" COPASIkey="Function_107"/>
    <SBMLMap SBMLid="Function_for_conversion_of_nucleus_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1_by_SIRT1" COPASIkey="Function_123"/>
    <SBMLMap SBMLid="Function_for_cyto_degr_of_inr_RNA" COPASIkey="Function_158"/>
    <SBMLMap SBMLid="Function_for_cyto_degr_of_sod2_RNA" COPASIkey="Function_162"/>
    <SBMLMap SBMLid="Function_for_degradation_of_Inr_protein" COPASIkey="Function_160"/>
    <SBMLMap SBMLid="Function_for_degradation_of_Sod2_protein" COPASIkey="Function_164"/>
    <SBMLMap SBMLid="Function_for_degradation_of_cytoplasm_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Function_137"/>
    <SBMLMap SBMLid="Function_for_degradation_of_cytoplasm_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Function_138"/>
    <SBMLMap SBMLid="Function_for_degradation_of_cytoplasm_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Function_139"/>
    <SBMLMap SBMLid="Function_for_degradation_of_cytoplasm_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Function_140"/>
    <SBMLMap SBMLid="Function_for_export_of_inr_RNA" COPASIkey="Function_157"/>
    <SBMLMap SBMLid="Function_for_export_of_sod2_RNA" COPASIkey="Function_161"/>
    <SBMLMap SBMLid="Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac0_pUb0" COPASIkey="Function_141"/>
    <SBMLMap SBMLid="Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Function_143"/>
    <SBMLMap SBMLid="Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac1_pUb0" COPASIkey="Function_145"/>
    <SBMLMap SBMLid="Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Function_147"/>
    <SBMLMap SBMLid="Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac0_pUb0" COPASIkey="Function_149"/>
    <SBMLMap SBMLid="Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Function_151"/>
    <SBMLMap SBMLid="Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac1_pUb0" COPASIkey="Function_153"/>
    <SBMLMap SBMLid="Function_for_transcription_of_inr_by_dnabound_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Function_155"/>
    <SBMLMap SBMLid="Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac0_pUb0" COPASIkey="Function_142"/>
    <SBMLMap SBMLid="Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Function_144"/>
    <SBMLMap SBMLid="Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac1_pUb0" COPASIkey="Function_146"/>
    <SBMLMap SBMLid="Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Function_148"/>
    <SBMLMap SBMLid="Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac0_pUb0" COPASIkey="Function_150"/>
    <SBMLMap SBMLid="Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Function_152"/>
    <SBMLMap SBMLid="Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac1_pUb0" COPASIkey="Function_154"/>
    <SBMLMap SBMLid="Function_for_transcription_of_sod2_by_dnabound_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Function_156"/>
    <SBMLMap SBMLid="Function_for_translation_of_inr" COPASIkey="Function_159"/>
    <SBMLMap SBMLid="Function_for_translation_of_sod2" COPASIkey="Function_163"/>
    <SBMLMap SBMLid="Function_for_transport_cytoplasm_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_transport_cytoplasm_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_transport_cytoplasm_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_transport_cytoplasm_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_transport_cytoplasm_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_transport_cytoplasm_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_transport_cytoplasm_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_transport_cytoplasm_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_for_transport_dnabound_Foxo1_Pa0_Ac0_pUb0_to_nucleus_Foxo1_Pa0_Ac0_pUb0" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_transport_dnabound_Foxo1_Pa0_Ac0_pUb1_to_nucleus_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_transport_dnabound_Foxo1_Pa0_Ac1_pUb0_to_nucleus_Foxo1_Pa0_Ac1_pUb0" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_transport_dnabound_Foxo1_Pa0_Ac1_pUb1_to_nucleus_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_transport_dnabound_Foxo1_Pa1_Ac0_pUb0_to_nucleus_Foxo1_Pa1_Ac0_pUb0" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_transport_dnabound_Foxo1_Pa1_Ac0_pUb1_to_nucleus_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_transport_dnabound_Foxo1_Pa1_Ac1_pUb0_to_nucleus_Foxo1_Pa1_Ac1_pUb0" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_transport_dnabound_Foxo1_Pa1_Ac1_pUb1_to_nucleus_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb0_to_cytoplasm_Foxo1_Pa0_Ac0_pUb0" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb0_to_dnabound_Foxo1_Pa0_Ac0_pUb0" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb1_to_cytoplasm_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa0_Ac0_pUb1_to_dnabound_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb0_to_cytoplasm_Foxo1_Pa0_Ac1_pUb0" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb0_to_dnabound_Foxo1_Pa0_Ac1_pUb0" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb1_to_cytoplasm_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa0_Ac1_pUb1_to_dnabound_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb0_to_cytoplasm_Foxo1_Pa1_Ac0_pUb0" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb0_to_dnabound_Foxo1_Pa1_Ac0_pUb0" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb1_to_cytoplasm_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa1_Ac0_pUb1_to_dnabound_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb0_to_cytoplasm_Foxo1_Pa1_Ac1_pUb0" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb0_to_dnabound_Foxo1_Pa1_Ac1_pUb0" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb1_to_cytoplasm_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_for_transport_nucleus_Foxo1_Pa1_Ac1_pUb1_to_dnabound_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="IKKb" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="JNK" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="PP2A" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="Proteasome" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="R1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="R10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="R100" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="R101" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="R102" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="R103" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="R104" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="R105" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="R106" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="R107" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="R108" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="R109" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="R11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="R110" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="R111" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="R112" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="R113" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="R114" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="R115" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="R116" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="R117" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="R118" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="R119" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="R12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="R120" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="R121" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="R122" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="R123" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="R124" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="R125" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="R126" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="R127" COPASIkey="Reaction_126"/>
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
    <SBMLMap SBMLid="R62" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="R63" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="R64" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="R65" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="R66" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="R67" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="R68" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="R69" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="R7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="R70" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="R71" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="R72" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="R73" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="R74" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="R75" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="R76" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="R77" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="R78" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="R79" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="R8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="R80" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="R81" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="R82" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="R83" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="R84" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="R85" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="R86" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="R87" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="R88" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="R89" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="R9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="R90" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="R91" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="R92" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="R93" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="R94" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="R95" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="R96" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="R97" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="R98" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="R99" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="SCF" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="SGK" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="SIRT1" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="USP7" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="cellsurface" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="cytoplasm" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa0_Ac0_pUb0" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa0_Ac1_pUb0" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa1_Ac0_pUb0" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa1_Ac1_pUb0" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="cytoplasm_Foxo1_tot" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="cytoplasm_Inr" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="cytoplasm_RNA_Inr" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="cytoplasm_RNA_Sod2" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="cytoplasm_Sod2" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="degr_Foxo1" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="dnabound" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa0_Ac0_pUb0" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa0_Ac1_pUb0" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa1_Ac0_pUb0" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa1_Ac1_pUb0" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="dnabound_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="dnabound_Foxo1_tot" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="event_0000001" COPASIkey="Event_0"/>
    <SBMLMap SBMLid="extracellular" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="nucleus" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa0_Ac0_pUb0" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa0_Ac0_pUb1" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa0_Ac1_pUb0" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa0_Ac1_pUb1" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa1_Ac0_pUb0" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa1_Ac0_pUb1" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa1_Ac1_pUb0" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="nucleus_Foxo1_Pa1_Ac1_pUb1" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="nucleus_Foxo1_tot" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="nucleus_RNA_Inr" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="nucleus_RNA_Sod2" COPASIkey="Metabolite_39"/>
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
