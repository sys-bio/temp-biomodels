<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2020-01-03 12:49:30 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for reaction2" type="UserDefined" reversible="false">
      <Expression>
        (X1_0*Y1-X1_1)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_261" name="X1_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_262" name="X1_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_263" name="Y1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="default" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for reaction3" type="UserDefined" reversible="false">
      <Expression>
        (X2_2*b_X2_2-X1_1*X2_0-X2_0*a1_X2_0*(X11_1+X11_3))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="X11_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="X11_3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_269" name="X1_1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="X2_0" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_267" name="X2_2" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="a1_X2_0" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="b_X2_2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_250" name="default" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for reaction4" type="UserDefined" reversible="false">
      <Expression>
        (X1_1*X2_0-X2_1*(X11_1+X11_3))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_277" name="X11_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_276" name="X11_3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_275" name="X1_1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_274" name="X2_0" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="X2_1" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_272" name="default" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for reaction1" type="UserDefined" reversible="false">
      <Expression>
        (X1_1-X1_0*Y1)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="X1_0" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_280" name="X1_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="Y1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="default" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for reaction6" type="UserDefined" reversible="false">
      <Expression>
        (X4_1*b_X4_1+X4_0*(X2_1*a_X4_0+Y3*k_stress_1)*(Y4-1))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="X2_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="X4_0" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_288" name="X4_1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_287" name="Y3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="Y4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="a_X4_0" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="b_X4_1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="default" order="7" role="volume"/>
        <ParameterDescription key="FunctionParameter_282" name="k_stress_1" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for reaction5" type="UserDefined" reversible="false">
      <Expression>
        (X2_1*(X11_1+X11_3)-X2_2*b_X2_2+X2_0*a1_X2_0*(X11_1+X11_3))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="X11_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="X11_3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_296" name="X2_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_295" name="X2_1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_294" name="X2_2" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_293" name="a1_X2_0" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="b_X2_2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="default" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for reaction10" type="UserDefined" reversible="false">
      <Expression>
        (X8_1*b_X8_1+X8_2*b_X8_2+X8_0*(0.82999999999999996*Y5-1)*(X4_1*a2_X8_0+Y3*k_stress_2)+X5_1*X8_0*a1_X8_0*(0.82999999999999996*Y5-1))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="X4_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_310" name="X5_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_309" name="X8_0" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_308" name="X8_1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_307" name="X8_2" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_306" name="Y3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="Y5" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="a1_X8_0" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="a2_X8_0" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="b_X8_1" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="b_X8_2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="default" order="11" role="volume"/>
        <ParameterDescription key="FunctionParameter_299" name="k_stress_2" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for reaction9" type="UserDefined" reversible="false">
      <Expression>
        (X4_1*X5_0*a_X5_0-X5_1*b_X5_1)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="X4_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="X5_0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="X5_1" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_314" name="a_X5_0" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="b_X5_1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="default" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for reaction7" type="UserDefined" reversible="false">
      <Expression>
        (-X4_1*b_X4_1-X4_0*(X2_1*a_X4_0+Y3*k_stress_1)*(Y4-1))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="X2_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_326" name="X4_0" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_325" name="X4_1" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_324" name="Y3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="Y4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="a_X4_0" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="b_X4_1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="default" order="7" role="volume"/>
        <ParameterDescription key="FunctionParameter_319" name="k_stress_1" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for reaction8" type="UserDefined" reversible="false">
      <Expression>
        (X5_1*b_X5_1-X4_1*X5_0*a_X5_0)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="X4_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_332" name="X5_0" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_331" name="X5_1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_330" name="a_X5_0" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="b_X5_1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="default" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for reaction13" type="UserDefined" reversible="false">
      <Expression>
        (-X8_3*b_X8_1-X8_3*b_X8_2-2*X4_1*X8_1*a1_X8_0*(0.82999999999999996*Y5-1)-2*X5_1*X8_2*a2_X8_0*(0.82999999999999996*Y5-1))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="X4_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_343" name="X5_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_342" name="X8_1" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_341" name="X8_2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="X8_3" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_339" name="Y5" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="a1_X8_0" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="a2_X8_0" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="b_X8_1" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="b_X8_2" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="default" order="10" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for reaction11" type="UserDefined" reversible="false">
      <Expression>
        (X8_3*b_X8_2-X8_1*b_X8_1+2*X4_1*X8_1*a1_X8_0*(0.82999999999999996*Y5-1)-X5_1*X8_0*a1_X8_0*(0.82999999999999996*Y5-1))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="X4_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_353" name="X5_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_352" name="X8_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_351" name="X8_1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_350" name="X8_3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_349" name="Y5" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="a1_X8_0" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="b_X8_1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="b_X8_2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="default" order="9" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for reaction12" type="UserDefined" reversible="false">
      <Expression>
        (X8_3*b_X8_1-X8_2*b_X8_2-X8_0*(0.82999999999999996*Y5-1)*(X4_1*a2_X8_0+Y3*k_stress_2)+2*X5_1*X8_2*a2_X8_0*(0.82999999999999996*Y5-1))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="X4_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_365" name="X5_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_364" name="X8_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_363" name="X8_2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_362" name="X8_3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_361" name="Y3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="Y5" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="a2_X8_0" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="b_X8_1" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="b_X8_2" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="default" order="10" role="volume"/>
        <ParameterDescription key="FunctionParameter_355" name="k_stress_2" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for reaction14" type="UserDefined" reversible="false">
      <Expression>
        (X9_2*b_X9_2-X9_0*a2_X9_0*(X8_1+X8_3))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_424" name="X8_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_423" name="X8_3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_422" name="X9_0" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_421" name="X9_2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_420" name="a2_X9_0" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="b_X9_2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="default" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for reaction15" type="UserDefined" reversible="false">
      <Expression>
        (X9_0*a2_X9_0*(X8_1+X8_3)-X9_2*b_X9_2)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_431" name="X8_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_430" name="X8_3" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_429" name="X9_0" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_428" name="X9_2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_427" name="a2_X9_0" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="b_X9_2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="default" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for reaction17_1" type="UserDefined" reversible="false">
      <Expression>
        (X10_3*b_X10_2-X10_1*b_X10_1+X10_0*(Y2*a_X6_Y2+a1_X10_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X10_1*a_X10_1*(X8_1+X8_3))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_860" name="X10_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_861" name="X10_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_862" name="X10_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_863" name="X10_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_864" name="X8_1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_865" name="X8_3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_866" name="X9_0" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_867" name="X9_2" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_868" name="Y2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_869" name="a1_X10_0" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_870" name="a_X10_1" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_871" name="a_X6_Y2" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_872" name="b_X10_1" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_873" name="b_X10_2" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_874" name="default" order="14" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for reaction16_1" type="UserDefined" reversible="false">
      <Expression>
        (X10_1*b_X10_1+X10_2*b_X10_2-X10_0*(Y2*a_X6_Y2+a1_X10_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X10_0*a2_X10_0*(X8_1+X8_3))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_703" name="X10_0" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_704" name="X10_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_705" name="X10_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_706" name="X10_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_775" name="X8_1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_776" name="X8_3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_777" name="X9_0" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_778" name="X9_2" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_853" name="Y2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_854" name="a1_X10_0" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_855" name="a2_X10_0" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_856" name="a_X6_Y2" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_857" name="b_X10_1" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_858" name="b_X10_2" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_859" name="default" order="14" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for reaction21_1" type="UserDefined" reversible="false">
      <Expression>
        (X11_3*b_X11_2-X11_1*b_X11_1+X11_0*(Y2*a_X6_Y2+a1_X11_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-2*X11_1*X5_0*a1_X11_0)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_834" name="X10_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_835" name="X10_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_836" name="X10_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_837" name="X10_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_838" name="X11_0" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_839" name="X11_1" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_840" name="X11_3" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_841" name="X5_0" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_842" name="X9_0" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_843" name="X9_2" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_844" name="Y2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_845" name="a1_X11_0" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_846" name="a_X6_Y2" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_847" name="b_X11_1" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_848" name="b_X11_2" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_849" name="default" order="15" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for reaction19_1" type="UserDefined" reversible="false">
      <Expression>
        (X10_2*(Y2*a_X6_Y2+a_X10_2*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X10_3*b_X10_2-X10_3*b_X10_1+X10_1*a_X10_1*(X8_1+X8_3))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_850" name="X10_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_851" name="X10_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_852" name="X10_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_814" name="X10_3" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_815" name="X8_1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_816" name="X8_3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_817" name="X9_0" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_818" name="X9_2" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_819" name="Y2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_820" name="a_X10_1" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_821" name="a_X10_2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_822" name="a_X6_Y2" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_823" name="b_X10_1" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_824" name="b_X10_2" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_825" name="default" order="14" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for reaction20_1" type="UserDefined" reversible="false">
      <Expression>
        (X11_1*b_X11_1+X11_2*b_X11_2-X11_0*(Y2*a_X6_Y2+a1_X11_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X11_0*X5_0*a2_X11_0)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_826" name="X10_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_827" name="X10_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_828" name="X10_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_829" name="X10_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_830" name="X11_0" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_831" name="X11_1" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_693" name="X11_2" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_692" name="X5_0" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_798" name="X9_0" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_799" name="X9_2" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_800" name="Y2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_801" name="a1_X11_0" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_802" name="a2_X11_0" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_803" name="a_X6_Y2" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_804" name="b_X11_1" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_805" name="b_X11_2" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_806" name="default" order="16" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for reaction22_1" type="UserDefined" reversible="false">
      <Expression>
        (X11_3*b_X11_1-X11_2*b_X11_2-X11_2*(Y2*a_X6_Y2+2*a2_X11_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))+X11_0*X5_0*a2_X11_0)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_807" name="X10_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_808" name="X10_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_809" name="X10_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_810" name="X10_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_811" name="X11_0" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_812" name="X11_2" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_813" name="X11_3" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_779" name="X5_0" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_780" name="X9_0" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_781" name="X9_2" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_782" name="Y2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_783" name="a2_X11_0" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_784" name="a_X6_Y2" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_785" name="b_X11_1" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_786" name="b_X11_2" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_787" name="default" order="15" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for reaction18_1" type="UserDefined" reversible="false">
      <Expression>
        (X10_3*b_X10_1-X10_2*b_X10_2-X10_2*(Y2*a_X6_Y2+a_X10_2*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))+X10_0*a2_X10_0*(X8_1+X8_3))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_788" name="X10_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_789" name="X10_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_790" name="X10_2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_791" name="X10_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_792" name="X8_1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_793" name="X8_3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_794" name="X9_0" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_795" name="X9_2" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_796" name="Y2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_797" name="a2_X10_0" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_758" name="a_X10_2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_759" name="a_X6_Y2" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_760" name="b_X10_1" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_761" name="b_X10_2" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_762" name="default" order="14" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for reaction25_1" type="UserDefined" reversible="false">
      <Expression>
        (X12_0*(Y2*a_X6_Y2+a_X12_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X12_1*b_X12_1)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_771" name="X10_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_770" name="X10_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_769" name="X10_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_768" name="X10_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_767" name="X12_0" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_766" name="X12_1" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_765" name="X9_0" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_764" name="X9_2" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_763" name="Y2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_772" name="a_X12_0" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_773" name="a_X6_Y2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_774" name="b_X12_1" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_741" name="default" order="12" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for reaction23_1" type="UserDefined" reversible="false">
      <Expression>
        (X11_2*(Y2*a_X6_Y2+2*a2_X11_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1))-X11_3*b_X11_2-X11_3*b_X11_1+2*X11_1*X5_0*a1_X11_0)/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_742" name="X10_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_743" name="X10_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_749" name="X10_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_748" name="X10_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_747" name="X11_1" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_746" name="X11_2" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_745" name="X11_3" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_744" name="X5_0" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_750" name="X9_0" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_751" name="X9_2" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_752" name="Y2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_753" name="a1_X11_0" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_754" name="a2_X11_0" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_755" name="a_X6_Y2" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_756" name="b_X11_1" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_757" name="b_X11_2" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_724" name="default" order="16" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for reaction24_1" type="UserDefined" reversible="false">
      <Expression>
        (X12_1*b_X12_1-X12_0*(Y2*a_X6_Y2+a_X12_0*(X10_0/(X10_0+X10_1+X10_2+X10_3)-1)*(X9_0/(X9_0+X9_2)-1)))/default
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_730" name="X10_0" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_729" name="X10_1" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_728" name="X10_2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_727" name="X10_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_726" name="X12_0" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_725" name="X12_1" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_731" name="X9_0" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_732" name="X9_2" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_733" name="Y2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_734" name="a_X12_0" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_735" name="a_X6_Y2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_736" name="b_X12_1" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_737" name="default" order="12" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
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
      <rdf:Description>
        <dcterms:description>The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:30923191"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T16:36:18Z</dcterms:W3CDTF>
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
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2020-01-03T12:49:12</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      All cells and organisms exhibit stress-coping mechanisms toensure survival. Cytoplasmic protein-RNA assemblies termedstress granules are increasingly recognized to promote cellularsurvival under stress. Thus, they might represent tumor vul-nerabilities that are currently poorly explored. The translation-inhibitory eIF2αkinases are established as main drivers ofstress granule assembly. Using a systems approach, we identifythe translation enhancers PI3K and MAPK/p38 as pro-stress-granule-kinases. They act through the metabolic master regu-lator mammalian target of rapamycin complex 1 (mTORC1) topromote stress granule assembly. When highly active, PI3K is themain driver of stress granules; however, the impact of p38becomes apparent as PI3K activity declines. PI3K and p38 thusact in a hierarchical manner to drive mTORC1 activity and stressgranule assembly. Of note, this signaling hierarchy is also presentin human breast cancer tissue. Importantly, only the recognition ofthe PI3K-p38 hierarchy under stress enabled the discovery of p38’srole in stress granule formation. In summary, we assign a new pro-survival function to the key oncogenic kinases PI3K and p38, as theyhierarchically promote stress granule formation
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_3" name="default" simulationType="fixed" dimensionality="3" addNoise="false">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_39" name="X1_0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_38" name="X1_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_113" name="X2_0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X2_0_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_108" name="X2_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_107" name="X2_2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X2_2_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_106" name="X4_0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_102" name="X4_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_101" name="X5_0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X5_0_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="X5_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_98" name="X8_0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_0_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_92" name="X8_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_1_MCF7_Ars],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_1_MCF7_WmFr],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="X8_2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_2_MCF7_Ars],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_2_MCF7_WmFr],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_90" name="X8_3" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_89" name="X9_0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X9_0_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_88" name="X9_2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X9_2_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="X10_0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X10_0_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_86" name="X10_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X10_1_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="X10_2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X10_2_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_84" name="X10_3" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_83" name="X11_0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X11_0_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_128" name="X11_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X11_1_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="X11_2" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X11_2_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_126" name="X11_3" simulationType="reactions" compartment="Compartment_3" addNoise="false">
      </Metabolite>
      <Metabolite key="Metabolite_125" name="X12_0" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X12_0_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_124" name="X12_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <InitialExpression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X12_1_MCF7_Wm],Reference=InitialValue>
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="Akt_pT308_obs" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:15:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_Akt_pT308],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_1],Reference=Concentration>+&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_Akt_pT308],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_122" name="Akt_pS473_obs" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_122">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:17:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_Akt_pT473],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_2],Reference=Concentration>+&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_Akt_pT473],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="TSC1_TSC2_pT1462_obs" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:17:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_TSC1_TSC2_pT1462],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X9_2],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_120" name="PRAS40_pT246_obs" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_120">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:17:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_PRAS40_pT246],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_2],Reference=Concentration>+&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_PRAS40_pT246],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="PRAS40_pS183_obs" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:18:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_PRAS40_pS183],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_1],Reference=Concentration>+&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_PRAS40_pS183],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_118" name="fourEBP1_pT37_46_obs" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_118">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:18:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_fourEBP1_pT37_46],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X12_1],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_117" name="p70_S6K_pT389_obs" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:19:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_p70_S6K_pT389],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_1],Reference=Concentration>+&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_p70_S6K_pT389],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_116" name="p70_S6K_pT229_obs" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:19:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_p70_S6K_pT229],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_2],Reference=Concentration>+&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_p70_S6K_pT229],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_3],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="IRS1_pS636-639_obs" simulationType="assignment" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:20:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_IRS1_pS636-639],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X2_2],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_83" name="a1_X10_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="a1_X11_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="a1_X2_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="a1_X8_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="a2_X10_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="a2_X11_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="a2_X8_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="a2_X9_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="a_X10_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="a_X10_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="a_X12_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="a_X4_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="a_X5_0" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="a_X6_Y2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="b_X10_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="b_X10_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="b_X11_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="b_X11_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="b_X12_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="b_X2_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="b_X4_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="b_X5_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="b_X8_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="b_X8_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_0" name="b_X9_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="init_X10_0_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="init_X10_1_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="init_X10_2_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="init_X11_0_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="init_X11_1_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="init_X11_2_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="init_X12_0_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="init_X12_1_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="init_X2_0_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="init_X2_2_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="init_X5_0_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="init_X8_0_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="init_X8_1_MCF7_Ars" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="init_X8_1_MCF7_WmFr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="init_X8_2_MCF7_Ars" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="init_X8_2_MCF7_WmFr" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="init_X9_0_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="init_X9_2_MCF7_Wm" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="k_stress_1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="k_stress_2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="Y1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="Y2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="Y3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="Y4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="Y5" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="scale_Akt_pT308" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:21:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="scale_Akt_pT473" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:21:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="scale_TSC1_TSC2_pT1462" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:22:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="scale_PRAS40_pT246" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_112">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:22:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="scale_PRAS40_pS183" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:23:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="scale_fourEBP1_pT37_46" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_114">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:24:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="scale_p70_S6K_pT389" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:24:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="scale_p70_S6K_pT229" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_116">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:24:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="scale_IRS1_pS636-639" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-02-14T12:24:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_112" name="reaction1" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7458" name="Y1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="reaction2" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7464" name="Y1" value="0"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="reaction3" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_128" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_126" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7457" name="a1_X2_0" value="0.00149765"/>
          <Constant key="Parameter_7447" name="b_X2_2" value="0.106215"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="reaction4" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_108" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_128" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_126" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_108" stoichiometry="1"/>
        </ListOfModifiers>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="reaction5" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_128" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_126" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_108" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7463" name="a1_X2_0" value="0.00149765"/>
          <Constant key="Parameter_7462" name="b_X2_2" value="0.106215"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="reaction6" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_106" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_108" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_106" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_102" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7446" name="Y3" value="1"/>
          <Constant key="Parameter_7461" name="Y4" value="1"/>
          <Constant key="Parameter_7448" name="a_X4_0" value="0.000111095"/>
          <Constant key="Parameter_7477" name="b_X4_1" value="1.08358e-05"/>
          <Constant key="Parameter_7336" name="k_stress_1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="reaction7" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_102" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_108" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_106" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_102" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7337" name="Y3" value="1"/>
          <Constant key="Parameter_7476" name="Y4" value="1"/>
          <Constant key="Parameter_7470" name="a_X4_0" value="0.000111095"/>
          <Constant key="Parameter_7473" name="b_X4_1" value="1.08358e-05"/>
          <Constant key="Parameter_7472" name="k_stress_1" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="reaction8" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_102" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7471" name="a_X5_0" value="10"/>
          <Constant key="Parameter_7475" name="b_X5_1" value="0.0778331"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="reaction9" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_102" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7491" name="a_X5_0" value="10"/>
          <Constant key="Parameter_7474" name="b_X5_1" value="0.0778331"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="reaction10" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_98" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_102" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_99" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_98" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7508" name="Y3" value="1"/>
          <Constant key="Parameter_7496" name="Y5" value="0"/>
          <Constant key="Parameter_7506" name="a1_X8_0" value="0.584038"/>
          <Constant key="Parameter_7481" name="a2_X8_0" value="0.210752"/>
          <Constant key="Parameter_7505" name="b_X8_1" value="0.0462909"/>
          <Constant key="Parameter_7499" name="b_X8_2" value="0.0100376"/>
          <Constant key="Parameter_7509" name="k_stress_2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="reaction11" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_92" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_102" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_99" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_98" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7502" name="Y5" value="0"/>
          <Constant key="Parameter_7498" name="a1_X8_0" value="0.584038"/>
          <Constant key="Parameter_7504" name="b_X8_1" value="0.0462909"/>
          <Constant key="Parameter_7494" name="b_X8_2" value="0.0100376"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="reaction12" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_102" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_99" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_98" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7501" name="Y3" value="1"/>
          <Constant key="Parameter_7503" name="Y5" value="0"/>
          <Constant key="Parameter_7500" name="a2_X8_0" value="0.210752"/>
          <Constant key="Parameter_7511" name="b_X8_1" value="0.0462909"/>
          <Constant key="Parameter_7513" name="b_X8_2" value="0.0100376"/>
          <Constant key="Parameter_7507" name="k_stress_2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="reaction13" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_102" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_99" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7490" name="Y5" value="0"/>
          <Constant key="Parameter_7495" name="a1_X8_0" value="0.584038"/>
          <Constant key="Parameter_7516" name="a2_X8_0" value="0.210752"/>
          <Constant key="Parameter_7512" name="b_X8_1" value="0.0462909"/>
          <Constant key="Parameter_7497" name="b_X8_2" value="0.0100376"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="reaction14" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7515" name="a2_X9_0" value="0.021622"/>
          <Constant key="Parameter_7510" name="b_X9_2" value="0.0369559"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="reaction15" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7517" name="a2_X9_0" value="0.021622"/>
          <Constant key="Parameter_7488" name="b_X9_2" value="0.0369559"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="reaction16" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7486" name="Y2" value="1"/>
          <Constant key="Parameter_7514" name="a1_X10_0" value="1.0488e-05"/>
          <Constant key="Parameter_7487" name="a2_X10_0" value="0.196798"/>
          <Constant key="Parameter_7492" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_7480" name="b_X10_1" value="0.00263738"/>
          <Constant key="Parameter_7482" name="b_X10_2" value="0.0119596"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_775">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_776">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_777">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_778">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_853">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_854">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_855">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_856">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_857">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_858">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_859">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="reaction17" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_86" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7485" name="Y2" value="1"/>
          <Constant key="Parameter_7493" name="a1_X10_0" value="1.0488e-05"/>
          <Constant key="Parameter_7479" name="a_X10_1" value="1e-05"/>
          <Constant key="Parameter_7483" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_7478" name="b_X10_1" value="0.00263738"/>
          <Constant key="Parameter_7521" name="b_X10_2" value="0.0119596"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_860">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_861">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_862">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_863">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_864">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_865">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_866">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_867">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_868">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_869">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_870">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_871">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_872">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_873">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_874">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="reaction18" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7484" name="Y2" value="1"/>
          <Constant key="Parameter_7489" name="a2_X10_0" value="0.196798"/>
          <Constant key="Parameter_5146" name="a_X10_2" value="10"/>
          <Constant key="Parameter_5149" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_5143" name="b_X10_1" value="0.00263738"/>
          <Constant key="Parameter_5150" name="b_X10_2" value="0.0119596"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_789">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_790">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_791">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_792">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_793">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_794">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_795">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_796">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_797">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_758">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_759">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_760">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_761">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_762">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="reaction19" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_84" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_92" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_90" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5131" name="Y2" value="1"/>
          <Constant key="Parameter_5027" name="a_X10_1" value="1e-05"/>
          <Constant key="Parameter_5151" name="a_X10_2" value="10"/>
          <Constant key="Parameter_5144" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_5190" name="b_X10_1" value="0.00263738"/>
          <Constant key="Parameter_5133" name="b_X10_2" value="0.0119596"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_850">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_851">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_852">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_814">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_815">
              <SourceParameter reference="Metabolite_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_816">
              <SourceParameter reference="Metabolite_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_817">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_818">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_819">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_820">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_821">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_822">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_823">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_824">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_825">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="reaction20" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_128" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5137" name="Y2" value="1"/>
          <Constant key="Parameter_5192" name="a1_X11_0" value="0.106711"/>
          <Constant key="Parameter_5191" name="a2_X11_0" value="1e-05"/>
          <Constant key="Parameter_5140" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_5135" name="b_X11_1" value="0.182804"/>
          <Constant key="Parameter_5132" name="b_X11_2" value="0.224858"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_826">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_827">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_828">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_829">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_830">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_831">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_798">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_799">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_800">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_801">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_802">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_803">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_804">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_805">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_806">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="reaction21" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_128" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_128" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_126" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5139" name="Y2" value="1"/>
          <Constant key="Parameter_5147" name="a1_X11_0" value="0.106711"/>
          <Constant key="Parameter_5141" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_5148" name="b_X11_1" value="0.182804"/>
          <Constant key="Parameter_5138" name="b_X11_2" value="0.224858"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_834">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_835">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_836">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_837">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_838">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_839">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_840">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_841">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_842">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_843">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_844">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_845">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_846">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_847">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_848">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_849">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="reaction22" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_126" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5134" name="Y2" value="1"/>
          <Constant key="Parameter_5142" name="a2_X11_0" value="1e-05"/>
          <Constant key="Parameter_5136" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_5189" name="b_X11_1" value="0.182804"/>
          <Constant key="Parameter_5117" name="b_X11_2" value="0.224858"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_807">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_808">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_809">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_810">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_811">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_812">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_813">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_779">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_780">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_781">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_782">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_783">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_784">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_785">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_786">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_787">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="reaction23" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_126" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_128" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_126" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5123" name="Y2" value="1"/>
          <Constant key="Parameter_5118" name="a1_X11_0" value="0.106711"/>
          <Constant key="Parameter_5111" name="a2_X11_0" value="1e-05"/>
          <Constant key="Parameter_5120" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_5113" name="b_X11_1" value="0.182804"/>
          <Constant key="Parameter_5110" name="b_X11_2" value="0.224858"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_742">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_743">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="Metabolite_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_745">
              <SourceParameter reference="Metabolite_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_744">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_750">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_751">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_752">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_753">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_754">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_755">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_756">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_757">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="reaction24" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_124" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5116" name="Y2" value="1"/>
          <Constant key="Parameter_5115" name="a_X12_0" value="0.19834"/>
          <Constant key="Parameter_5106" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_5112" name="b_X12_1" value="0.0102135"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_730">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_737">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="reaction25" reversible="false" fast="false" addNoise="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_124" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_86" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_84" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_124" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_88" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5108" name="Y2" value="1"/>
          <Constant key="Parameter_5103" name="a_X12_0" value="0.19834"/>
          <Constant key="Parameter_5104" name="a_X6_Y2" value="1e-05"/>
          <Constant key="Parameter_5107" name="b_X12_1" value="0.0102135"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_771">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_770">
              <SourceParameter reference="Metabolite_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_769">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Metabolite_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_767">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_766">
              <SourceParameter reference="Metabolite_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_765">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_764">
              <SourceParameter reference="Metabolite_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_763">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_772">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_773">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_774">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X1_0]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X1_1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X2_0]" value="6.022140856999537e+24" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X2_0_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X2_1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X2_2]" value="1.3397583768047532e+20" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X2_2_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X4_0]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X4_1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X5_0]" value="6.0221408285921648e+24" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X5_0_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X5_1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_0]" value="6.063993602373588e+18" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_0_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_1]" value="9.4104198901384453e+22" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_1_MCF7_Ars],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_1_MCF7_WmFr],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_2]" value="6.3243450260691603e+20" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_2_MCF7_Ars],Reference=InitialValue>*&lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_2_MCF7_WmFr],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X9_0]" value="1.6124102651052976e+24" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X9_0_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X9_2]" value="7.2257930472173066e+21" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X9_2_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_0]" value="2.5890159885914609e+21" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X10_0_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_1]" value="8.2027351285505385e+22" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X10_1_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_2]" value="8.3359220195463712e+20" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X10_2_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_0]" value="8.031835460331537e+22" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X11_0_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_1]" value="7.7639506424906567e+20" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X11_1_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_2]" value="1.6497318875544617e+21" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X11_2_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X12_0]" value="2.0586986729613463e+24" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X12_0_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X12_1]" value="2.4547767352191295e+23" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X12_1_MCF7_Wm],Reference=InitialValue>
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[Akt_pT308_obs]" value="1.455094630304398e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[Akt_pS473_obs]" value="7.5424822275734703e+21" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[TSC1_TSC2_pT1462_obs]" value="1.9607137918144735e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[PRAS40_pT246_obs]" value="8.4321196180141066e+21" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[PRAS40_pS183_obs]" value="3.2682066101548194e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[fourEBP1_pT37_46_obs]" value="2.4466414086470126e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[p70_S6K_pT389_obs]" value="6.6816727075193801e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[p70_S6K_pT229_obs]" value="1.2330134592704901e+23" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[IRS1_pS636-639_obs]" value="1.3363032245883002e+23" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X10_0]" value="1.0488046612136501e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X11_0]" value="0.106711200647841" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X2_0]" value="0.0014976539751450999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X8_0]" value="0.58403788951130697" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X10_0]" value="0.196797907822297" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X11_0]" value="1.0000001750124701e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X8_0]" value="0.210752496177883" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X9_0]" value="0.021622000608492301" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X10_1]" value="1.0000000000020601e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X10_2]" value="9.9999999999150901" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X12_0]" value="0.19833956860283899" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X4_0]" value="0.00011109530354877699" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X5_0]" value="9.9999996971809608" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2]" value="1.00000114154884e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_1]" value="0.0026373790039812099" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_2]" value="0.011959597261903" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_1]" value="0.18280416126086399" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_2]" value="0.224858434757367" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X12_1]" value="0.010213454196073699" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X2_2]" value="0.106214679132925" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X4_1]" value="1.08358100911056e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X5_1]" value="0.077833118821602001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_1]" value="0.046290915723524201" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_2]" value="0.0100376101872374" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X9_2]" value="0.036955922335975298" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X10_0_MCF7_Wm]" value="0.0042991621253462503" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X10_1_MCF7_Wm]" value="0.136209619192415" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X10_2_MCF7_Wm]" value="0.00138421239514132" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X11_0_MCF7_Wm]" value="0.13337176348167801" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X11_1_MCF7_Wm]" value="0.0012892343149805299" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X11_2_MCF7_Wm]" value="0.0027394442055217799" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X12_0_MCF7_Wm]" value="3.41854951892791" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X12_1_MCF7_Wm]" value="0.40762526043636998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X2_0_MCF7_Wm]" value="9.9999999999992308" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X2_2_MCF7_Wm]" value="0.000222472108942362" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X5_0_MCF7_Wm]" value="9.9999999528276806" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_0_MCF7_Wm]" value="1.0069498117641901e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_1_MCF7_Ars]" value="0.15626369637742801" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_1_MCF7_WmFr]" value="0.99999999850537202" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_2_MCF7_Ars]" value="0.058342421768906298" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X8_2_MCF7_WmFr]" value="0.0180003186403828" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X9_0_MCF7_Wm]" value="2.67747019439286" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[init_X9_2_MCF7_Wm]" value="0.0119987114529515" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[k_stress_1]" value="9.9999999999547597" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[k_stress_2]" value="0.0099999997772415392" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y1]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y4]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y5]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_Akt_pT308]" value="1.5462589844999901" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_Akt_pT473]" value="11.926108073615699" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_TSC1_TSC2_pT1462]" value="2.7134928706123902" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_PRAS40_pT246]" value="10.1154012696402" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_PRAS40_pS183]" value="3.9842888487029899" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_fourEBP1_pT37_46]" value="0.99668591996355604" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_p70_S6K_pT389]" value="86.060216186226498" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_p70_S6K_pT229]" value="74.740233159843399" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[scale_IRS1_pS636-639]" value="997.42106317357502" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction1],ParameterGroup=Parameters,Parameter=Y1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction2],ParameterGroup=Parameters,Parameter=Y1" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction3],ParameterGroup=Parameters,Parameter=a1_X2_0" value="0.0014976539751450999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X2_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction3],ParameterGroup=Parameters,Parameter=b_X2_2" value="0.106214679132925" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X2_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction4]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction5],ParameterGroup=Parameters,Parameter=a1_X2_0" value="0.0014976539751450999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X2_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction5],ParameterGroup=Parameters,Parameter=b_X2_2" value="0.106214679132925" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X2_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction6],ParameterGroup=Parameters,Parameter=Y3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction6],ParameterGroup=Parameters,Parameter=Y4" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction6],ParameterGroup=Parameters,Parameter=a_X4_0" value="0.00011109530354877699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X4_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction6],ParameterGroup=Parameters,Parameter=b_X4_1" value="1.08358100911056e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X4_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction6],ParameterGroup=Parameters,Parameter=k_stress_1" value="9.9999999999547597" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[k_stress_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction7],ParameterGroup=Parameters,Parameter=Y3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction7],ParameterGroup=Parameters,Parameter=Y4" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction7],ParameterGroup=Parameters,Parameter=a_X4_0" value="0.00011109530354877699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X4_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction7],ParameterGroup=Parameters,Parameter=b_X4_1" value="1.08358100911056e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X4_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction7],ParameterGroup=Parameters,Parameter=k_stress_1" value="9.9999999999547597" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[k_stress_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction8],ParameterGroup=Parameters,Parameter=a_X5_0" value="9.9999996971809608" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X5_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction8],ParameterGroup=Parameters,Parameter=b_X5_1" value="0.077833118821602001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X5_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction9],ParameterGroup=Parameters,Parameter=a_X5_0" value="9.9999996971809608" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X5_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction9],ParameterGroup=Parameters,Parameter=b_X5_1" value="0.077833118821602001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X5_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction10],ParameterGroup=Parameters,Parameter=Y3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction10],ParameterGroup=Parameters,Parameter=Y5" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction10],ParameterGroup=Parameters,Parameter=a1_X8_0" value="0.58403788951130697" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X8_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction10],ParameterGroup=Parameters,Parameter=a2_X8_0" value="0.210752496177883" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X8_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction10],ParameterGroup=Parameters,Parameter=b_X8_1" value="0.046290915723524201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction10],ParameterGroup=Parameters,Parameter=b_X8_2" value="0.0100376101872374" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction10],ParameterGroup=Parameters,Parameter=k_stress_2" value="0.0099999997772415392" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[k_stress_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction11],ParameterGroup=Parameters,Parameter=Y5" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction11],ParameterGroup=Parameters,Parameter=a1_X8_0" value="0.58403788951130697" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X8_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction11],ParameterGroup=Parameters,Parameter=b_X8_1" value="0.046290915723524201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction11],ParameterGroup=Parameters,Parameter=b_X8_2" value="0.0100376101872374" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction12],ParameterGroup=Parameters,Parameter=Y3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction12],ParameterGroup=Parameters,Parameter=Y5" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction12],ParameterGroup=Parameters,Parameter=a2_X8_0" value="0.210752496177883" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X8_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction12],ParameterGroup=Parameters,Parameter=b_X8_1" value="0.046290915723524201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction12],ParameterGroup=Parameters,Parameter=b_X8_2" value="0.0100376101872374" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction12],ParameterGroup=Parameters,Parameter=k_stress_2" value="0.0099999997772415392" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[k_stress_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction13],ParameterGroup=Parameters,Parameter=Y5" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction13],ParameterGroup=Parameters,Parameter=a1_X8_0" value="0.58403788951130697" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X8_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction13],ParameterGroup=Parameters,Parameter=a2_X8_0" value="0.210752496177883" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X8_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction13],ParameterGroup=Parameters,Parameter=b_X8_1" value="0.046290915723524201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction13],ParameterGroup=Parameters,Parameter=b_X8_2" value="0.0100376101872374" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X8_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction14],ParameterGroup=Parameters,Parameter=a2_X9_0" value="0.021622000608492301" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X9_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction14],ParameterGroup=Parameters,Parameter=b_X9_2" value="0.036955922335975298" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X9_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction15],ParameterGroup=Parameters,Parameter=a2_X9_0" value="0.021622000608492301" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X9_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction15],ParameterGroup=Parameters,Parameter=b_X9_2" value="0.036955922335975298" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X9_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction16],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction16],ParameterGroup=Parameters,Parameter=a1_X10_0" value="1.0488046612136501e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X10_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction16],ParameterGroup=Parameters,Parameter=a2_X10_0" value="0.196797907822297" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X10_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction16],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction16],ParameterGroup=Parameters,Parameter=b_X10_1" value="0.0026373790039812099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction16],ParameterGroup=Parameters,Parameter=b_X10_2" value="0.011959597261903" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction17],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction17],ParameterGroup=Parameters,Parameter=a1_X10_0" value="1.0488046612136501e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X10_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction17],ParameterGroup=Parameters,Parameter=a_X10_1" value="1.0000000000020601e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X10_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction17],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction17],ParameterGroup=Parameters,Parameter=b_X10_1" value="0.0026373790039812099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction17],ParameterGroup=Parameters,Parameter=b_X10_2" value="0.011959597261903" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction18],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction18],ParameterGroup=Parameters,Parameter=a2_X10_0" value="0.196797907822297" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X10_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction18],ParameterGroup=Parameters,Parameter=a_X10_2" value="9.9999999999150901" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X10_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction18],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction18],ParameterGroup=Parameters,Parameter=b_X10_1" value="0.0026373790039812099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction18],ParameterGroup=Parameters,Parameter=b_X10_2" value="0.011959597261903" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction19],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction19],ParameterGroup=Parameters,Parameter=a_X10_1" value="1.0000000000020601e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X10_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction19],ParameterGroup=Parameters,Parameter=a_X10_2" value="9.9999999999150901" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X10_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction19],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction19],ParameterGroup=Parameters,Parameter=b_X10_1" value="0.0026373790039812099" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction19],ParameterGroup=Parameters,Parameter=b_X10_2" value="0.011959597261903" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X10_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction20],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction20],ParameterGroup=Parameters,Parameter=a1_X11_0" value="0.106711200647841" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X11_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction20],ParameterGroup=Parameters,Parameter=a2_X11_0" value="1.0000001750124701e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X11_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction20],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction20],ParameterGroup=Parameters,Parameter=b_X11_1" value="0.18280416126086399" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction20],ParameterGroup=Parameters,Parameter=b_X11_2" value="0.224858434757367" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction21],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction21],ParameterGroup=Parameters,Parameter=a1_X11_0" value="0.106711200647841" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X11_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction21],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction21],ParameterGroup=Parameters,Parameter=b_X11_1" value="0.18280416126086399" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction21],ParameterGroup=Parameters,Parameter=b_X11_2" value="0.224858434757367" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction22],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction22],ParameterGroup=Parameters,Parameter=a2_X11_0" value="1.0000001750124701e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X11_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction22],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction22],ParameterGroup=Parameters,Parameter=b_X11_1" value="0.18280416126086399" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction22],ParameterGroup=Parameters,Parameter=b_X11_2" value="0.224858434757367" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction23],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction23],ParameterGroup=Parameters,Parameter=a1_X11_0" value="0.106711200647841" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a1_X11_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction23],ParameterGroup=Parameters,Parameter=a2_X11_0" value="1.0000001750124701e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a2_X11_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction23],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction23],ParameterGroup=Parameters,Parameter=b_X11_1" value="0.18280416126086399" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction23],ParameterGroup=Parameters,Parameter=b_X11_2" value="0.224858434757367" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X11_2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction24],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction24],ParameterGroup=Parameters,Parameter=a_X12_0" value="0.19833956860283899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X12_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction24],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction24],ParameterGroup=Parameters,Parameter=b_X12_1" value="0.010213454196073699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X12_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction25],ParameterGroup=Parameters,Parameter=Y2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction25],ParameterGroup=Parameters,Parameter=a_X12_0" value="0.19833956860283899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X12_0],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction25],ParameterGroup=Parameters,Parameter=a_X6_Y2" value="1.00000114154884e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[a_X6_Y2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Reactions[reaction25],ParameterGroup=Parameters,Parameter=b_X12_1" value="0.010213454196073699" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Values[b_X12_1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_108"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_106"/>
      <StateTemplateVariable objectReference="Metabolite_102"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_98"/>
      <StateTemplateVariable objectReference="Metabolite_92"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_90"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_88"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_86"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_84"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_128"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_126"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_124"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_122"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_120"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_118"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_116"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
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
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 6.0221408570000002e+23 0 6.022140856999537e+24 0 1.3397583768047532e+20 6.0221408570000002e+23 0 6.0221408285921648e+24 0 6.063993602373588e+18 9.4104198901384453e+22 6.3243450260691603e+20 0 1.6124102651052976e+24 7.2257930472173066e+21 2.5890159885914609e+21 8.2027351285505385e+22 8.3359220195463712e+20 0 8.031835460331537e+22 7.7639506424906567e+20 1.6497318875544617e+21 0 2.0586986729613463e+24 2.4547767352191295e+23 1.455094630304398e+23 7.5424822275734703e+21 1.9607137918144735e+22 8.4321196180141066e+21 3.2682066101548194e+23 2.4466414086470126e+23 6.6816727075193801e+22 1.2330134592704901e+23 1.3363032245883002e+23 1 1.0488046612136501e-05 0.106711200647841 0.0014976539751450999 0.58403788951130697 0.196797907822297 1.0000001750124701e-05 0.210752496177883 0.021622000608492301 1.0000000000020601e-05 9.9999999999150901 0.19833956860283899 0.00011109530354877699 9.9999996971809608 1.00000114154884e-05 0.0026373790039812099 0.011959597261903 0.18280416126086399 0.224858434757367 0.010213454196073699 0.106214679132925 1.08358100911056e-05 0.077833118821602001 0.046290915723524201 0.0100376101872374 0.036955922335975298 0.0042991621253462503 0.136209619192415 0.00138421239514132 0.13337176348167801 0.0012892343149805299 0.0027394442055217799 3.41854951892791 0.40762526043636998 9.9999999999992308 0.000222472108942362 9.9999999528276806 1.0069498117641901e-05 0.15626369637742801 0.99999999850537202 0.058342421768906298 0.0180003186403828 2.67747019439286 0.0119987114529515 9.9999999999547597 0.0099999997772415392 0 1 1 1 0 1.5462589844999901 11.926108073615699 2.7134928706123902 10.1154012696402 3.9842888487029899 0.99668591996355604 86.060216186226498 74.740233159843399 997.42106317357502 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_0" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
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
        <Parameter name="StepSize" type="float" value="0.59999999999999998"/>
        <Parameter name="Duration" type="float" value="60"/>
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
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
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
        <Parameter name="Steady-State" type="key" value="Task_0"/>
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
    <Task key="Task_12" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
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
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[X1_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X1_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X1_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X1_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X2_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X2_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X2_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X2_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X2_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X2_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X4_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X4_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X4_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X4_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X5_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X5_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X5_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X5_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X8_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X8_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X8_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X8_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X8_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X9_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X9_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X9_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X9_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X10_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X10_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X10_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X10_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X10_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X11_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X11_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X11_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X11_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X11_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X12_0]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X12_0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[X12_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[X12_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Akt_pT308_obs]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[Akt_pT308_obs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Akt_pS473_obs]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[Akt_pS473_obs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TSC1_TSC2_pT1462_obs]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[TSC1_TSC2_pT1462_obs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PRAS40_pT246_obs]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[PRAS40_pT246_obs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PRAS40_pS183_obs]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[PRAS40_pS183_obs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[fourEBP1_pT37_46_obs]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[fourEBP1_pT37_46_obs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p70_S6K_pT389_obs]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[p70_S6K_pT389_obs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[p70_S6K_pT229_obs]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[p70_S6K_pT229_obs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IRS1_pS636-639_obs]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=HeberleRazquinNavas2019 - The PI3K and MAPK/p38 pathways control stress granuleassembly in a hierarchical manner model 3,Vector=Compartments[default],Vector=Metabolites[IRS1_pS636-639_obs],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Heberle and Razquin Navas et al - Supplementary Data 4/model IV - arsenite + wortmannin.xml">
    <SBMLMap SBMLid="Akt_pS473_obs" COPASIkey="Metabolite_122"/>
    <SBMLMap SBMLid="Akt_pT308_obs" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="IRS1_pS636_639_obs" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="PRAS40_pS183_obs" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="PRAS40_pT246_obs" COPASIkey="Metabolite_120"/>
    <SBMLMap SBMLid="TSC1_TSC2_pT1462_obs" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="X10_0" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="X10_1" COPASIkey="Metabolite_86"/>
    <SBMLMap SBMLid="X10_2" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="X10_3" COPASIkey="Metabolite_84"/>
    <SBMLMap SBMLid="X11_0" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="X11_1" COPASIkey="Metabolite_128"/>
    <SBMLMap SBMLid="X11_2" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="X11_3" COPASIkey="Metabolite_126"/>
    <SBMLMap SBMLid="X12_0" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="X12_1" COPASIkey="Metabolite_124"/>
    <SBMLMap SBMLid="X1_0" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="X1_1" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="X2_0" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="X2_1" COPASIkey="Metabolite_108"/>
    <SBMLMap SBMLid="X2_2" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="X4_0" COPASIkey="Metabolite_106"/>
    <SBMLMap SBMLid="X4_1" COPASIkey="Metabolite_102"/>
    <SBMLMap SBMLid="X5_0" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="X5_1" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="X8_0" COPASIkey="Metabolite_98"/>
    <SBMLMap SBMLid="X8_1" COPASIkey="Metabolite_92"/>
    <SBMLMap SBMLid="X8_2" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="X8_3" COPASIkey="Metabolite_90"/>
    <SBMLMap SBMLid="X9_0" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="X9_2" COPASIkey="Metabolite_88"/>
    <SBMLMap SBMLid="Y1" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="Y2" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="Y3" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="Y4" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="Y5" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="a1_X10_0" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="a1_X11_0" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="a1_X2_0" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="a1_X8_0" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="a2_X10_0" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="a2_X11_0" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="a2_X8_0" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="a2_X9_0" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="a_X10_1" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="a_X10_2" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="a_X12_0" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="a_X4_0" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="a_X5_0" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="a_X6_Y2" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="b_X10_1" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="b_X10_2" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="b_X11_1" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="b_X11_2" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="b_X12_1" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="b_X2_2" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="b_X4_1" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="b_X5_1" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="b_X8_1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="b_X8_2" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="b_X9_2" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="fourEBP1_pT37_46_obs" COPASIkey="Metabolite_118"/>
    <SBMLMap SBMLid="init_X10_0_MCF7_Wm" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="init_X10_1_MCF7_Wm" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="init_X10_2_MCF7_Wm" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="init_X11_0_MCF7_Wm" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="init_X11_1_MCF7_Wm" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="init_X11_2_MCF7_Wm" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="init_X12_0_MCF7_Wm" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="init_X12_1_MCF7_Wm" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="init_X2_0_MCF7_Wm" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="init_X2_2_MCF7_Wm" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="init_X5_0_MCF7_Wm" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="init_X8_0_MCF7_Wm" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="init_X8_1_MCF7_Ars" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="init_X8_1_MCF7_WmFr" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="init_X8_2_MCF7_Ars" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="init_X8_2_MCF7_WmFr" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="init_X9_0_MCF7_Wm" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="init_X9_2_MCF7_Wm" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="k_stress_1" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="k_stress_2" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="p70_S6K_pT229_obs" COPASIkey="Metabolite_116"/>
    <SBMLMap SBMLid="p70_S6K_pT389_obs" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="reaction1" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="reaction10" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="reaction11" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="reaction12" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="reaction13" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="reaction14" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="reaction15" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="reaction16" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="reaction17" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="reaction18" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="reaction19" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="reaction2" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="reaction20" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="reaction21" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="reaction22" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="reaction23" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="reaction24" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="reaction25" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="reaction3" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="reaction4" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="reaction5" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="reaction6" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="reaction7" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="reaction8" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="reaction9" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="scale_Akt_pT308" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="scale_Akt_pT473" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="scale_IRS1_pS636_639" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="scale_PRAS40_pS183" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="scale_PRAS40_pT246" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="scale_TSC1_TSC2_pT1462" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="scale_fourEBP1_pT37_46" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="scale_p70_S6K_pT229" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="scale_p70_S6K_pT389" COPASIkey="ModelValue_115"/>
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
  </ListOfUnitDefinitions>
</COPASI>
