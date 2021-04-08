<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-10-15 10:27:48 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_7" name="Constant flux (reversible)" type="PreDefined" reversible="true">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_48" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="function_4_r1" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_1+k_HR*H*r_1+k_r1*r_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_250" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="k_r1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="r_1" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function_4_r4" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="IP3_1" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function_4_r3" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_1)*(A*(0.5*IP3_1)^4*(1/(k1+0.5*IP3_1)^4)+L)*(CaT_1+-CaI_1)*store1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_274" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="CaI_1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_272" name="CaT_1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_271" name="IP3_1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="g_1" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_268" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="store1" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function_4_r14" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="IP3_2" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function_4_r12" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_2+k_HR*H*r_2+k_r2*r_2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="k_r2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="r_2" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function_4_r13" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_2^4*(1+-g_2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_284" name="CaI_2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_283" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="g_2" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function_4_r9" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_2)*(A*(0.5*IP3_2)^4*(1/(k1+0.5*IP3_2)^4)+L)*(CaT_2+-CaI_2)*store2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="CaI_2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_290" name="CaT_2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="IP3_2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="g_2" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_286" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="store2" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function_4_r0" type="UserDefined" reversible="true">
      <Expression>
        k_ip31*H*r_1*(1+-(k3*(1/(CaI_1+k3))))*(1/(kcat+r_1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="CaI_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="k_ip31" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="r_1" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function_4_r5" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_1^2*(1/(k2^2+CaI_1^2))*cytosol1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_302" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="CaI_1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="cytosol1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_299" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function_4_r6" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_1^4*(1+-g_1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="CaI_1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_304" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="g_1" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function_4_r8" type="UserDefined" reversible="true">
      <Expression>
        k_ip32*H*r_2*(1+-(k3*(1/(CaI_2+k3))))*(1/(kcat+r_2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_311" name="CaI_2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_310" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="k_ip32" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="r_2" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_r25" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_3^4*(1+-g_3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="CaI_3" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_313" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="g_3" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_r19" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_3)*(A*(0.5*IP3_3)^4*(1/(k1+0.5*IP3_3)^4)+L)*(CaT_3+-CaI_3)*store3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="CaI_3" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_320" name="CaT_3" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_319" name="IP3_3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_318" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="g_3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="store3" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_r15" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_2^2*(1/(k2^2+CaI_2^2))*cytosol2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_326" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="CaI_2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_324" name="cytosol2" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_323" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_r16" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_1+-IP3_2)*cytosol1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="IP3_1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="IP3_2" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_327" name="cytosol1" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_r18" type="UserDefined" reversible="true">
      <Expression>
        k_ip33*H*r_3*(1+-(k3*(1/(CaI_3+k3))))*(1/(kcat+r_3))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="CaI_3" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_335" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="k_ip33" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="r_3" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_r21" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_3+k_HR*H*r_3+k_r3*r_3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_341" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="k_r3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_337" name="r_3" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_r23" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_343" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="IP3_3" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_r30" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_345" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="IP3_4" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_r33" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_4^4*(1+-g_4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_348" name="CaI_4" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_347" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="g_4" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function_4_r34" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_4)*(A*(0.5*IP3_4)^4*(1/(k1+0.5*IP3_4)^4)+L)*(CaT_4+-CaI_4)*store4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="CaI_4" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_354" name="CaT_4" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_353" name="IP3_4" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_352" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="g_4" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_350" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="store4" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="function_4_r24" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_3^2*(1/(k2^2+CaI_3^2))*cytosol3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_360" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="CaI_3" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="cytosol3" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_357" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="function_4_r27" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_3+-IP3_2)*cytosol3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="IP3_2" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_362" name="IP3_3" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_361" name="cytosol3" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="function_4_r28" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_4+k_HR*H*r_4+k_r4*r_4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_369" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="k_r4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="r_4" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="function_4_r29" type="UserDefined" reversible="true">
      <Expression>
        k_ip34*H*r_4*(1+-(k3*(1/(CaI_4+k3))))*(1/(kcat+r_4))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="CaI_4" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_374" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="k_ip34" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="r_4" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="function_4_r43" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="IP3_5" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="function_4_r40" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_5)*(A*(0.5*IP3_5)^4*(1/(k1+0.5*IP3_5)^4)+L)*(CaT_5+-CaI_5)*store5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="CaI_5" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_383" name="CaT_5" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_382" name="IP3_5" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_381" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="g_5" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_379" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="store5" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="function_4_r35" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_4^2*(1/(k2^2+CaI_4^2))*cytosol4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_389" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="CaI_4" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_387" name="cytosol4" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_386" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="function_4_r37" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_4+-IP3_3)*cytosol4
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_393" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="IP3_3" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_391" name="IP3_4" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="cytosol4" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="function_4_r38" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_5+k_HR*H*r_5+k_r5*r_5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_398" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="k_r5" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_394" name="r_5" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="function_4_r39" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_5^4*(1+-g_5)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_401" name="CaI_5" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_400" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="g_5" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="function_4_r42" type="UserDefined" reversible="true">
      <Expression>
        k_ip35*H*r_5*(1+-(k3*(1/(CaI_5+k3))))*(1/(kcat+r_5))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_407" name="CaI_5" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_406" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="k_ip35" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="r_5" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="function_4_r55" type="UserDefined" reversible="true">
      <Expression>
        k_ip36*H*r_6*(1+-(k3*(1/(CaI_6+k3))))*(1/(kcat+r_6))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_413" name="CaI_6" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_412" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="k_ip36" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="r_6" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="function_4_r54" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_6
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_415" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="IP3_6" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="function_4_r64" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_7^2*(1/(k2^2+CaI_7^2))*cytosol7
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_419" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="CaI_7" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_417" name="cytosol7" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_416" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="function_4_r57" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_6+-IP3_5)*cytosol6
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_423" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="IP3_5" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_421" name="IP3_6" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_420" name="cytosol6" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="function_4_r58" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_7^4*(1+-g_7)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_426" name="CaI_7" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_425" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="g_7" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="function_4_r60" type="UserDefined" reversible="true">
      <Expression>
        k_ip37*H*r_7*(1+-(k3*(1/(CaI_7+k3))))*(1/(kcat+r_7))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_432" name="CaI_7" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_431" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="k_ip37" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="r_7" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="function_4_r45" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_5^2*(1/(k2^2+CaI_5^2))*cytosol5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_436" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="CaI_5" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_434" name="cytosol5" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_433" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="function_4_r47" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_5+-IP3_4)*cytosol5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_440" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="IP3_4" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_438" name="IP3_5" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_437" name="cytosol5" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="function_4_r51" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_6^4*(1+-g_6)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_443" name="CaI_6" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_442" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_441" name="g_6" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="function_4_r53" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_6+k_HR*H*r_6+k_r6*r_6
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_448" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="k_r6" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="r_6" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="function_4_r62" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_7
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_450" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="IP3_7" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="function_4_r63" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_7+k_HR*H*r_7+k_r7*r_7
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_455" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="k_r7" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_451" name="r_7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="function_4_r68" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_8
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_457" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_456" name="IP3_8" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="function_4_r71" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_8+k_HR*H*r_8+k_r8*r_8
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_462" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_461" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="k_r8" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="r_8" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="function_4_r70" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_8^4*(1+-g_8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_465" name="CaI_8" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_464" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_463" name="g_8" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="function_4_r67" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_7+-IP3_6)*cytosol7
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_469" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_468" name="IP3_6" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_467" name="IP3_7" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_466" name="cytosol7" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="function_4_r48" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_6^2*(1/(k2^2+CaI_6^2))*cytosol6
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_473" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="CaI_6" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_471" name="cytosol6" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_470" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="function_4_r50" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_6)*(A*(0.5*IP3_6)^4*(1/(k1+0.5*IP3_6)^4)+L)*(CaT_6+-CaI_6)*store6
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_481" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="CaI_6" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_479" name="CaT_6" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_478" name="IP3_6" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_477" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="g_6" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_475" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_474" name="store6" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="function_4_r73" type="UserDefined" reversible="true">
      <Expression>
        k_ip38*H*r_8*(1+-(k3*(1/(CaI_8+k3))))*(1/(kcat+r_8))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_487" name="CaI_8" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_486" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="k_ip38" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_483" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_482" name="r_8" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="function_4_r61" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_7)*(A*(0.5*IP3_7)^4*(1/(k1+0.5*IP3_7)^4)+L)*(CaT_7+-CaI_7)*store7
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_495" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_494" name="CaI_7" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_493" name="CaT_7" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_492" name="IP3_7" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_491" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_490" name="g_7" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_489" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_488" name="store7" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="function_4_r78" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_9^4*(1+-g_9)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_498" name="CaI_9" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_497" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_496" name="g_9" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="function_4_r81" type="UserDefined" reversible="true">
      <Expression>
        k_ip39*H*r_9*(1+-(k3*(1/(CaI_9+k3))))*(1/(kcat+r_9))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_504" name="CaI_9" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_503" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_502" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_501" name="k_ip39" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_499" name="r_9" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="function_4_r72" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_8)*(A*(0.5*IP3_8)^4*(1/(k1+0.5*IP3_8)^4)+L)*(CaT_8+-CaI_8)*store8
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_512" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_511" name="CaI_8" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_510" name="CaT_8" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_509" name="IP3_8" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_508" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_507" name="g_8" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_506" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_505" name="store8" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="function_4_r75" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_8^2*(1/(k2^2+CaI_8^2))*cytosol8
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_516" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_515" name="CaI_8" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_514" name="cytosol8" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_513" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="function_4_r77" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_8+-IP3_7)*cytosol8
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_520" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_519" name="IP3_7" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_518" name="IP3_8" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_517" name="cytosol8" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="function_4_r87" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_9+-IP3_8)*cytosol9
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_524" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_523" name="IP3_8" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_522" name="IP3_9" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_521" name="cytosol9" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="function_4_r91" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_10+k_HR*H*r_10+k_r10*r_10
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_529" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_526" name="k_r10" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_525" name="r_10" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="function_4_r89" type="UserDefined" reversible="true">
      <Expression>
        k_ip310*H*r_10*(1+-(k3*(1/(CaI_10+k3))))*(1/(kcat+r_10))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_535" name="CaI_10" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_534" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_533" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_532" name="k_ip310" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_531" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_530" name="r_10" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="function_4_r94" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_10)*(A*(0.5*IP3_10)^4*(1/(k1+0.5*IP3_10)^4)+L)*(CaT_10+-CaI_10)*store10
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_543" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_542" name="CaI_10" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_541" name="CaT_10" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_540" name="IP3_10" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_539" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_538" name="g_10" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_537" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_536" name="store10" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="function_4_r95" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_10^2*(1/(k2^2+CaI_10^2))*cytosol10
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_547" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_546" name="CaI_10" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_545" name="cytosol10" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_544" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="function_4_r82" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_9+k_HR*H*r_9+k_r9*r_9
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_552" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_551" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_549" name="k_r9" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_548" name="r_9" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="function_4_r83" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_9
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_554" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_553" name="IP3_9" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="function_4_r84" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_9)*(A*(0.5*IP3_9)^4*(1/(k1+0.5*IP3_9)^4)+L)*(CaT_9+-CaI_9)*store9
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_562" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_561" name="CaI_9" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_560" name="CaT_9" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_559" name="IP3_9" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_558" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_557" name="g_9" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_556" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="store9" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="function_4_r85" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_9^2*(1/(k2^2+CaI_9^2))*cytosol9
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_566" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_565" name="CaI_9" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_564" name="cytosol9" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_563" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="function_4_r96" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_10+-IP3_9)*cytosol10
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_570" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_569" name="IP3_10" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_568" name="IP3_9" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_567" name="cytosol10" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="function_4_r98" type="UserDefined" reversible="true">
      <Expression>
        k_ip311*H*r_11*(1+-(k3*(1/(CaI_11+k3))))*(1/(kcat+r_11))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_576" name="CaI_11" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_575" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_574" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_573" name="k_ip311" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_572" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_571" name="r_11" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="function_4_r110" type="UserDefined" reversible="true">
      <Expression>
        k_ip313*H*r_13*(1+-(k3*(1/(CaI_13+k3))))*(1/(kcat+r_13))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_582" name="CaI_13" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_581" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_580" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_579" name="k_ip313" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_578" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="r_13" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="function_4_r109" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T11:14:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        0.5*D*IP3_12
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_584" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_583" name="IP3_12" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="function_4_r107" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_110">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T11:14:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k_d*r_12+k_HR*H*r_12+k_r12*r_12
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_589" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_588" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_587" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_586" name="k_r12" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_585" name="r_12" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="function_4_r105" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_12^4*(1+-g_12)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_592" name="CaI_12" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_591" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_590" name="g_12" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="function_4_r92" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_10^4*(1+-g_10)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_595" name="CaI_10" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_594" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_593" name="g_10" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="function_4_r93" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_10
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_597" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_596" name="IP3_10" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="function_4_r121" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_14
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_599" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="IP3_14" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="function_4_r119" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_14+k_HR*H*r_14+k_r14*r_14
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_604" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_603" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_602" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_601" name="k_r14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_600" name="r_14" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="function_4_r117" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_14^4*(1+-g_14)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_607" name="CaI_14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_606" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_605" name="g_14" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="function_4_r99" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_11^4*(1+-g_11)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_610" name="CaI_11" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_609" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_608" name="g_11" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="function_4_r101" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_11+k_HR*H*r_11+k_r11*r_11
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_615" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_614" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_613" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_612" name="k_r11" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_611" name="r_11" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="function_4_r103" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_11
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_617" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_616" name="IP3_11" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="function_4_r104" type="UserDefined" reversible="true">
      <Expression>
        k_ip312*H*r_12*(1+-(k3*(1/(CaI_12+k3))))*(1/(kcat+r_12))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_623" name="CaI_12" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_622" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_621" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_620" name="k_ip312" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_619" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_618" name="r_12" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="function_4_r122" type="UserDefined" reversible="true">
      <Expression>
        k_ip315*H*r_15*(1+-(k3*(1/(CaI_15+k3))))*(1/(kcat+r_15))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_629" name="CaI_15" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_628" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_627" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_626" name="k_ip315" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_625" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_624" name="r_15" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="function_4_r128" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_11)*(A*(0.5*IP3_11)^4*(1/(k1+0.5*IP3_11)^4)+L)*(CaT_11+-CaI_11)*store11
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_637" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_636" name="CaI_11" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_635" name="CaT_11" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_634" name="IP3_11" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_633" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_632" name="g_11" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_631" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_630" name="store11" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="function_4_r129" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_11^2*(1/(k2^2+CaI_11^2))*cytosol11
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_641" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_640" name="CaI_11" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_639" name="cytosol11" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_638" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_124" name="function_4_r130" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_12)*(A*(0.5*IP3_12)^4*(1/(k1+0.5*IP3_12)^4)+L)*(CaT_12+-CaI_12)*store12
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_649" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_648" name="CaI_12" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_647" name="CaT_12" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_646" name="IP3_12" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_645" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_644" name="g_12" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_643" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_642" name="store12" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_125" name="function_4_r111" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_13^4*(1+-g_13)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_652" name="CaI_13" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_651" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_650" name="g_13" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="function_4_r113" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_126">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T11:14:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        k_d*r_13+k_HR*H*r_13+k_r13*r_13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_657" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_656" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_655" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_654" name="k_r13" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_653" name="r_13" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_127" name="function_4_r115" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_659" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_658" name="IP3_13" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_128" name="function_4_r116" type="UserDefined" reversible="true">
      <Expression>
        k_ip314*H*r_14*(1+-(k3*(1/(CaI_14+k3))))*(1/(kcat+r_14))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_665" name="CaI_14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_664" name="H" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_663" name="k3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_662" name="k_ip314" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_661" name="kcat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_660" name="r_14" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_129" name="function_4_r123" type="UserDefined" reversible="true">
      <Expression>
        E*CaI_15^4*(1+-g_15)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_668" name="CaI_15" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_667" name="E" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_666" name="g_15" order="2" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_130" name="function_4_r125" type="UserDefined" reversible="true">
      <Expression>
        k_d*r_15+k_HR*H*r_15+k_r15*r_15
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_673" name="H" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_672" name="k_HR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_671" name="k_d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_670" name="k_r15" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_669" name="r_15" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_131" name="function_4_r127" type="UserDefined" reversible="true">
      <Expression>
        0.5*D*IP3_15
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_675" name="D" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_674" name="IP3_15" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_132" name="function_4_r139" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_11+-IP3_10)*cytosol11
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_679" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_678" name="IP3_10" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_677" name="IP3_11" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_676" name="cytosol11" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_133" name="function_4_r134" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_14)*(A*(0.5*IP3_14)^4*(1/(k1+0.5*IP3_14)^4)+L)*(CaT_14+-CaI_14)*store14
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_687" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_686" name="CaI_14" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_685" name="CaT_14" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_684" name="IP3_14" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_683" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_682" name="g_14" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_681" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_680" name="store14" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_134" name="function_4_r141" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_13+-IP3_12)*cytosol13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_691" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_690" name="IP3_12" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_689" name="IP3_13" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_688" name="cytosol13" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_135" name="function_4_r143" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_12+-IP3_11)*cytosol12
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_695" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_694" name="IP3_11" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_693" name="IP3_12" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_692" name="cytosol12" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_136" name="function_4_r137" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_15^2*(1/(k2^2+CaI_15^2))*cytosol15
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_699" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_698" name="CaI_15" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_697" name="cytosol15" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_696" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_137" name="function_4_r131" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_12^2*(1/(k2^2+CaI_12^2))*cytosol12
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_703" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_702" name="CaI_12" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_701" name="cytosol12" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_700" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_138" name="function_4_r132" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_13)*(A*(0.5*IP3_13)^4*(1/(k1+0.5*IP3_13)^4)+L)*(CaT_13+-CaI_13)*store13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_711" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_710" name="CaI_13" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_709" name="CaT_13" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_708" name="IP3_13" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_707" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_706" name="g_13" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_705" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_704" name="store13" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_139" name="function_4_r133" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_13^2*(1/(k2^2+CaI_13^2))*cytosol13
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_715" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_714" name="CaI_13" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_713" name="cytosol13" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_712" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_140" name="function_4_r135" type="UserDefined" reversible="true">
      <Expression>
        B*CaI_14^2*(1/(k2^2+CaI_14^2))*cytosol14
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_719" name="B" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_718" name="CaI_14" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_717" name="cytosol14" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_716" name="k2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_141" name="function_4_r136" type="UserDefined" reversible="true">
      <Expression>
        (1+-g_15)*(A*(0.5*IP3_15)^4*(1/(k1+0.5*IP3_15)^4)+L)*(CaT_15+-CaI_15)*store15
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_727" name="A" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_726" name="CaI_15" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_725" name="CaT_15" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_724" name="IP3_15" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_723" name="L" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_722" name="g_15" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_721" name="k1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_720" name="store15" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_142" name="function_4_r145" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_14+-IP3_13)*cytosol14
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_731" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_730" name="IP3_13" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_729" name="IP3_14" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_728" name="cytosol14" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_143" name="function_4_r147" type="UserDefined" reversible="true">
      <Expression>
        G*(IP3_15+-IP3_14)*cytosol15
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_735" name="G" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_734" name="IP3_14" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_733" name="IP3_15" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_732" name="cytosol15" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords" simulationType="time" timeUnit="s" volumeUnit="fl" areaUnit="µm²" lengthUnit="µm" quantityUnit="#" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:owl="http://www.w3.org/2002/07/owl#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty rdf:resource="urn:miriam:biomodels.db:MODEL1603110003"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:go:GO:0019722"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:bto:BTO:0000575"/>
    <bqmodel:isInstanceOf rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Computational modeling of Spatio-temporal Ca2+ Signal Propagation along Hepatocyte Cords</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:27076052"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T15:15:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>averma@udel.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Verma</vCard:Family>
                <vCard:Given>Aalap</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>University of Delaware</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
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
  </rdf:Description>
  <rdf:Description rdf:about="http://sourceforge.net/projects/vcell/vcml/cbit.vcell.biomodel.BioModel/2075830324">
    <bqbiol:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:taxonomy:10116"/>
      </rdf:Bag>
    </bqbiol:is>
    <bqbiol:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:obo.go:GO%3A0051279"/>
      </rdf:Bag>
    </bqbiol:isVersionOf>
  </rdf:Description>
  <rdf:Description rdf:about="http://biomodels.net/biology-qualifiers/is">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/is"/>
  </rdf:Description>
  <rdf:Description rdf:about="http://www.w3.org/1999/02/22-rdf-syntax-ns#_1">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/_1"/>
  </rdf:Description>
  <rdf:Description rdf:about="urn:miriam:obo.go:GO%3A0051279">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/GO%3A0051279"/>
  </rdf:Description>
  <rdf:Description rdf:about="http://www.w3.org/1999/02/22-rdf-syntax-ns#type">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/type"/>
  </rdf:Description>
  <rdf:Description rdf:about="http://biomodels.net/biology-qualifiers/isVersionOf">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/isVersionOf"/>
  </rdf:Description>
  <rdf:Description rdf:about="urn:miriam:taxonomy:10116">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/10116"/>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords</div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/27076052" title="Access to this publication">Computational Modeling of
    Spatiotemporal Ca(2+) Signal Propagation Along Hepatocyte
    Cords.</a>
      </div>
      <div class="bibo:authorList">Verma A, Makadia H, Hoek JB,
  Ogunnaike BA, Vadigepalli R.</div>
      <div class="bibo:Journal">IEEE Trans Biomed Eng 2016 Oct; 63(10):
  2047-2055</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>The purpose of this study is to model the dynamics of
    lobular Ca(2+) wave propagation induced by an extracellular
    stimulus, and to analyze the effect of spatially systematic
    variations in cell-intrinsic signaling parameters on sinusoidal
    Ca(2+) response.We developed a computational model of lobular
    scale Ca(2+) signaling that accounts for receptor- mediated
    initiation of cell-intrinsic Ca(2+) signal in hepatocytes and
    its propagation to neighboring hepatocytes through gap
    junction-mediated molecular exchange.Analysis of the
    simulations showed that a pericentral-to-periportal spatial
    gradient in hormone sensitivity and/or rates of IP3 synthesis
    underlies the Ca(2+) wave propagation. We simulated specific
    cases corresponding to localized disruptions in the graded
    pattern of these parameters along a hepatic sinusoid.
    Simulations incorporating locally altered parameters exhibited
    Ca(2+) waves that do not propagate throughout the hepatic
    plate. Increased gap junction coupling restored normal Ca(2+)
    wave propagation when hepatocytes with low Ca(2+) signaling
    ability were localized in the midlobular or the pericentral
    region.Multiple spatial patterns in intracellular signaling
    parameters can lead to Ca(2+) wave propagation that is
    consistent with the experimentally observed spatial patterns of
    Ca(2+) dynamics. Based on simulations and analysis, we predict
    that increased gap junction-mediated intercellular coupling can
    induce robust Ca(2+) signals in otherwise poorly responsive
    hepatocytes, at least partly restoring the sinusoidally
    oriented Ca (2+) waves.Our bottom-up model of agonist-evoked
    spatial Ca(2+) patterns can be integrated with detailed
    descriptions of liver histology to study Ca(2+) regulation at
    the tissue level.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/MODEL1603110003">MODEL1603110003</a>.</p>
      <p>To cite BioModels Database, please use: 
  <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database:
  An enhanced, curated and annotated resource for published
  quantitative kinetic models</a>.</p>
    </div>
    <div class="dc:license">
      <p>To the extent possible under law, all copyright and related or
  neighbouring rights to this encoded model have been dedicated to
  the public domain worldwide. Please refer to 
  <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0
  Public Domain Dedication</a> for more information.</p>
    </div>
  </body>

    </Comment>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:BioModel Name="Ca_Osc_Sinusoid_15cells_Rev2_NoAnno" KeyValue="98636122"/>
    <vcell:SimulationSpec Name="Application0" KeyValue="98635879"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cytosol5" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 5</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_1" name="store5" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 5</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_2" name="cytosol4" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 4</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_3" name="cytosol1" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:18:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 1</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_4" name="cytosol6" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 6</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_5" name="store6" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 6</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_6" name="store1" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 1</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_7" name="store3" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 3</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_8" name="cytosol3" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 3</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_9" name="cytosol7" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 7</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_10" name="store7" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 7</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_11" name="cytosol8" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 8</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_12" name="store8" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 8</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_13" name="cytosol2" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 2</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_14" name="store2" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 2</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_15" name="cytosol9" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 9</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_16" name="store9" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 9</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_17" name="cytosol10" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T10:29:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 10</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_18" name="store10" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 10</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_19" name="cytosol11" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:18:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 11</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_20" name="store11" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 11</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_21" name="cytosol13" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 13</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_22" name="store13" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 13</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_23" name="cytosol14" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 14</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_24" name="store14" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 14</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_25" name="cytosol15" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 15</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_26" name="store15" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 15</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_27" name="store4" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 4</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_28" name="cytosol12" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosol, Cell 12</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_29" name="store12" simulationType="fixed" dimensionality="3" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Ca Store, Cell 12</vcell:FreeText>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="cytosolic Ca2+_CaI_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T15:15:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00076"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosolic Ca,Cell 1</vcell:FreeText>
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s1"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="total IP3R_g_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:owl="http://www.w3.org/2002/07/owl#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P29995"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
  <rdf:Description rdf:about="urn:miriam:uniprot:P29995">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/P29995"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>IP3R, Cell 1</vcell:FreeText>
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s2"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="cytosolic IP3_IP3_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:owl="http://www.w3.org/2002/07/owl#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="http://sourceforge.net/projects/vcell/vcml/cbit.vcell.model.Species/228359481">
    <bqbiol:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C01245"/>
      </rdf:Bag>
    </bqbiol:is>
  </rdf:Description>
  <rdf:Description rdf:about="urn:miriam:kegg.compound:C01245">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/C01245"/>
  </rdf:Description>
  <rdf:Description>
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/Bag"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Cytosolic IP3, Cell 1</vcell:FreeText>
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s3"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="total receptor levels _r_1" simulationType="reactions" compartment="Compartment_3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:owl="http://www.w3.org/2002/07/owl#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:uniprot:P30560"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
  <rdf:Description rdf:about="urn:miriam:uniprot:P30560">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/P30560"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Hormone receptor, Cell 1</vcell:FreeText>
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s4"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="total intracellular store Ca2+ content_CaT_1" simulationType="reactions" compartment="Compartment_6" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:owl="http://www.w3.org/2002/07/owl#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:kegg.compound:C00076"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:ensembl:NewID"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
  <rdf:Description rdf:about="urn:miriam:ensembl:NewID">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/NewID"/>
  </rdf:Description>
  <rdf:Description rdf:about="urn:miriam:kegg.compound:C00076">
    <owl:sameAs rdf:resource="http://www.sbml.org/sbml/level2/C00076"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:FreeText>Store Ca, Cell 1</vcell:FreeText>
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s0"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="total IP3R_g_2" simulationType="reactions" compartment="Compartment_13" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s6"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="total receptor levels _r_2" simulationType="reactions" compartment="Compartment_13" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s8"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="cytosolic Ca2+_CaI_2" simulationType="reactions" compartment="Compartment_13" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s9"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="cytosolic IP3_IP3_2" simulationType="reactions" compartment="Compartment_13" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s10"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="total intracellular store Ca2+ content_CaT_2" simulationType="reactions" compartment="Compartment_14" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s11"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="cytosolic Ca2+_CaI_3" simulationType="reactions" compartment="Compartment_8" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s12"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="cytosolic IP3_IP3_3" simulationType="reactions" compartment="Compartment_8" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s13"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="total IP3R_g_3" simulationType="reactions" compartment="Compartment_8" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s15"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="total receptor levels _r_3" simulationType="reactions" compartment="Compartment_8" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s16"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="total intracellular store Ca2+ content_CaT_3" simulationType="reactions" compartment="Compartment_7" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s17"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="cytosolic Ca2+_CaI_4" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s18"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="cytosolic IP3_IP3_4" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s19"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="total receptor levels _r_4" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s21"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="total IP3R_g_4" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s22"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="total intracellular store Ca2+ content_CaT_4" simulationType="reactions" compartment="Compartment_27" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s23"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="total receptor levels _r_5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s24"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="cytosolic IP3_IP3_5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s20"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="total IP3R_g_5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s25"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="cytosolic Ca2+_CaI_5" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s26"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="total intracellular store Ca2+ content_CaT_5" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s5"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="cytosolic Ca2+_CaI_6" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s27"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="total IP3R_g_6" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s28"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="total receptor levels _r_6" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s29"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="cytosolic IP3_IP3_6" simulationType="reactions" compartment="Compartment_4" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s30"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="total intracellular store Ca2+ content_CaT_6" simulationType="reactions" compartment="Compartment_5" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s7"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="cytosolic Ca2+_CaI_7" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s31"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="total IP3R_g_7" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s32"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="total receptor levels_ r_7" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s33"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="cytosolic IP3_IP3_7" simulationType="reactions" compartment="Compartment_9" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s34"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="total intracellular store Ca2+ content_CaT_7" simulationType="reactions" compartment="Compartment_10" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s14"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="total receptor levels _r_8" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s35"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="cytosolic IP3_IP3_8" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s36"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="total IP3R_g_8" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:18:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s37"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="cytosolic Ca2+_CaI_8" simulationType="reactions" compartment="Compartment_11" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s38"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="total intracellular store Ca2+ content_CaT_8" simulationType="reactions" compartment="Compartment_12" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s39"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="cytosolic IP3_IP3_9" simulationType="reactions" compartment="Compartment_15" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s40"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="cytosolic Ca2+_CaI_9" simulationType="reactions" compartment="Compartment_15" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s41"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="total receptor levels _r_9" simulationType="reactions" compartment="Compartment_15" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s42"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="total IP3R_g_9" simulationType="reactions" compartment="Compartment_15" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s43"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="total intracellular store Ca2+ content_CaT_9" simulationType="reactions" compartment="Compartment_16" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s44"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="total receptor levels _r_10" simulationType="reactions" compartment="Compartment_17" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s45"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="cytosolic IP3_IP3_10" simulationType="reactions" compartment="Compartment_17" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s46"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="total IP3R_g_10" simulationType="reactions" compartment="Compartment_17" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s47"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="cytosolic Ca2+_CaI_10" simulationType="reactions" compartment="Compartment_17" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s48"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="total intracellular store Ca2+ content_CaT_10" simulationType="reactions" compartment="Compartment_18" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s49"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="cytosolic IP3_IP3_11" simulationType="reactions" compartment="Compartment_19" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s50"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="total IP3R_g_11" simulationType="reactions" compartment="Compartment_19" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s51"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="cytosolic Ca2+_CaI_11" simulationType="reactions" compartment="Compartment_19" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s52"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="total receptor levels _r_11" simulationType="reactions" compartment="Compartment_19" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s53"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="cytosolic IP3_IP3_12" simulationType="reactions" compartment="Compartment_28" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s54"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="total IP3R_g_12" simulationType="reactions" compartment="Compartment_28" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s55"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="cytosolic Ca2+_CaI_12" simulationType="reactions" compartment="Compartment_28" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s56"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="total receptor levels _r_12" simulationType="reactions" compartment="Compartment_28" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s57"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="cytosolic IP3_IP3_13" simulationType="reactions" compartment="Compartment_21" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s58"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="total IP3R_g_13" simulationType="reactions" compartment="Compartment_21" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s59"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="cytosolic Ca2+_CaI_13" simulationType="reactions" compartment="Compartment_21" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s60"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="total receptor levels _r_13" simulationType="reactions" compartment="Compartment_21" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s61"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="cytosolic IP3_IP3_14" simulationType="reactions" compartment="Compartment_23" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s62"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="total IP3R_g_14" simulationType="reactions" compartment="Compartment_23" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s63"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="cytosolic Ca2+_CaI_14" simulationType="reactions" compartment="Compartment_23" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s64"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="total receptor levels _r_14" simulationType="reactions" compartment="Compartment_23" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s65"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="cytosolic IP3_IP3_15" simulationType="reactions" compartment="Compartment_25" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s66"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="total IP3R_g_15" simulationType="reactions" compartment="Compartment_25" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s67"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="cytosolic Ca2+_CaI_15" simulationType="reactions" compartment="Compartment_25" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s68"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="total receptor levels _r_15" simulationType="reactions" compartment="Compartment_25" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s69"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="total intracellular store Ca2+ content_CaT_11" simulationType="reactions" compartment="Compartment_20" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s70"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="total intracellular store Ca2+ content_CaT_12" simulationType="reactions" compartment="Compartment_29" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s71"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="total intracellular store Ca2+ content_CaT_13" simulationType="reactions" compartment="Compartment_22" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s72"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="total intracellular store Ca2+ content_CaT_14" simulationType="reactions" compartment="Compartment_24" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s73"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="total intracellular store Ca2+ content_CaT_15" simulationType="reactions" compartment="Compartment_26" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:Compound Name="s74"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="H" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T10:39:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_d" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k_HR" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T10:57:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kcat" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="D" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="E" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="F" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T10:57:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="A" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T11:04:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="L" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="B" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T11:04:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="k2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k_r1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-15T11:21:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="G" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T15:18:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="k_r2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k_r" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="k_r3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k_r4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="k_r5" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="k_r6" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="k_r7" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="k_r8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="k_r9" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="k_r10" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="k_r11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="k_r12" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="k_r13" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="k_r14" simulationType="fixed" addNoise="false">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="r0" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T15:15:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol1"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5069" name="k_ip31" value="0.785714"/>
          <Constant key="Parameter_5071" name="H" value="0.00018"/>
          <Constant key="Parameter_5072" name="k3" value="1"/>
          <Constant key="Parameter_5066" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_5069"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="r1" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol1"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5068" name="H" value="0.00018"/>
          <Constant key="Parameter_5067" name="k_HR" value="1"/>
          <Constant key="Parameter_5070" name="k_d" value="0.34"/>
          <Constant key="Parameter_5073" name="k_r1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="r3" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store1"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5064" name="A" value="0.2"/>
          <Constant key="Parameter_5062" name="L" value="0.00015"/>
          <Constant key="Parameter_5061" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="r4" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol1"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5065" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="r5" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol1"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5063" name="B" value="0.082"/>
          <Constant key="Parameter_5038" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="r6" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol1"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5036" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="r7" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol1"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5035" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="r2" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol1"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5039" name="v" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="r8" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol2"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5037" name="k_ip32" value="0.885714"/>
          <Constant key="Parameter_5041" name="H" value="0.00018"/>
          <Constant key="Parameter_5056" name="k3" value="1"/>
          <Constant key="Parameter_5044" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Parameter_5037"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="r10" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol2"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5058" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="r11" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol2"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5059" name="v" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="r12" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol2"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5053" name="H" value="0.00018"/>
          <Constant key="Parameter_5040" name="k_HR" value="1"/>
          <Constant key="Parameter_5048" name="k_d" value="0.34"/>
          <Constant key="Parameter_5055" name="k_r2" value="1.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="r13" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol2"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5042" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="r14" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol2"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5054" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="r9" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store2"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5047" name="A" value="0.2"/>
          <Constant key="Parameter_5051" name="L" value="0.00015"/>
          <Constant key="Parameter_5046" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Compartment_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="r15" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol2"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5050" name="B" value="0.082"/>
          <Constant key="Parameter_5049" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Compartment_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="r16" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol1"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5052" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="r18" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol3"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5057" name="k_ip33" value="0.757143"/>
          <Constant key="Parameter_5043" name="H" value="0.00018"/>
          <Constant key="Parameter_5045" name="k3" value="1"/>
          <Constant key="Parameter_5060" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_5057"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="r20" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol3"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5074" name="v" value="1.92857"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="r21" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol3"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5075" name="H" value="0.00018"/>
          <Constant key="Parameter_5081" name="k_HR" value="1"/>
          <Constant key="Parameter_5080" name="k_d" value="0.34"/>
          <Constant key="Parameter_5082" name="k_r3" value="1.92857"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="r22" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol3"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5077" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="r23" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol3"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5076" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="r25" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol3"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5079" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="r19" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store3"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5078" name="A" value="0.2"/>
          <Constant key="Parameter_5083" name="L" value="0.00015"/>
          <Constant key="Parameter_5087" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="r24" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol3"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5085" name="B" value="0.082"/>
          <Constant key="Parameter_5084" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Compartment_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="r27" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol3"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5088" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Compartment_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="r28" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol4"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5086" name="H" value="0.00018"/>
          <Constant key="Parameter_5090" name="k_HR" value="1"/>
          <Constant key="Parameter_5092" name="k_d" value="0.34"/>
          <Constant key="Parameter_5093" name="k_r4" value="1.35714"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="r29" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol4"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5089" name="k_ip34" value="0.857143"/>
          <Constant key="Parameter_5091" name="H" value="0.00018"/>
          <Constant key="Parameter_5096" name="k3" value="1"/>
          <Constant key="Parameter_5097" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Parameter_5089"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="r30" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol4"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5098" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="r31" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol4"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5094" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="r32" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol4"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5095" name="v" value="1.35714"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="r33" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol4"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5099" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="r34" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store4"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5101" name="A" value="0.2"/>
          <Constant key="Parameter_5100" name="L" value="0.00015"/>
          <Constant key="Parameter_5102" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Compartment_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="r35" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol4"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5103" name="B" value="0.082"/>
          <Constant key="Parameter_5104" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="r37" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol4"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5105" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="r38" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol5"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5106" name="H" value="0.00018"/>
          <Constant key="Parameter_5107" name="k_HR" value="1"/>
          <Constant key="Parameter_5114" name="k_d" value="0.34"/>
          <Constant key="Parameter_5113" name="k_r5" value="1.85714"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="r39" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol5"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5112" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="r41" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol5"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5111" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="r42" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol5"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5109" name="k_ip35" value="0.842857"/>
          <Constant key="Parameter_5108" name="H" value="0.00018"/>
          <Constant key="Parameter_5119" name="k3" value="1"/>
          <Constant key="Parameter_5116" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Parameter_5109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="r43" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol5"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5117" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="r44" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol5"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5118" name="v" value="1.85714"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="r40" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store5"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5110" name="A" value="0.2"/>
          <Constant key="Parameter_5115" name="L" value="0.00015"/>
          <Constant key="Parameter_5120" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="r45" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol5"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5121" name="B" value="0.082"/>
          <Constant key="Parameter_5122" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="r47" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol5"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5123" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="r49" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol6"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5128" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="r51" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol6"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5125" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="r52" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol6"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5127" name="v" value="1.78571"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="r53" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol6"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5126" name="H" value="0.00018"/>
          <Constant key="Parameter_5124" name="k_HR" value="1"/>
          <Constant key="Parameter_5188" name="k_d" value="0.34"/>
          <Constant key="Parameter_5191" name="k_r6" value="1.78571"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="r54" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol6"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5148" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="r55" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol6"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5129" name="k_ip36" value="0.814286"/>
          <Constant key="Parameter_5185" name="H" value="0.00018"/>
          <Constant key="Parameter_5186" name="k3" value="1"/>
          <Constant key="Parameter_5130" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Parameter_5129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="r48" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol6"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5187" name="B" value="0.082"/>
          <Constant key="Parameter_5134" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="r50" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store6"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5136" name="A" value="0.2"/>
          <Constant key="Parameter_5137" name="L" value="0.00015"/>
          <Constant key="Parameter_5131" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="r57" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol6"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5133" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="r58" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol7"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5132" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="r59" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol7"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5135" name="v" value="1.57143"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="r60" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol7"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5138" name="k_ip37" value="0.742857"/>
          <Constant key="Parameter_5147" name="H" value="0.00018"/>
          <Constant key="Parameter_5144" name="k3" value="1"/>
          <Constant key="Parameter_5143" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Parameter_5138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="r62" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol7"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5145" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="r63" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol7"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5140" name="H" value="0.00018"/>
          <Constant key="Parameter_5139" name="k_HR" value="1"/>
          <Constant key="Parameter_5141" name="k_d" value="0.34"/>
          <Constant key="Parameter_5146" name="k_r7" value="1.57143"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="r65" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol7"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5142" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="r61" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store7"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5023" name="A" value="0.2"/>
          <Constant key="Parameter_5026" name="L" value="0.00015"/>
          <Constant key="Parameter_5028" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_91" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Compartment_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="r64" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol7"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5022" name="B" value="0.082"/>
          <Constant key="Parameter_5021" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="r67" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol7"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5031" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="r68" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol8"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5024" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="r69" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol8"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5025" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="r70" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol8"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5030" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="r71" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol8"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5027" name="H" value="0.00018"/>
          <Constant key="Parameter_5033" name="k_HR" value="1"/>
          <Constant key="Parameter_5032" name="k_d" value="0.34"/>
          <Constant key="Parameter_5029" name="k_r8" value="1.71429"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="r73" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol8"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5183" name="k_ip38" value="0.828571"/>
          <Constant key="Parameter_5184" name="H" value="0.00018"/>
          <Constant key="Parameter_4885" name="k3" value="1"/>
          <Constant key="Parameter_4884" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_90" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="Parameter_5183"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="r74" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol8"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4883" name="v" value="1.71429"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="r72" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store8"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4882" name="A" value="0.2"/>
          <Constant key="Parameter_4881" name="L" value="0.00015"/>
          <Constant key="Parameter_4880" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_94" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Compartment_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="r75" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol8"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4879" name="B" value="0.082"/>
          <Constant key="Parameter_4878" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_95" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="Compartment_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="r77" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol8"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4877" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_96" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Compartment_11"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="r78" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol9"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4876" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_92" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="r79" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol9"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4875" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="r80" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol9"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4874" name="v" value="1.14286"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="r81" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol9"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4873" name="k_ip39" value="0.771429"/>
          <Constant key="Parameter_4872" name="H" value="0.00018"/>
          <Constant key="Parameter_4871" name="k3" value="1"/>
          <Constant key="Parameter_4870" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_93" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Parameter_4873"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="r82" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol9"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4869" name="H" value="0.00018"/>
          <Constant key="Parameter_4868" name="k_HR" value="1"/>
          <Constant key="Parameter_4867" name="k_d" value="0.34"/>
          <Constant key="Parameter_4866" name="k_r9" value="1.14286"/>
        </ListOfConstants>
        <KineticLaw function="Function_102" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="r83" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol9"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4865" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_103" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="r84" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store9"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4864" name="A" value="0.2"/>
          <Constant key="Parameter_4863" name="L" value="0.00015"/>
          <Constant key="Parameter_4862" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_104" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Compartment_16"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="r85" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol9"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4861" name="B" value="0.082"/>
          <Constant key="Parameter_4860" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_105" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="Compartment_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="r87" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol9"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4859" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_97" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Compartment_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="r88" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol10"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4858" name="v" value="1.64286"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="r89" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol10"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4857" name="k_ip310" value="0.728571"/>
          <Constant key="Parameter_4856" name="H" value="0.00018"/>
          <Constant key="Parameter_4855" name="k3" value="1"/>
          <Constant key="Parameter_4854" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_99" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Parameter_4857"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="r90" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol10"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4853" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="r91" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol10"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4852" name="H" value="0.00018"/>
          <Constant key="Parameter_4851" name="k_HR" value="1"/>
          <Constant key="Parameter_4850" name="k_d" value="0.34"/>
          <Constant key="Parameter_4849" name="k_r10" value="1.64286"/>
        </ListOfConstants>
        <KineticLaw function="Function_98" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="r92" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol10"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4848" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_112" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="r93" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol10"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4847" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_113" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="r94" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store10"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4846" name="A" value="0.2"/>
          <Constant key="Parameter_4845" name="L" value="0.00015"/>
          <Constant key="Parameter_4844" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_100" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Compartment_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="r95" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol10"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4843" name="B" value="0.082"/>
          <Constant key="Parameter_4842" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_101" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Compartment_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="r96" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol10"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4841" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_106" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="Compartment_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="r98" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol11"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4840" name="k_ip311" value="0.714286"/>
          <Constant key="Parameter_4839" name="H" value="0.00018"/>
          <Constant key="Parameter_4838" name="k3" value="1"/>
          <Constant key="Parameter_4837" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_107" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Parameter_4840"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="r99" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T15:18:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol11"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4836" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_117" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="r100" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol11"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4835" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="r101" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol11"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4834" name="H" value="0.00018"/>
          <Constant key="Parameter_4833" name="k_HR" value="1"/>
          <Constant key="Parameter_4832" name="k_d" value="0.34"/>
          <Constant key="Parameter_4831" name="k_r11" value="1.42857"/>
        </ListOfConstants>
        <KineticLaw function="Function_118" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="r102" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol11"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4830" name="v" value="1.42857"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="r103" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol11"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4829" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_119" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="r104" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol12"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_56" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4828" name="k_ip312" value="0.871429"/>
          <Constant key="Parameter_4827" name="H" value="0.00018"/>
          <Constant key="Parameter_4826" name="k3" value="1"/>
          <Constant key="Parameter_4825" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_120" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="Parameter_4828"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="r105" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol12"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4824" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_111" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="r106" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol12"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4823" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="r107" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol12"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4822" name="H" value="0.00018"/>
          <Constant key="Parameter_4821" name="k_HR" value="1"/>
          <Constant key="Parameter_4820" name="k_d" value="0.34"/>
          <Constant key="Parameter_4819" name="k_r12" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_110" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="r108" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol12"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4818" name="v" value="2"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="r109" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol12"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4817" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_109" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="r110" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol13"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4816" name="k_ip313" value="0.9"/>
          <Constant key="Parameter_4815" name="H" value="0.00018"/>
          <Constant key="Parameter_4814" name="k3" value="1"/>
          <Constant key="Parameter_4813" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_108" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Parameter_4816"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="r111" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol13"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4812" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_125" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="r112" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-10-14T16:16:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol13"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4811" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="r113" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol13"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4810" name="H" value="0.00018"/>
          <Constant key="Parameter_4809" name="k_HR" value="1"/>
          <Constant key="Parameter_4808" name="k_d" value="0.34"/>
          <Constant key="Parameter_4807" name="k_r13" value="1.21429"/>
        </ListOfConstants>
        <KineticLaw function="Function_126" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_657">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_656">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="r114" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol13"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4806" name="v" value="1.21429"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="r115" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol13"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4805" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_127" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="r116" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol14"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_64" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4804" name="k_ip314" value="0.7"/>
          <Constant key="Parameter_4803" name="H" value="0.00018"/>
          <Constant key="Parameter_4802" name="k3" value="1"/>
          <Constant key="Parameter_4801" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_128" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Parameter_4804"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="r117" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol14"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4800" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_116" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="r118" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol14"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4799" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="r119" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol14"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4798" name="H" value="0.00018"/>
          <Constant key="Parameter_4797" name="k_HR" value="1"/>
          <Constant key="Parameter_4796" name="k_d" value="0.34"/>
          <Constant key="Parameter_4795" name="k_r14" value="1.07143"/>
        </ListOfConstants>
        <KineticLaw function="Function_115" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="r120" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol14"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4794" name="v" value="1.07143"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="r121" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol14"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4793" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_114" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="r122" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol15"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_68" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4792" name="k_ip315" value="0.8"/>
          <Constant key="Parameter_4791" name="H" value="0.00018"/>
          <Constant key="Parameter_4790" name="k3" value="1"/>
          <Constant key="Parameter_4789" name="kcat" value="0.45"/>
        </ListOfConstants>
        <KineticLaw function="Function_121" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="Parameter_4792"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="r123" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol15"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4788" name="E" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_129" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="r124" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol15"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4787" name="v" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="r125" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol15"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4786" name="k_r15" value="1.28571"/>
          <Constant key="Parameter_4785" name="H" value="0.00018"/>
          <Constant key="Parameter_4784" name="k_HR" value="1"/>
          <Constant key="Parameter_4783" name="k_d" value="0.34"/>
        </ListOfConstants>
        <KineticLaw function="Function_130" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="Parameter_4786"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="r126" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol15"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4782" name="v" value="1.28571"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_48">
              <SourceParameter reference="Parameter_4782"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="r127" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol15"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4781" name="D" value="1.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_131" unitType="Default" scalingCompartment="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="r128" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store11"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4780" name="A" value="0.2"/>
          <Constant key="Parameter_4779" name="L" value="0.00015"/>
          <Constant key="Parameter_4778" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_122" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Compartment_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="r129" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol11"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4777" name="B" value="0.082"/>
          <Constant key="Parameter_4776" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_123" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Compartment_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="r130" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store12"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4775" name="A" value="0.2"/>
          <Constant key="Parameter_4774" name="L" value="0.00015"/>
          <Constant key="Parameter_4773" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_124" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="Compartment_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="r131" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol12"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4772" name="B" value="0.082"/>
          <Constant key="Parameter_4771" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_137" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="Compartment_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="r132" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store13"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_59" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4770" name="A" value="0.2"/>
          <Constant key="Parameter_4769" name="L" value="0.00015"/>
          <Constant key="Parameter_4768" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_138" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_707">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="Compartment_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="r133" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol13"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4767" name="B" value="0.082"/>
          <Constant key="Parameter_4766" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_139" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="Compartment_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="r134" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store14"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_63" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4765" name="A" value="0.2"/>
          <Constant key="Parameter_4764" name="L" value="0.00015"/>
          <Constant key="Parameter_4763" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_133" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="Compartment_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="r135" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol14"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4762" name="B" value="0.082"/>
          <Constant key="Parameter_4761" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_140" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="r136" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="store15"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_67" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4760" name="A" value="0.2"/>
          <Constant key="Parameter_4759" name="L" value="0.00015"/>
          <Constant key="Parameter_4758" name="k1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_141" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_723">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_722">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="Compartment_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="r137" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol15"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4757" name="B" value="0.082"/>
          <Constant key="Parameter_4756" name="k2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_136" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="Metabolite_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="Compartment_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="r139" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol11"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4755" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_132" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="Compartment_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="r141" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol13"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4754" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_134" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_690">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Compartment_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="r143" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol12"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4753" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_135" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Compartment_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="r145" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol14"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4752" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_142" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_730">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="Compartment_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="r147" reversible="true" fast="false" addNoise="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://sourceforge.net/projects/vcell">
<vcell:VCellInfo xmlns:vcell="http://sourceforge.net/projects/vcell">
  <vcell:VCMLSpecific>
    <vcell:SimpleReaction Structure="cytosol15"/>
    <vcell:ReactionRate Name="J"/>
  </vcell:VCMLSpecific>
</vcell:VCellInfo>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4751" name="G" value="0.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_143" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_735">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_734">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="Compartment_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_0" name="event_1" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time> ge 200
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="ModelValue_0">
            <Expression>
              1.8
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store5]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store6]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store1]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store3]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store7]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store8]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store2]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store9]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store10]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store11]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store13]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store14]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store15]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store4]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store12]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1],Vector=Metabolites[cytosolic Ca2+_CaI_1]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1],Vector=Metabolites[total IP3R_g_1]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1],Vector=Metabolites[cytosolic IP3_IP3_1]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1],Vector=Metabolites[total receptor levels _r_1]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store1],Vector=Metabolites[total intracellular store Ca2+ content_CaT_1]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2],Vector=Metabolites[total IP3R_g_2]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2],Vector=Metabolites[total receptor levels _r_2]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2],Vector=Metabolites[cytosolic Ca2+_CaI_2]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2],Vector=Metabolites[cytosolic IP3_IP3_2]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store2],Vector=Metabolites[total intracellular store Ca2+ content_CaT_2]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3],Vector=Metabolites[cytosolic Ca2+_CaI_3]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3],Vector=Metabolites[cytosolic IP3_IP3_3]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3],Vector=Metabolites[total IP3R_g_3]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3],Vector=Metabolites[total receptor levels _r_3]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store3],Vector=Metabolites[total intracellular store Ca2+ content_CaT_3]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4],Vector=Metabolites[cytosolic Ca2+_CaI_4]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4],Vector=Metabolites[cytosolic IP3_IP3_4]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4],Vector=Metabolites[total receptor levels _r_4]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4],Vector=Metabolites[total IP3R_g_4]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store4],Vector=Metabolites[total intracellular store Ca2+ content_CaT_4]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5],Vector=Metabolites[total receptor levels _r_5]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5],Vector=Metabolites[cytosolic IP3_IP3_5]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5],Vector=Metabolites[total IP3R_g_5]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5],Vector=Metabolites[cytosolic Ca2+_CaI_5]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store5],Vector=Metabolites[total intracellular store Ca2+ content_CaT_5]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6],Vector=Metabolites[cytosolic Ca2+_CaI_6]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6],Vector=Metabolites[total IP3R_g_6]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6],Vector=Metabolites[total receptor levels _r_6]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6],Vector=Metabolites[cytosolic IP3_IP3_6]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store6],Vector=Metabolites[total intracellular store Ca2+ content_CaT_6]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7],Vector=Metabolites[cytosolic Ca2+_CaI_7]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7],Vector=Metabolites[total IP3R_g_7]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7],Vector=Metabolites[total receptor levels_ r_7]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7],Vector=Metabolites[cytosolic IP3_IP3_7]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store7],Vector=Metabolites[total intracellular store Ca2+ content_CaT_7]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8],Vector=Metabolites[total receptor levels _r_8]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8],Vector=Metabolites[cytosolic IP3_IP3_8]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8],Vector=Metabolites[total IP3R_g_8]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8],Vector=Metabolites[cytosolic Ca2+_CaI_8]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store8],Vector=Metabolites[total intracellular store Ca2+ content_CaT_8]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9],Vector=Metabolites[cytosolic IP3_IP3_9]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9],Vector=Metabolites[cytosolic Ca2+_CaI_9]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9],Vector=Metabolites[total receptor levels _r_9]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9],Vector=Metabolites[total IP3R_g_9]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store9],Vector=Metabolites[total intracellular store Ca2+ content_CaT_9]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10],Vector=Metabolites[total receptor levels _r_10]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10],Vector=Metabolites[cytosolic IP3_IP3_10]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10],Vector=Metabolites[total IP3R_g_10]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10],Vector=Metabolites[cytosolic Ca2+_CaI_10]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store10],Vector=Metabolites[total intracellular store Ca2+ content_CaT_10]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11],Vector=Metabolites[cytosolic IP3_IP3_11]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11],Vector=Metabolites[total IP3R_g_11]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11],Vector=Metabolites[cytosolic Ca2+_CaI_11]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11],Vector=Metabolites[total receptor levels _r_11]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12],Vector=Metabolites[cytosolic IP3_IP3_12]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12],Vector=Metabolites[total IP3R_g_12]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12],Vector=Metabolites[cytosolic Ca2+_CaI_12]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12],Vector=Metabolites[total receptor levels _r_12]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13],Vector=Metabolites[cytosolic IP3_IP3_13]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13],Vector=Metabolites[total IP3R_g_13]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13],Vector=Metabolites[cytosolic Ca2+_CaI_13]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13],Vector=Metabolites[total receptor levels _r_13]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14],Vector=Metabolites[cytosolic IP3_IP3_14]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14],Vector=Metabolites[total IP3R_g_14]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14],Vector=Metabolites[cytosolic Ca2+_CaI_14]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14],Vector=Metabolites[total receptor levels _r_14]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15],Vector=Metabolites[cytosolic IP3_IP3_15]" value="0.10000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15],Vector=Metabolites[total IP3R_g_15]" value="0.25" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15],Vector=Metabolites[cytosolic Ca2+_CaI_15]" value="0.20000000000000001" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15],Vector=Metabolites[total receptor levels _r_15]" value="0.5" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store11],Vector=Metabolites[total intracellular store Ca2+ content_CaT_11]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store12],Vector=Metabolites[total intracellular store Ca2+ content_CaT_12]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store13],Vector=Metabolites[total intracellular store Ca2+ content_CaT_13]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store14],Vector=Metabolites[total intracellular store Ca2+ content_CaT_14]" value="500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store15],Vector=Metabolites[total intracellular store Ca2+ content_CaT_15]" value="500" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H]" value="0.00018000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d]" value="0.34000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat]" value="0.45000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D]" value="1.6000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L]" value="0.00014999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B]" value="0.082000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G]" value="0.90000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r2]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r3]" value="1.928571" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r4]" value="1.357143" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r5]" value="1.857143" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r6]" value="1.785714" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r7]" value="1.571429" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r8]" value="1.714286" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r9]" value="1.142857" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r10]" value="1.642857" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r11]" value="1.428571" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r12]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r13]" value="1.214286" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r14]" value="1.071429" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r0]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r0],ParameterGroup=Parameters,Parameter=k_ip31" value="0.78571400000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r0],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r0],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r0],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r1],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r1],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r1],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r1],ParameterGroup=Parameters,Parameter=k_r1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r3],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r3],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r3],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r4],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r5],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r5],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r6],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r7],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r2],ParameterGroup=Parameters,Parameter=v" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r8],ParameterGroup=Parameters,Parameter=k_ip32" value="0.885714" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r8],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r8],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r8],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r10],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r11],ParameterGroup=Parameters,Parameter=v" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r12],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r12],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r12],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r12],ParameterGroup=Parameters,Parameter=k_r2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r13],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r14],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r9],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r9],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r9],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r15],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r15],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r16],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r18],ParameterGroup=Parameters,Parameter=k_ip33" value="0.75714300000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r18],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r18],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r18],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r20],ParameterGroup=Parameters,Parameter=v" value="1.928571" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r21],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r21],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r21],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r21],ParameterGroup=Parameters,Parameter=k_r3" value="1.928571" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r22],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r23],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r25],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r19],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r19],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r19],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r24],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r24],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r27],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r28],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r28],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r28],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r28],ParameterGroup=Parameters,Parameter=k_r4" value="1.357143" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r29],ParameterGroup=Parameters,Parameter=k_ip34" value="0.85714299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r29],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r29],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r29],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r30],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r31]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r31],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r32],ParameterGroup=Parameters,Parameter=v" value="1.357143" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r33],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r34],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r34],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r34],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r35]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r35],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r35],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r37],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r38],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r38],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r38],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r38],ParameterGroup=Parameters,Parameter=k_r5" value="1.857143" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r39]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r39],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r41]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r41],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r42]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r42],ParameterGroup=Parameters,Parameter=k_ip35" value="0.84285699999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r42],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r42],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r42],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r43],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r44]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r44],ParameterGroup=Parameters,Parameter=v" value="1.857143" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r40]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r40],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r40],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r40],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r45]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r45],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r45],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r47]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r47],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r49]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r49],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r51]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r51],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r52]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r52],ParameterGroup=Parameters,Parameter=v" value="1.785714" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r53],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r53],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r53],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r53],ParameterGroup=Parameters,Parameter=k_r6" value="1.785714" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r54],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r55]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r55],ParameterGroup=Parameters,Parameter=k_ip36" value="0.81428599999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r55],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r55],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r55],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r48]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r48],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r48],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r50]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r50],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r50],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r50],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r57]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r57],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r58]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r58],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r59]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r59],ParameterGroup=Parameters,Parameter=v" value="1.571429" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r60]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r60],ParameterGroup=Parameters,Parameter=k_ip37" value="0.74285699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r60],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r60],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r60],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r62]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r62],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r63]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r63],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r63],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r63],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r63],ParameterGroup=Parameters,Parameter=k_r7" value="1.571429" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r65]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r65],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r61],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r61],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r61],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r64]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r64],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r64],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r67]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r67],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r68]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r68],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r69]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r69],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r70]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r70],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r71]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r71],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r71],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r71],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r71],ParameterGroup=Parameters,Parameter=k_r8" value="1.714286" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r73]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r73],ParameterGroup=Parameters,Parameter=k_ip38" value="0.82857099999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r73],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r73],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r73],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r74]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r74],ParameterGroup=Parameters,Parameter=v" value="1.714286" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r72]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r72],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r72],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r72],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r75]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r75],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r75],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r77]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r77],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r78]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r78],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r79]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r79],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r80]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r80],ParameterGroup=Parameters,Parameter=v" value="1.142857" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r81]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r81],ParameterGroup=Parameters,Parameter=k_ip39" value="0.77142900000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r81],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r81],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r81],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r82]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r82],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r82],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r82],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r82],ParameterGroup=Parameters,Parameter=k_r9" value="1.142857" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r83]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r83],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r84]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r84],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r84],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r84],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r85]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r85],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r85],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r87]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r87],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r88]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r88],ParameterGroup=Parameters,Parameter=v" value="1.642857" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r89]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r89],ParameterGroup=Parameters,Parameter=k_ip310" value="0.72857099999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r89],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r89],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r89],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r90]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r90],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r91]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r91],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r91],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r91],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r91],ParameterGroup=Parameters,Parameter=k_r10" value="1.642857" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r92]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r92],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r93]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r93],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r94]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r94],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r94],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r94],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r95]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r95],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r95],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r96]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r96],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r98]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r98],ParameterGroup=Parameters,Parameter=k_ip311" value="0.71428599999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r98],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r98],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r98],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r99]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r99],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r100]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r100],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r101]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r101],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r101],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r101],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r101],ParameterGroup=Parameters,Parameter=k_r11" value="1.428571" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r102]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r102],ParameterGroup=Parameters,Parameter=v" value="1.428571" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r103]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r103],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r104]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r104],ParameterGroup=Parameters,Parameter=k_ip312" value="0.87142900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r104],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r104],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r104],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r105]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r105],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r106]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r106],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r107]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r107],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r107],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r107],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r107],ParameterGroup=Parameters,Parameter=k_r12" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r108]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r108],ParameterGroup=Parameters,Parameter=v" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r109]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r109],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r110]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r110],ParameterGroup=Parameters,Parameter=k_ip313" value="0.90000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r110],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r110],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r110],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r111]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r111],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r112]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r112],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r113]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r113],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r113],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r113],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r113],ParameterGroup=Parameters,Parameter=k_r13" value="1.214286" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r114]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r114],ParameterGroup=Parameters,Parameter=v" value="1.214286" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r115]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r115],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r116]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r116],ParameterGroup=Parameters,Parameter=k_ip314" value="0.69999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r116],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r116],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r116],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r117]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r117],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r118]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r118],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r119]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r119],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r119],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r119],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r119],ParameterGroup=Parameters,Parameter=k_r14" value="1.071429" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r120]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r120],ParameterGroup=Parameters,Parameter=v" value="1.071429" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_r14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r121]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r121],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r122]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r122],ParameterGroup=Parameters,Parameter=k_ip315" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r122],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r122],ParameterGroup=Parameters,Parameter=k3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r122],ParameterGroup=Parameters,Parameter=kcat" value="0.45000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[kcat],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r123]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r123],ParameterGroup=Parameters,Parameter=E" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[E],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r124]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r124],ParameterGroup=Parameters,Parameter=v" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[F],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r125]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r125],ParameterGroup=Parameters,Parameter=k_r15" value="1.285714" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r125],ParameterGroup=Parameters,Parameter=H" value="0.00018000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r125],ParameterGroup=Parameters,Parameter=k_HR" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r125],ParameterGroup=Parameters,Parameter=k_d" value="0.34000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r126]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r126],ParameterGroup=Parameters,Parameter=v" value="1.285714" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r127]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r127],ParameterGroup=Parameters,Parameter=D" value="1.6000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[D],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r128]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r128],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r128],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r128],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r129]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r129],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r129],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r130]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r130],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r130],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r130],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r131]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r131],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r131],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r132]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r132],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r132],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r132],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r133]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r133],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r133],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r134]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r134],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r134],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r134],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r135]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r135],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r135],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r136]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r136],ParameterGroup=Parameters,Parameter=A" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[A],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r136],ParameterGroup=Parameters,Parameter=L" value="0.00014999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[L],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r136],ParameterGroup=Parameters,Parameter=k1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r137]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r137],ParameterGroup=Parameters,Parameter=B" value="0.082000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[B],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r137],ParameterGroup=Parameters,Parameter=k2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r139]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r139],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r141]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r141],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r143]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r143],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r145]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r145],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r147]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Reactions[r147],ParameterGroup=Parameters,Parameter=G" value="0.90000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[G],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_4"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_6"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
      <StateTemplateVariable objectReference="Compartment_8"/>
      <StateTemplateVariable objectReference="Compartment_9"/>
      <StateTemplateVariable objectReference="Compartment_10"/>
      <StateTemplateVariable objectReference="Compartment_11"/>
      <StateTemplateVariable objectReference="Compartment_12"/>
      <StateTemplateVariable objectReference="Compartment_13"/>
      <StateTemplateVariable objectReference="Compartment_14"/>
      <StateTemplateVariable objectReference="Compartment_15"/>
      <StateTemplateVariable objectReference="Compartment_16"/>
      <StateTemplateVariable objectReference="Compartment_17"/>
      <StateTemplateVariable objectReference="Compartment_18"/>
      <StateTemplateVariable objectReference="Compartment_19"/>
      <StateTemplateVariable objectReference="Compartment_20"/>
      <StateTemplateVariable objectReference="Compartment_21"/>
      <StateTemplateVariable objectReference="Compartment_22"/>
      <StateTemplateVariable objectReference="Compartment_23"/>
      <StateTemplateVariable objectReference="Compartment_24"/>
      <StateTemplateVariable objectReference="Compartment_25"/>
      <StateTemplateVariable objectReference="Compartment_26"/>
      <StateTemplateVariable objectReference="Compartment_27"/>
      <StateTemplateVariable objectReference="Compartment_28"/>
      <StateTemplateVariable objectReference="Compartment_29"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.5 0.25 500 500 500 0.5 0.25 0.5 0.20000000000000001 0.25 0.5 0.25 0.5 0.5 0.25 0.20000000000000001 0.25 0.5 0.20000000000000001 0.25 0.20000000000000001 0.20000000000000001 0.5 0.25 0.5 0.25 0.20000000000000001 0.25 0.20000000000000001 0.5 0.20000000000000001 0.25 0.20000000000000001 0.5 0.5 0.25 0.20000000000000001 0.5 0.25 0.20000000000000001 0.5 0.25 0.25 0.20000000000000001 0.5 500 500 500 500 500 500 500 500 500 500 0.20000000000000001 500 500 0.20000000000000001 0.20000000000000001 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.00018000000000000001 0.34000000000000002 1 0.45000000000000001 1 1.6000000000000001 1 0.01 0.20000000000000001 0.5 0.00014999999999999999 0.082000000000000003 0.14999999999999999 1 0.90000000000000002 1.5 2 1.928571 1.357143 1.857143 1.785714 1.571429 1.714286 1.142857 1.642857 1.428571 2 1.214286 1.071429 
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
        <Parameter name="StepSize" type="float" value="7"/>
        <Parameter name="Duration" type="float" value="700"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="400"/>
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
        <Parameter name="Steady-State" type="key" value="Task_12"/>
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
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
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
        <PlotItem name="[CaI_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1],Vector=Metabolites[cytosolic Ca2+_CaI_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1],Vector=Metabolites[total IP3R_g_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1],Vector=Metabolites[cytosolic IP3_IP3_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol1],Vector=Metabolites[total receptor levels _r_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store1],Vector=Metabolites[total intracellular store Ca2+ content_CaT_1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2],Vector=Metabolites[total IP3R_g_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2],Vector=Metabolites[total receptor levels _r_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2],Vector=Metabolites[cytosolic Ca2+_CaI_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol2],Vector=Metabolites[cytosolic IP3_IP3_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_2]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store2],Vector=Metabolites[total intracellular store Ca2+ content_CaT_2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3],Vector=Metabolites[cytosolic Ca2+_CaI_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3],Vector=Metabolites[cytosolic IP3_IP3_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3],Vector=Metabolites[total IP3R_g_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol3],Vector=Metabolites[total receptor levels _r_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_3]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store3],Vector=Metabolites[total intracellular store Ca2+ content_CaT_3],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4],Vector=Metabolites[cytosolic Ca2+_CaI_4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4],Vector=Metabolites[cytosolic IP3_IP3_4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4],Vector=Metabolites[total receptor levels _r_4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol4],Vector=Metabolites[total IP3R_g_4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_4]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store4],Vector=Metabolites[total intracellular store Ca2+ content_CaT_4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5],Vector=Metabolites[total receptor levels _r_5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5],Vector=Metabolites[cytosolic IP3_IP3_5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5],Vector=Metabolites[total IP3R_g_5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol5],Vector=Metabolites[cytosolic Ca2+_CaI_5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_5]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store5],Vector=Metabolites[total intracellular store Ca2+ content_CaT_5],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6],Vector=Metabolites[cytosolic Ca2+_CaI_6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6],Vector=Metabolites[total IP3R_g_6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6],Vector=Metabolites[total receptor levels _r_6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol6],Vector=Metabolites[cytosolic IP3_IP3_6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_6]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store6],Vector=Metabolites[total intracellular store Ca2+ content_CaT_6],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7],Vector=Metabolites[cytosolic Ca2+_CaI_7],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7],Vector=Metabolites[total IP3R_g_7],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7],Vector=Metabolites[total receptor levels_ r_7],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol7],Vector=Metabolites[cytosolic IP3_IP3_7],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_7]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store7],Vector=Metabolites[total intracellular store Ca2+ content_CaT_7],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8],Vector=Metabolites[total receptor levels _r_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8],Vector=Metabolites[cytosolic IP3_IP3_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8],Vector=Metabolites[total IP3R_g_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol8],Vector=Metabolites[cytosolic Ca2+_CaI_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_8]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store8],Vector=Metabolites[total intracellular store Ca2+ content_CaT_8],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9],Vector=Metabolites[cytosolic IP3_IP3_9],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9],Vector=Metabolites[cytosolic Ca2+_CaI_9],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9],Vector=Metabolites[total receptor levels _r_9],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol9],Vector=Metabolites[total IP3R_g_9],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_9]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store9],Vector=Metabolites[total intracellular store Ca2+ content_CaT_9],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10],Vector=Metabolites[total receptor levels _r_10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10],Vector=Metabolites[cytosolic IP3_IP3_10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10],Vector=Metabolites[total IP3R_g_10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol10],Vector=Metabolites[cytosolic Ca2+_CaI_10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_10]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store10],Vector=Metabolites[total intracellular store Ca2+ content_CaT_10],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11],Vector=Metabolites[cytosolic IP3_IP3_11],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11],Vector=Metabolites[total IP3R_g_11],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11],Vector=Metabolites[cytosolic Ca2+_CaI_11],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol11],Vector=Metabolites[total receptor levels _r_11],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12],Vector=Metabolites[cytosolic IP3_IP3_12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12],Vector=Metabolites[total IP3R_g_12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12],Vector=Metabolites[cytosolic Ca2+_CaI_12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol12],Vector=Metabolites[total receptor levels _r_12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_13]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13],Vector=Metabolites[cytosolic IP3_IP3_13],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_13]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13],Vector=Metabolites[total IP3R_g_13],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_13]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13],Vector=Metabolites[cytosolic Ca2+_CaI_13],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_13]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol13],Vector=Metabolites[total receptor levels _r_13],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_14]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14],Vector=Metabolites[cytosolic IP3_IP3_14],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_14]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14],Vector=Metabolites[total IP3R_g_14],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_14]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14],Vector=Metabolites[cytosolic Ca2+_CaI_14],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_14]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol14],Vector=Metabolites[total receptor levels _r_14],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[IP3_15]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15],Vector=Metabolites[cytosolic IP3_IP3_15],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[g_15]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15],Vector=Metabolites[total IP3R_g_15],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaI_15]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15],Vector=Metabolites[cytosolic Ca2+_CaI_15],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[r_15]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[cytosol15],Vector=Metabolites[total receptor levels _r_15],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_11]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store11],Vector=Metabolites[total intracellular store Ca2+ content_CaT_11],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_12]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store12],Vector=Metabolites[total intracellular store Ca2+ content_CaT_12],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_13]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store13],Vector=Metabolites[total intracellular store Ca2+ content_CaT_13],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_14]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store14],Vector=Metabolites[total intracellular store Ca2+ content_CaT_14],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[CaT_15]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Compartments[store15],Vector=Metabolites[total intracellular store Ca2+ content_CaT_15],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[H]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[H],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_11" objectCN="CN=Root,Model=Verma2016 - Ca(2+) Signal Propagation Along Hepatocyte Cords,Vector=Values[k_HR],Reference=InitialValue" objectType="float" objectValue="1" minValue="1e-11" maxValue="1e+10" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="MODEL1603110003_url.xml">
    <SBMLMap SBMLid="A" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="B" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="CaI_1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="CaI_10" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="CaI_11" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="CaI_12" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="CaI_13" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="CaI_14" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="CaI_15" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="CaI_2" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="CaI_3" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="CaI_4" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="CaI_5" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="CaI_6" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="CaI_7" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="CaI_8" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="CaI_9" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="CaT_1" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="CaT_10" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="CaT_11" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="CaT_12" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="CaT_13" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="CaT_14" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="CaT_15" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="CaT_2" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="CaT_3" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="CaT_4" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="CaT_5" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="CaT_6" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="CaT_7" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="CaT_8" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="CaT_9" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="D" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="E" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="F" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="G" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="H" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="IP3_1" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="IP3_10" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="IP3_11" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="IP3_12" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="IP3_13" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="IP3_14" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="IP3_15" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="IP3_2" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="IP3_3" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="IP3_4" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="IP3_5" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="IP3_6" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="IP3_7" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="IP3_8" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="IP3_9" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="L" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="cytosol1" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="cytosol10" COPASIkey="Compartment_17"/>
    <SBMLMap SBMLid="cytosol11" COPASIkey="Compartment_19"/>
    <SBMLMap SBMLid="cytosol12" COPASIkey="Compartment_28"/>
    <SBMLMap SBMLid="cytosol13" COPASIkey="Compartment_21"/>
    <SBMLMap SBMLid="cytosol14" COPASIkey="Compartment_23"/>
    <SBMLMap SBMLid="cytosol15" COPASIkey="Compartment_25"/>
    <SBMLMap SBMLid="cytosol2" COPASIkey="Compartment_13"/>
    <SBMLMap SBMLid="cytosol3" COPASIkey="Compartment_8"/>
    <SBMLMap SBMLid="cytosol4" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="cytosol5" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="cytosol6" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="cytosol7" COPASIkey="Compartment_9"/>
    <SBMLMap SBMLid="cytosol8" COPASIkey="Compartment_11"/>
    <SBMLMap SBMLid="cytosol9" COPASIkey="Compartment_15"/>
    <SBMLMap SBMLid="event_1" COPASIkey="Event_0"/>
    <SBMLMap SBMLid="function_4_r0" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_4_r1" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_4_r101" COPASIkey="Function_118"/>
    <SBMLMap SBMLid="function_4_r103" COPASIkey="Function_119"/>
    <SBMLMap SBMLid="function_4_r104" COPASIkey="Function_120"/>
    <SBMLMap SBMLid="function_4_r105" COPASIkey="Function_111"/>
    <SBMLMap SBMLid="function_4_r107" COPASIkey="Function_110"/>
    <SBMLMap SBMLid="function_4_r109" COPASIkey="Function_109"/>
    <SBMLMap SBMLid="function_4_r110" COPASIkey="Function_108"/>
    <SBMLMap SBMLid="function_4_r111" COPASIkey="Function_125"/>
    <SBMLMap SBMLid="function_4_r113" COPASIkey="Function_126"/>
    <SBMLMap SBMLid="function_4_r115" COPASIkey="Function_127"/>
    <SBMLMap SBMLid="function_4_r116" COPASIkey="Function_128"/>
    <SBMLMap SBMLid="function_4_r117" COPASIkey="Function_116"/>
    <SBMLMap SBMLid="function_4_r119" COPASIkey="Function_115"/>
    <SBMLMap SBMLid="function_4_r12" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_4_r121" COPASIkey="Function_114"/>
    <SBMLMap SBMLid="function_4_r122" COPASIkey="Function_121"/>
    <SBMLMap SBMLid="function_4_r123" COPASIkey="Function_129"/>
    <SBMLMap SBMLid="function_4_r125" COPASIkey="Function_130"/>
    <SBMLMap SBMLid="function_4_r127" COPASIkey="Function_131"/>
    <SBMLMap SBMLid="function_4_r128" COPASIkey="Function_122"/>
    <SBMLMap SBMLid="function_4_r129" COPASIkey="Function_123"/>
    <SBMLMap SBMLid="function_4_r13" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_4_r130" COPASIkey="Function_124"/>
    <SBMLMap SBMLid="function_4_r131" COPASIkey="Function_137"/>
    <SBMLMap SBMLid="function_4_r132" COPASIkey="Function_138"/>
    <SBMLMap SBMLid="function_4_r133" COPASIkey="Function_139"/>
    <SBMLMap SBMLid="function_4_r134" COPASIkey="Function_133"/>
    <SBMLMap SBMLid="function_4_r135" COPASIkey="Function_140"/>
    <SBMLMap SBMLid="function_4_r136" COPASIkey="Function_141"/>
    <SBMLMap SBMLid="function_4_r137" COPASIkey="Function_136"/>
    <SBMLMap SBMLid="function_4_r139" COPASIkey="Function_132"/>
    <SBMLMap SBMLid="function_4_r14" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_4_r141" COPASIkey="Function_134"/>
    <SBMLMap SBMLid="function_4_r143" COPASIkey="Function_135"/>
    <SBMLMap SBMLid="function_4_r145" COPASIkey="Function_142"/>
    <SBMLMap SBMLid="function_4_r147" COPASIkey="Function_143"/>
    <SBMLMap SBMLid="function_4_r15" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_4_r16" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="function_4_r18" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="function_4_r19" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_4_r21" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="function_4_r23" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="function_4_r24" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="function_4_r25" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="function_4_r27" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="function_4_r28" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="function_4_r29" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="function_4_r3" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_4_r30" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="function_4_r33" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="function_4_r34" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="function_4_r35" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="function_4_r37" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="function_4_r38" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="function_4_r39" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="function_4_r4" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_4_r40" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="function_4_r42" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="function_4_r43" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="function_4_r45" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="function_4_r47" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="function_4_r48" COPASIkey="Function_88"/>
    <SBMLMap SBMLid="function_4_r5" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_4_r50" COPASIkey="Function_89"/>
    <SBMLMap SBMLid="function_4_r51" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="function_4_r53" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="function_4_r54" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="function_4_r55" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="function_4_r57" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="function_4_r58" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="function_4_r6" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_4_r60" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="function_4_r61" COPASIkey="Function_91"/>
    <SBMLMap SBMLid="function_4_r62" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="function_4_r63" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="function_4_r64" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="function_4_r67" COPASIkey="Function_87"/>
    <SBMLMap SBMLid="function_4_r68" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="function_4_r70" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="function_4_r71" COPASIkey="Function_85"/>
    <SBMLMap SBMLid="function_4_r72" COPASIkey="Function_94"/>
    <SBMLMap SBMLid="function_4_r73" COPASIkey="Function_90"/>
    <SBMLMap SBMLid="function_4_r75" COPASIkey="Function_95"/>
    <SBMLMap SBMLid="function_4_r77" COPASIkey="Function_96"/>
    <SBMLMap SBMLid="function_4_r78" COPASIkey="Function_92"/>
    <SBMLMap SBMLid="function_4_r8" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="function_4_r81" COPASIkey="Function_93"/>
    <SBMLMap SBMLid="function_4_r82" COPASIkey="Function_102"/>
    <SBMLMap SBMLid="function_4_r83" COPASIkey="Function_103"/>
    <SBMLMap SBMLid="function_4_r84" COPASIkey="Function_104"/>
    <SBMLMap SBMLid="function_4_r85" COPASIkey="Function_105"/>
    <SBMLMap SBMLid="function_4_r87" COPASIkey="Function_97"/>
    <SBMLMap SBMLid="function_4_r89" COPASIkey="Function_99"/>
    <SBMLMap SBMLid="function_4_r9" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_4_r91" COPASIkey="Function_98"/>
    <SBMLMap SBMLid="function_4_r92" COPASIkey="Function_112"/>
    <SBMLMap SBMLid="function_4_r93" COPASIkey="Function_113"/>
    <SBMLMap SBMLid="function_4_r94" COPASIkey="Function_100"/>
    <SBMLMap SBMLid="function_4_r95" COPASIkey="Function_101"/>
    <SBMLMap SBMLid="function_4_r96" COPASIkey="Function_106"/>
    <SBMLMap SBMLid="function_4_r98" COPASIkey="Function_107"/>
    <SBMLMap SBMLid="function_4_r99" COPASIkey="Function_117"/>
    <SBMLMap SBMLid="g_1" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="g_10" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="g_11" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="g_12" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="g_13" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="g_14" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="g_15" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="g_2" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="g_3" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="g_4" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="g_5" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="g_6" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="g_7" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="g_8" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="g_9" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k_HR" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k_d" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k_r" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k_r1" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k_r10" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="k_r11" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="k_r12" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="k_r13" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k_r14" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="k_r2" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="k_r3" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="k_r4" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k_r5" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="k_r6" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="k_r7" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="k_r8" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="k_r9" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="kcat" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="r0" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="r1" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="r10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="r100" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="r101" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="r102" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="r103" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="r104" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="r105" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="r106" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="r107" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="r108" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="r109" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="r11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="r110" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="r111" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="r112" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="r113" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="r114" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="r115" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="r116" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="r117" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="r118" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="r119" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="r12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="r120" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="r121" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="r122" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="r123" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="r124" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="r125" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="r126" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="r127" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="r128" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="r129" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="r13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="r130" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="r131" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="r132" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="r133" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="r134" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="r135" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="r136" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="r137" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="r139" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="r14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="r141" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="r143" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="r145" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="r147" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="r15" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="r16" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="r18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="r19" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="r2" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="r20" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="r21" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="r22" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="r23" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="r24" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="r25" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="r27" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="r28" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="r29" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="r3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="r30" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="r31" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="r32" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="r33" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="r34" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="r35" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="r37" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="r38" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="r39" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="r4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="r40" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="r41" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="r42" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="r43" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="r44" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="r45" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="r47" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="r48" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="r49" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="r5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="r50" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="r51" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="r52" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="r53" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="r54" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="r55" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="r57" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="r58" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="r59" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="r6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="r60" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="r61" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="r62" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="r63" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="r64" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="r65" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="r67" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="r68" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="r69" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="r7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="r70" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="r71" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="r72" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="r73" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="r74" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="r75" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="r77" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="r78" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="r79" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="r8" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="r80" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="r81" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="r82" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="r83" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="r84" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="r85" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="r87" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="r88" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="r89" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="r9" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="r90" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="r91" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="r92" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="r93" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="r94" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="r95" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="r96" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="r98" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="r99" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="r_1" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="r_10" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="r_11" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="r_12" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="r_13" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="r_14" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="r_15" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="r_2" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="r_3" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="r_4" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="r_5" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="r_6" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="r_7" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="r_8" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="r_9" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="store1" COPASIkey="Compartment_6"/>
    <SBMLMap SBMLid="store10" COPASIkey="Compartment_18"/>
    <SBMLMap SBMLid="store11" COPASIkey="Compartment_20"/>
    <SBMLMap SBMLid="store12" COPASIkey="Compartment_29"/>
    <SBMLMap SBMLid="store13" COPASIkey="Compartment_22"/>
    <SBMLMap SBMLid="store14" COPASIkey="Compartment_24"/>
    <SBMLMap SBMLid="store15" COPASIkey="Compartment_26"/>
    <SBMLMap SBMLid="store2" COPASIkey="Compartment_14"/>
    <SBMLMap SBMLid="store3" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="store4" COPASIkey="Compartment_27"/>
    <SBMLMap SBMLid="store5" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="store6" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="store7" COPASIkey="Compartment_10"/>
    <SBMLMap SBMLid="store8" COPASIkey="Compartment_12"/>
    <SBMLMap SBMLid="store9" COPASIkey="Compartment_16"/>
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
  </ListOfUnitDefinitions>
</COPASI>
