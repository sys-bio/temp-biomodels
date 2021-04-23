<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 196) (http://www.copasi.org) at 2018-12-21 10:32:52 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="196" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="scaled Michaelis-Menten 1_1" type="UserDefined" reversible="false">
      <Expression>
        vsap1*(GF/(Kagf+GF))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="GF" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="Kagf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="eps" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_261" name="vsap1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function for 1k 1M_1" type="UserDefined" reversible="false">
      <Expression>
        kdap1*AP1*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="AP1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="kdap1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function for 1k_1" type="UserDefined" reversible="false">
      <Expression>
        vsprb*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="vsprb" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function for 1k 2M_1" type="UserDefined" reversible="false">
      <Expression>
        kpc1*pRB*E2F*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_270" name="E2F" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="kpc1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="pRB" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function for 1k 1M_2" type="UserDefined" reversible="false">
      <Expression>
        kpc2*pRBc1*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="kpc2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="pRBc1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="modified Michaelis Menten 2_1" type="UserDefined" reversible="false">
      <Expression>
        V1*(pRB/(K1+pRB))*(Md+Mdp27)*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_278" name="K1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="Md" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_273" name="Mdp27" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_279" name="V1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="eps" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="pRB" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="scaled Michaelis Menten 2_1" type="UserDefined" reversible="false">
      <Expression>
        V2*(pRBp/(K2+pRBp))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="K2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="V2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="eps" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="pRBp" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function for 1k 1M_3" type="UserDefined" reversible="unspecified">
      <Expression>
        kdprb*pRBp*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="kdprb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="pRBp" order="2" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="modified Michaelis Menten 1_1" type="UserDefined" reversible="false">
      <Expression>
        V3*(pRBp/(K3+pRBp))*Me*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="K3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="Me" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_283" name="V3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="eps" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="pRBp" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="scaled Michaelis Menten 2_2" type="UserDefined" reversible="false">
      <Expression>
        V4*(pRBpp/(K4+pRBpp))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="K4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="V4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="eps" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="pRBpp" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function for 1k 2M_2" type="UserDefined" reversible="false">
      <Expression>
        kpc3*pRBp*E2F*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="E2F" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_300" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="kpc3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="pRBp" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function for 1k 1M_4" type="UserDefined" reversible="false">
      <Expression>
        kpc4*pRBc2*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="kpc4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="pRBc2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function for 1k 1M_5" type="UserDefined" reversible="false">
      <Expression>
        kdprbp*pRBp*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="kdprbp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="pRBp" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function for 1k 1M_6" type="UserDefined" reversible="false">
      <Expression>
        kdprbpp*pRBpp*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_310" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="kdprbpp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="pRBpp" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function for 1k_2" type="UserDefined" reversible="false">
      <Expression>
        vse2f*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_312" name="vse2f" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="modified Michaelis Menten 1_2" type="UserDefined" reversible="false">
      <Expression>
        V1e2f*(E2F/(K1e2f+E2F))*Ma*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="E2F" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="K1e2f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="Ma" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="V1e2f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="eps" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="scaled Michaelis Menten 2_3" type="UserDefined" reversible="false">
      <Expression>
        V2e2f*(E2Fp/(K2e2f+E2Fp))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="E2Fp" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_321" name="K2e2f" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="V2e2f" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="eps" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function for 1k 1M_7" type="UserDefined" reversible="false">
      <Expression>
        kde2f*E2F*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="E2F" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_324" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="kde2f" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function for 1k 1M_8" type="UserDefined" reversible="false">
      <Expression>
        kde2fp*E2Fp*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="E2Fp" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_326" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="kde2fp" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function for 1k 1M_9" type="UserDefined" reversible="false">
      <Expression>
        kcd1*AP1*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="AP1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_329" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="kcd1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="double michaelis menten like_1" type="UserDefined" reversible="false">
      <Expression>
        kcd2*E2F*(Ki7/(Ki7+pRB))*(Ki8/(Ki8+pRBp))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="E2F" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_332" name="Ki7" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="Ki8" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="eps" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="kcd2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_336" name="pRB" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_337" name="pRBp" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="function for Cd to Mdi_1" type="UserDefined" reversible="false">
      <Expression>
        kcom1*Cd*(Cdk4_tot-(Mdi+Md+Mdp27))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="Cd" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_343" name="Cdk4_tot" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="Md" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_341" name="Mdi" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_340" name="Mdp27" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_339" name="eps" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="kcom1" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="function for 1k 1M_10" type="UserDefined" reversible="false">
      <Expression>
        kdecom1*Mdi*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="Mdi" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="kdecom1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="scaled Michaelis Menten 2_4" type="UserDefined" reversible="false">
      <Expression>
        Vdd*(Cd/(Kdd+Cd))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_346" name="Cd" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="Kdd" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="Vdd" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="eps" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="function for 1k 1M_11" type="UserDefined" reversible="false">
      <Expression>
        kddd*Cd*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="Cd" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_354" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_353" name="kddd" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="scaled Michaelis Menten 2_5" type="UserDefined" reversible="false">
      <Expression>
        Vm2d*(Md/(K2d+Md))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_357" name="K2d" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="Md" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="Vm2d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="eps" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="scaled Michaelis Menten 2_6" type="UserDefined" reversible="false">
      <Expression>
        Vm1d*(Mdi/(K1d+Mdi))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_362" name="K1d" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="Mdi" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_360" name="Vm1d" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="eps" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="function for 1k 2M_3" type="UserDefined" reversible="false">
      <Expression>
        kc1*Md*p27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="Md" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_365" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="kc1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="p27" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="function for 1k 1M_12" type="UserDefined" reversible="false">
      <Expression>
        kc2*Mdp27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_370" name="Mdp27" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_369" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="kc2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="double michaelis menten like_2" type="UserDefined" reversible="false">
      <Expression>
        kce*E2F*(Ki9/(Ki9+pRB))*(Ki10/(Ki10+pRBp))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_372" name="E2F" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_371" name="Ki10" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="Ki9" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="eps" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="kce" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="pRB" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_376" name="pRBp" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="function for M_ to M_i_1" type="UserDefined" reversible="false">
      <Expression>
        kcom2*Ce*(Cdk2_tot-(Mei+Me+Mep27+Mai+Ma+Map27))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_383" name="Cdk2_tot" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="Ce" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_381" name="Ma" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_380" name="Mai" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_379" name="Map27" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_378" name="Me" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_377" name="Mei" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_384" name="Mep27" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_385" name="eps" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="kcom2" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="function for 1k 1M_13" type="UserDefined" reversible="false">
      <Expression>
        kdecom2*Mei*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_396" name="Mei" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_395" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_394" name="kdecom2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="double michaelis menten like 2_1" type="UserDefined" reversible="false">
      <Expression>
        Vde*(Skp2/(Kdceskp2+Skp2))*(Ce/(Kde+Ce))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="Ce" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_392" name="Kdceskp2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="Kde" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="Skp2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_389" name="Vde" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="function for 1k 1M_14" type="UserDefined" reversible="false">
      <Expression>
        kdde*Ce*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_401" name="Ce" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_400" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="kdde" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="function for M_i to M__1" type="UserDefined" reversible="false">
      <Expression>
        Vm2e*(Wee1+ib1)*(Me/(K2e+Me))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_387" name="K2e" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="Me" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_398" name="Vm2e" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="Wee1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_403" name="eps" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="ib1" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="modified Michaelis Menten 1_3" type="UserDefined" reversible="false">
      <Expression>
        Vm1e*(Mei/(K1e+Mei))*Pe*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_410" name="K1e" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="Mei" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="Pe" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_407" name="Vm1e" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="eps" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="function for 1k 2M_4" type="UserDefined" reversible="false">
      <Expression>
        kc3*Me*p27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_414" name="Me" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_413" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="kc3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="p27" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="function for 1k 1M_15" type="UserDefined" reversible="false">
      <Expression>
        kc4*Mep27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_417" name="Mep27" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_416" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="kc4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="function for 1k_3" type="UserDefined" reversible="false">
      <Expression>
        vsskp2*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_419" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="vsskp2" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="double michaelis menten like 2_2" type="UserDefined" reversible="false">
      <Expression>
        Vdskp2*(Skp2/(Kdskp2+Skp2))*(Cdh1a/(Kcdh1+Cdh1a))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_420" name="Cdh1a" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_405" name="Kcdh1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="Kdskp2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="Skp2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="Vdskp2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="function for 1k 1M_16" type="UserDefined" reversible="false">
      <Expression>
        kddskp2*Skp2*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_430" name="Skp2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_429" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="kddskp2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="function for 1k_4" type="UserDefined" reversible="false">
      <Expression>
        vspei*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_425" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="vspei" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="function for Pe to Pei_1" type="UserDefined" reversible="false">
      <Expression>
        V6e*(xe1+xe2*Chk1)*(Pe/(K6e+Pe))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_431" name="Chk1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_427" name="K6e" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_432" name="Pe" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_433" name="V6e" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="eps" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="xe1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_436" name="xe2" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="function for M_i to M__2" type="UserDefined" reversible="false">
      <Expression>
        Vm5e*(Me+ae)*(Pei/(K5e+Pei))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_443" name="K5e" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_442" name="Me" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_441" name="Pei" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_440" name="Vm5e" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="ae" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="function for 1k 1M_17" type="UserDefined" reversible="false">
      <Expression>
        kdpei*Pei*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_448" name="Pei" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_447" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="kdpei" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="function for 1k 1M_18" type="UserDefined" reversible="false">
      <Expression>
        kdpe*Pe*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_437" name="Pe" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_444" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="kdpe" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="double michaelis menten like_3" type="UserDefined" reversible="false">
      <Expression>
        kca*E2F*(Ki11/(Ki11+pRB))*(Ki12/(Ki12+pRBp))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="E2F" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_450" name="Ki11" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="Ki12" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="eps" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="kca" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="pRB" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_455" name="pRBp" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="function for M_ to M_i_2" type="UserDefined" reversible="false">
      <Expression>
        kcom3*Ca*(Cdk2_tot-(Mei+Me+Mep27+Mai+Ma+Map27))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_462" name="Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_461" name="Cdk2_tot" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="Ma" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_459" name="Mai" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_458" name="Map27" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_457" name="Me" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_456" name="Mei" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_463" name="Mep27" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_464" name="eps" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="kcom3" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="function for 1k 1M_19" type="UserDefined" reversible="false">
      <Expression>
        kdecom3*Mai*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_475" name="Mai" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_474" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_473" name="kdecom3" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="double michaelis menten like 2_3" type="UserDefined" reversible="false">
      <Expression>
        Vda*(Ca/(Kda+Ca))*(Cdc20a/(Kacdc20+Cdc20a))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_470" name="Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_471" name="Cdc20a" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_472" name="Kacdc20" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_469" name="Kda" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_468" name="Vda" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_467" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="function for 1k 1M_20" type="UserDefined" reversible="false">
      <Expression>
        kdda*Ca*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_480" name="Ca" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_479" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_478" name="kdda" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="function for M_i to M__3" type="UserDefined" reversible="false">
      <Expression>
        Vm2a*(Wee1+ib2)*(Ma/(K2a+Ma))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_466" name="K2a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="Ma" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_477" name="Vm2a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_481" name="Wee1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_482" name="eps" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_483" name="ib2" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="modified Michaelis Menten 1_4" type="UserDefined" reversible="false">
      <Expression>
        Vm1a*(Mai/(K1a+Mai))*Pa*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_489" name="K1a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_488" name="Mai" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_487" name="Pa" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_486" name="Vm1a" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="eps" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="function for 1k 2M_5" type="UserDefined" reversible="false">
      <Expression>
        kc5*Ma*p27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_493" name="Ma" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_492" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_491" name="kc5" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_490" name="p27" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="function for 1k 1M_21" type="UserDefined" reversible="false">
      <Expression>
        kc6*Map27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_496" name="Map27" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_495" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_494" name="kc6" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="function for 1k_5" type="UserDefined" reversible="false">
      <Expression>
        vs1p27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_498" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_497" name="vs1p27" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="double michaelis menten like_4" type="UserDefined" reversible="false">
      <Expression>
        vs2p27*E2F*(Ki13/(Ki13+pRB))*(Ki14/(Ki14+pRBp))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_499" name="E2F" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_484" name="Ki13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="Ki14" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_501" name="eps" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_502" name="pRB" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_503" name="pRBp" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_504" name="vs2p27" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="function for 1k 2M_6" type="UserDefined" reversible="false">
      <Expression>
        kc7*Mb*p27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_511" name="Mb" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_510" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="kc7" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_508" name="p27" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="function for 1k 1M_22" type="UserDefined" reversible="false">
      <Expression>
        kc8*Mbp27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_512" name="Mbp27" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_505" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_506" name="kc8" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="modified Michaelis Menten 1_5" type="UserDefined" reversible="false">
      <Expression>
        V1p27*(p27/(K1p27+p27))*Me*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_514" name="K1p27" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_513" name="Me" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_507" name="V1p27" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_515" name="eps" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="p27" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="scaled Michaelis Menten 2_7" type="UserDefined" reversible="false">
      <Expression>
        V2p27*(p27p/(K2p27+p27p))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_521" name="K2p27" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_520" name="V2p27" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_519" name="eps" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_518" name="p27p" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="function for 1k 1M_23" type="UserDefined" reversible="false">
      <Expression>
        kddp27*p27*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_524" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_523" name="kddp27" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_522" name="p27" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="double michaelis menten like 2_4" type="UserDefined" reversible="false">
      <Expression>
        Vdp27p*(Skp2/(Kdp27skp2+Skp2))*(p27p/(Kdp27p+p27p))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_526" name="Kdp27p" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_525" name="Kdp27skp2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_517" name="Skp2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_527" name="Vdp27p" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="eps" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_529" name="p27p" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="function for 1k 1M_24" type="UserDefined" reversible="false">
      <Expression>
        kddp27p*p27p*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_535" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_534" name="kddp27p" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_533" name="p27p" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="modified Michaelis Menten 2_2" type="UserDefined" reversible="false">
      <Expression>
        V2cdh1*(Cdh1a/(K2cdh1+Cdh1a))*(Ma+Mb)*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_530" name="Cdh1a" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_531" name="K2cdh1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_532" name="Ma" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_536" name="Mb" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_537" name="V2cdh1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_538" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="scaled Michaelis Menten 2_8" type="UserDefined" reversible="false">
      <Expression>
        V1cdh1*(Cdh1i/(K1cdh1+Cdh1i))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_544" name="Cdh1i" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_543" name="K1cdh1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_542" name="V1cdh1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="eps" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="function for 1k 1M_25" type="UserDefined" reversible="false">
      <Expression>
        kdcdh1i*Cdh1i*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_546" name="Cdh1i" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_545" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_539" name="kdcdh1i" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="function for 1k 1M_26" type="UserDefined" reversible="false">
      <Expression>
        kdcdh1a*Cdh1a*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_548" name="Cdh1a" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_547" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_540" name="kdcdh1a" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="function for 1k_6" type="UserDefined" reversible="false">
      <Expression>
        vscdh1a*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_551" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="vscdh1a" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="function for Pe to Pei_2" type="UserDefined" reversible="false">
      <Expression>
        V6a*(xa1+xa2*Chk1)*(Pa/(K6a+Pa))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_552" name="Chk1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_549" name="K6a" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_553" name="Pa" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_554" name="V6a" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="eps" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_556" name="xa1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_557" name="xa2" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="function for M_i to M__4" type="UserDefined" reversible="false">
      <Expression>
        Vm5a*(Ma+aa)*(Pai/(K5a+Pai))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_564" name="K5a" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_563" name="Ma" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_562" name="Pai" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_561" name="Vm5a" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_560" name="aa" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_559" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="function for 1k 1M_27" type="UserDefined" reversible="false">
      <Expression>
        kdpai*Pai*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_569" name="Pai" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_568" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_567" name="kdpai" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="function for 1k_7" type="UserDefined" reversible="false">
      <Expression>
        vspai*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_558" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_565" name="vspai" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="function for 1k 1M_28" type="UserDefined" reversible="false">
      <Expression>
        kdpa*Pa*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_570" name="Pa" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_566" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_571" name="kdpa" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="function for 1k_8" type="UserDefined" reversible="false">
      <Expression>
        vcb*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_574" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_573" name="vcb" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="function for Cd to Mdi_2" type="UserDefined" reversible="false">
      <Expression>
        kcom4*Cb*(Cdk1_tot-(Mbi+Mb+Mbp27))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_575" name="Cb" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_572" name="Cdk1_tot" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_576" name="Mb" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_577" name="Mbi" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_578" name="Mbp27" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_579" name="eps" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_580" name="kcom4" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="function for 1k 1M_29" type="UserDefined" reversible="false">
      <Expression>
        kdecom4*Mbi*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_587" name="Mbi" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_586" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_585" name="kdecom4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="double michaelis menten like 2_5" type="UserDefined" reversible="false">
      <Expression>
        Vdb*(Cb/(Kdb+Cb))*(Cdc20a/(Kdbcdc20+Cdc20a))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_582" name="Cb" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_583" name="Cdc20a" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_584" name="Kdb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_581" name="Kdbcdc20" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_588" name="Vdb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_589" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="function for 1k 1M_30" type="UserDefined" reversible="false">
      <Expression>
        kddb*Cb*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_595" name="Cb" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_594" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_593" name="kddb" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="double michaelis menten like 2_6" type="UserDefined" reversible="false">
      <Expression>
        Vdb*(Cb/(Kdb+Cb))*(Cdh1a/(Kdbcdh1+Cdh1a))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_590" name="Cb" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_591" name="Cdh1a" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_592" name="Kdb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_596" name="Kdbcdh1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_597" name="Vdb" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="function for M_i to M__5" type="UserDefined" reversible="false">
      <Expression>
        Vm2b*(Wee1+ib3)*(Mb/(K2b+Mb))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_604" name="K2b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_603" name="Mb" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_602" name="Vm2b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_601" name="Wee1" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_600" name="eps" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_599" name="ib3" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="modified Michaelis Menten 1_6" type="UserDefined" reversible="false">
      <Expression>
        Vm1b*(Mbi/(K1b+Mbi))*Pb*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_610" name="K1b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_609" name="Mbi" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_608" name="Pb" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_607" name="Vm1b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_606" name="eps" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="function for 1k_9" type="UserDefined" reversible="false">
      <Expression>
        vscdc20i*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_614" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_613" name="vscdc20i" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="modified Michaelis Menten 1_7" type="UserDefined" reversible="false">
      <Expression>
        Vm3b*(Cdc20i/(K3b+Cdc20i))*Mb*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_611" name="Cdc20i" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_612" name="K3b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_605" name="Mb" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_615" name="Vm3b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_616" name="eps" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_124" name="scaled Michaelis Menten 2_9" type="UserDefined" reversible="false">
      <Expression>
        Vm4b*(Cdc20a/(K4b+Cdc20a))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_621" name="Cdc20a" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_620" name="K4b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_619" name="Vm4b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_618" name="eps" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_125" name="function for 1k 1M_31" type="UserDefined" reversible="false">
      <Expression>
        kdcdc20i*Cdc20i*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_624" name="Cdc20i" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_623" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_622" name="kdcdc20i" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="function for 1k 1M_32" type="UserDefined" reversible="false">
      <Expression>
        kdcdc20a*Cdc20a*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_626" name="Cdc20a" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_625" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_617" name="kdcdc20a" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_127" name="function for 1k_10" type="UserDefined" reversible="false">
      <Expression>
        vspbi*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_629" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_628" name="vspbi" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_128" name="function for Pe to Pei_3" type="UserDefined" reversible="false">
      <Expression>
        V6b*(xb1+xb2*Chk1)*(Pb/(K6b+Pb))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_630" name="Chk1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_627" name="K6b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_631" name="Pb" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_632" name="V6b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_633" name="eps" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_634" name="xb1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_635" name="xb2" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_129" name="function for M_i to M__6" type="UserDefined" reversible="false">
      <Expression>
        Vm5b*(Mb+ab)*(Pbi/(K5b+Pbi))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_642" name="K5b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_641" name="Mb" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_640" name="Pbi" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_639" name="Vm5b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_638" name="ab" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_637" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_130" name="function for 1k 1M_33" type="UserDefined" reversible="false">
      <Expression>
        kdpbi*Pbi*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_647" name="Pbi" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_646" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_645" name="kdpbi" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_131" name="function for 1k 1M_34" type="UserDefined" reversible="false">
      <Expression>
        kdpb*Pb*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_636" name="Pb" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_643" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_644" name="kdpb" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_132" name="function for 1k_11" type="UserDefined" reversible="false">
      <Expression>
        vswee1*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_650" name="eps" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="vswee1" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_133" name="function for 1k 1M_35" type="UserDefined" reversible="false">
      <Expression>
        ksW*Mw*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_651" name="Mw" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_648" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_652" name="ksW" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_134" name="function for M_i to M__7" type="UserDefined" reversible="false">
      <Expression>
        Vm7b*(Mb+ib)*(Wee1/(K7b+Wee1))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_655" name="K7b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_654" name="Mb" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_653" name="Vm7b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_656" name="Wee1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_657" name="eps" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_658" name="ib" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_135" name="scaled Michaelis Menten 2_10" type="UserDefined" reversible="false">
      <Expression>
        Vm8b*(Wee1p/(K8b+Wee1p))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_664" name="K8b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_663" name="Vm8b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_662" name="Wee1p" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_661" name="eps" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_136" name="function for 1k 1M_36" type="UserDefined" reversible="false">
      <Expression>
        kdwee1*Wee1*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_666" name="Wee1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_665" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_659" name="kdwee1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_137" name="function for 1k 1M_37" type="UserDefined" reversible="false">
      <Expression>
        kdwee1p*Wee1p*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_668" name="Wee1p" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_667" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_660" name="kdwee1p" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_138" name="function for Cdc45 synthesis_1" type="UserDefined" reversible="false">
      <Expression>
        V1cdc45*Me*((Cdc45_tot-Cdc45)/(K1cdc45+Cdc45_tot-Cdc45))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_671" name="Cdc45" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_670" name="Cdc45_tot" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_669" name="K1cdc45" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_672" name="Me" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_673" name="V1cdc45" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_674" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_139" name="scaled Michaelis Menten 2_11" type="UserDefined" reversible="false">
      <Expression>
        V2cdc45*(Cdc45/(K2cdc45+Cdc45))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_680" name="Cdc45" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_679" name="K2cdc45" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_678" name="V2cdc45" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_677" name="eps" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_140" name="function for 1k M_tot - M , M2_1" type="UserDefined" reversible="false">
      <Expression>
        kspol*(Pol_tot-Pol)*Cdc45*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_682" name="Cdc45" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_681" name="Pol" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_675" name="Pol_tot" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_676" name="eps" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_683" name="kspol" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_141" name="function for 1k 1M_38" type="UserDefined" reversible="false">
      <Expression>
        kdpol*Pol*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_688" name="Pol" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_687" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_686" name="kdpol" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_142" name="function for 1k 1M_39" type="UserDefined" reversible="false">
      <Expression>
        ksprim*Pol*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_689" name="Pol" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_684" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_685" name="ksprim" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_143" name="function for 1k 1M_40" type="UserDefined" reversible="false">
      <Expression>
        kdprim*Primer*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_692" name="Primer" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_691" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_690" name="kdprim" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_144" name="function for 1k M_tot - M , M2_2" type="UserDefined" reversible="false">
      <Expression>
        kaatr*(ATR_tot-ATR)*Primer*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_695" name="ATR" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_694" name="ATR_tot" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_693" name="Primer" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_696" name="eps" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_697" name="kaatr" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_145" name="function for 1k 1M_41" type="UserDefined" reversible="false">
      <Expression>
        kdatr*ATR*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_702" name="ATR" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_701" name="eps" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_700" name="kdatr" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_146" name="function for Cdc45 synthesis_2" type="UserDefined" reversible="false">
      <Expression>
        V1chk*ATR*((Chk1_tot-Chk1)/(K1chk+Chk1_tot-Chk1))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_703" name="ATR" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_698" name="Chk1" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_699" name="Chk1_tot" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_704" name="K1chk" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_705" name="V1chk" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_706" name="eps" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_147" name="scaled Michaelis Menten 2_12" type="UserDefined" reversible="false">
      <Expression>
        V2chk*(Chk1/(K2chk+Chk1))*eps
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_712" name="Chk1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_711" name="K2chk" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_710" name="V2chk" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_709" name="eps" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Gerard2009" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/mamo/MAMO_0000046"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000278"/>
      </rdf:Bag>
    </bqbiol:hasProperty>
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/40674"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/20007375"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/doi/10.1073/pnas.0903827106"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T10:07:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
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
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T14:08:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <p>We propose an integrated computational model for the network of cyclin-dependent kinases (Cdks) that controls the dynamics of the mammalian cell cycle. The model contains four Cdk modules regulated by reversible phosphorylation, Cdk inhibitors, and protein synthesis or degradation. Growth factors (GFs) trigger the transition from a quiescent, stable steady state to self-sustained oscillations in the Cdk network. These oscillations correspond to the repetitive, transient activation of cyclin D/Cdk4-6 in G(1), cyclin E/Cdk2 at the G(1)/S transition, cyclin A/Cdk2 in S and at the S/G(2) transition, and cyclin B/Cdk1 at the G(2)/M transition. The model accounts for the following major properties of the mammalian cell cycle: (i) repetitive cell cycling in the presence of suprathreshold amounts of GF; (ii) control of cell-cycle progression by the balance between antagonistic effects of the tumor suppressor retinoblastoma protein (pRB) and the transcription factor E2F; and (iii) existence of a restriction point in G(1), beyond which completion of the cell cycle becomes independent of GF. The model also accounts for endoreplication. Incorporating the DNA replication checkpoint mediated by kinases ATR and Chk1 slows down the dynamics of the cell cycle without altering its oscillatory nature and leads to better separation of the S and M phases. The model for the mammalian cell cycle shows how the regulatory structure of the Cdk network results in its temporal self-organization, leading to the repetitive, sequential activation of the four Cdk modules that brings about the orderly progression along cell-cycle phases.</p>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/40674" />
      </rdf:Bag>
    </bqbiol:hasTaxon>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="pRB" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06400" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="pRBp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C1897" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06400" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="pRBpp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C1897" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06400" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="E2F" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q01094" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="E2Fp" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C1897" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q01094" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="pRBc1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q01094" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06400" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="pRBc2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06400" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q01094" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Cd" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24385" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30281" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30279" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Mdi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30281" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00534" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30279" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24385" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P11802" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Md" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24385" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00534" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30279" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30281" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P11802" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="Mdp27" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30287" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P11802" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q00534" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24385" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P46527" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30279" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="Ce" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24864" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O96020" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="Mei" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24864" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O96020" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24941" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Me" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24941" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24864" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O96020" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Skp2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13309" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Mep27" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O96020" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P46527" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24864" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24941" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Pei" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30305" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30307" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Pe" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C1897" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30307" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30305" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Ca" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P20248" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Mai" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P20248" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot.isoform/P24941" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Ma" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P20248" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24941" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Map27" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P20248" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P24941" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P46527" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="p27" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P46527" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="p27p" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C1897" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P46527" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Cdh1i" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P12830" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Cdh1a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P12830" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Pai" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30305" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30307" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Pa" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C1897" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30307" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30305" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="Cb" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P14635" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Mbi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06493" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P14635" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="Mb" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P14635" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06493" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Mbp27" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P46527" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P06493" />
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P14635" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="Cdc20i" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q12834" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="Cdc20a" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q12834" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="Pbi" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30305" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30307" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Pb" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C1897" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30304" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30305" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30307" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="Wee1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30291" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Wee1p" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C1897" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P30291" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="Pol" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P09884" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="Cdc45" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O75419" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="Primer" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T15:53:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Chk1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/O14757" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="ATR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/Q13535" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="AP1" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C17207" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="Mw" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000450114" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ensembl/ENST00000299613" />
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="GF" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41185" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Kagf" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="kdap1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="eps" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="vsap1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="kde2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="kde2fp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="kdprb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="kdprbp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="kdprbpp" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="kpc1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="kpc2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="kpc3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="kpc4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="K1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="K2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="K3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="K4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="V1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_18">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="V2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="V3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_20">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="V4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_21">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="K1e2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_22">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="K2e2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_23">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="V1e2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="V2e2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="vse2f" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="vsprb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Cdk4_tot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41182" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Ki7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Ki8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_31" name="kcd1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_31">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_32" name="kcd2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_32">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_33" name="kdecom1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_33">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_34" name="kcom1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_34">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_35" name="kc1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_35">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_36" name="kc2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_36">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_37" name="kddd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_37">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_38" name="Kdd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_38">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_39" name="K1d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_39">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_40" name="K2d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_40">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Vdd" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_41">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Vm1d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_42">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Vm2d" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_43">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_44" name="ae" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_44">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Cdk2_tot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_45">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41182" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_46" name="ib1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_46">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Ki9" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_47">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Ki10" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_48">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_49" name="kce" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_49">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_50" name="kc3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_50">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_51" name="kc4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_51">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_52" name="kdecom2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_52">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_53" name="kcom2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_53">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_54" name="kdde" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_54">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_55" name="kddskp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_55">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_56" name="kdpe" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_56">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_57" name="kdpei" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_57">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_58" name="Kde" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_58">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_59" name="Kdceskp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_59">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_60" name="Kdskp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_60">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_61" name="Kcdh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_61">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_62" name="K1e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_62">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_63" name="K2e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_63">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_64" name="K5e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="K6e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_65">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_66" name="Vde" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="Vdskp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_67">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/neurolex/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="Vm1e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_68">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_69" name="Vm2e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_70" name="Vm5e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_70">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_71" name="V6e" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_71">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_72" name="vspei" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_72">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_73" name="vsskp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="xe1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_74">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_75" name="xe2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_75">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_76" name="aa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="ib2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="Ki11" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="Ki12" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="Ki13" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="Ki14" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="kca" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="kdecom3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="kcom3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_85" name="kc5" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_85">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_86" name="kc6" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_86">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_87" name="kdda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_87">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_88" name="kddp27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_88">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_89" name="kddp27p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_89">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_90" name="kdcdh1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_90">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_91" name="kdcdh1i" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_91">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_92" name="kdpa" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_92">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_93" name="kdpai" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_93">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_94" name="Kda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_94">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_95" name="Kdp27p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_95">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_96" name="Kdp27skp2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_96">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_97" name="Kacdc20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_97">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_98" name="K1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_98">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_99" name="K2a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_99">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_100" name="K1cdh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_100">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_101" name="K2cdh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_101">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_102" name="K5a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_102">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_103" name="K6a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_103">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_104" name="K1p27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_104">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_105" name="K2p27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_105">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_106" name="Vdp27p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_106">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_107" name="Vda" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_107">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_108" name="Vm1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_108">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_109" name="Vm2a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_109">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_110" name="Vm5a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_110">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_111" name="V6a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_111">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_112" name="vscdh1a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_112">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_113" name="vspai" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_113">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_114" name="vs1p27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_114">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_115" name="vs2p27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_115">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_116" name="V1cdh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_116">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_117" name="V2cdh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_117">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_118" name="V1p27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_118">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_119" name="V2p27" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_119">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_120" name="xa1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_120">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_121" name="xa2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_121">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_122" name="ab" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_122">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="Cdk1_tot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_123">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41182" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_124" name="ib" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_124">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="ib3" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_125">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="kc7" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_126">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_127" name="kc8" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_127">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_128" name="kdecom4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_128">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_129" name="kcom4" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_129">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_130" name="kdcdc20a" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_130">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_131" name="kdcdc20i" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_131">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_132" name="kddb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_132">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_133" name="kdpb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_133">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_134" name="kdpbi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_134">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_135" name="kdwee1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_135">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_136" name="kdwee1p" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_136">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_137" name="Kdb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_137">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_138" name="Kdbcdc20" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_138">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_139" name="Kdbcdh1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_139">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_140" name="ksW" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_140">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_141" name="K1b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_141">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_142" name="K2b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_142">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_143" name="K3b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_143">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_144" name="K4b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_144">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_145" name="K5b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_145">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_146" name="K6b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_146">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_147" name="K7b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_147">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_148" name="K8b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_148">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_149" name="vcb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_149">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_150" name="Vdb" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_150">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_151" name="Vm1b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_151">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_152" name="Vm2b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_152">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_153" name="vscdc20i" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_153">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_154" name="Vm3b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_154">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_155" name="Vm4b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_155">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_156" name="Vm5b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_156">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_157" name="V6b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_157">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_158" name="Vm7b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_158">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_159" name="Vm8b" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_159">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_160" name="vspbi" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_160">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_161" name="vswee1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_161">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_162" name="xb1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_162">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_163" name="xb2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_163">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_164" name="ATR_tot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_164">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41185" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_165" name="Chk1_tot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_165">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41182" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_166" name="Cdc45_tot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_166">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41182" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_167" name="kaatr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_167">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_168" name="kdatr" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_168">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_169" name="kdpol" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_169">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_170" name="kdprim" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_170">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_171" name="kspol" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_171">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000017" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_172" name="ksprim" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_172">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000016" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_173" name="K1cdc45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_173">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_174" name="K2cdc45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_174">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_175" name="K1chk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_175">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_176" name="K2chk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_176">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-21T10:30:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_177" name="Pol_tot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_177">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C41185" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_178" name="V1cdc45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_178">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_179" name="V2cdc45" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_179">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_180" name="V1chk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_180">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C94967" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_181" name="V2chk" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_181">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_182" name="Kdw" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_182">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/sbo/SBO:0000027" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_183" name="Kiw" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_183">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_184" name="n" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_184">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C64638" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_185" name="vdw" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_185">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_186" name="vsw" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:bqbiol="http://biomodels.net/biology-qualifiers/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_186">
    <bqbiol:hasProperty>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/ncit/C25636" />
      </rdf:Bag>
    </bqbiol:hasProperty>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="AP1 simulation by growth factor" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:07:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5073" name="GF" value="1"/>
          <Constant key="Parameter_5075" name="Kagf" value="0.1"/>
          <Constant key="Parameter_5076" name="eps" value="17"/>
          <Constant key="Parameter_5070" name="vsap1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="AP1 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:09:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5072" name="eps" value="17"/>
          <Constant key="Parameter_5071" name="kdap1" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="pRB synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:21:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5074" name="eps" value="17"/>
          <Constant key="Parameter_5077" name="vsprb" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="pRB and E2F complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:22:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5068" name="eps" value="17"/>
          <Constant key="Parameter_5066" name="kpc1" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="pRB and E2f complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:25:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5065" name="eps" value="17"/>
          <Constant key="Parameter_5069" name="kpc2" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="pRB phosphorylation through cyclin D" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:26:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5067" name="K1" value="0.1"/>
          <Constant key="Parameter_5042" name="V1" value="2.2"/>
          <Constant key="Parameter_5040" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="pRBp dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:31:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5039" name="K2" value="0.1"/>
          <Constant key="Parameter_5043" name="V2" value="2"/>
          <Constant key="Parameter_5041" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="pRB decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:32:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5045" name="eps" value="17"/>
          <Constant key="Parameter_5060" name="kdprb" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="pRBp phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:39:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5048" name="K3" value="0.1"/>
          <Constant key="Parameter_5062" name="V3" value="1"/>
          <Constant key="Parameter_5063" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="pRBpp dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:40:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5057" name="K4" value="0.1"/>
          <Constant key="Parameter_5044" name="V4" value="2"/>
          <Constant key="Parameter_5052" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="pRBp and E2F complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:42:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5059" name="eps" value="17"/>
          <Constant key="Parameter_5046" name="kpc3" value="0.025"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="PRBp and E2F complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:43:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5058" name="eps" value="17"/>
          <Constant key="Parameter_5051" name="kpc4" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="pRBp decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:43:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5055" name="eps" value="17"/>
          <Constant key="Parameter_5050" name="kdprbp" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="pRBpp decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:47:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5054" name="eps" value="17"/>
          <Constant key="Parameter_5053" name="kdprbpp" value="0.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="E2F synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:50:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5056" name="eps" value="17"/>
          <Constant key="Parameter_5061" name="vse2f" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="E2F phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:50:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5047" name="K1e2f" value="5"/>
          <Constant key="Parameter_5049" name="V1e2f" value="4"/>
          <Constant key="Parameter_5064" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="E2Fp dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:51:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5078" name="K2e2f" value="5"/>
          <Constant key="Parameter_5079" name="V2e2f" value="0.75"/>
          <Constant key="Parameter_5085" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="E2F decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:52:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5084" name="eps" value="17"/>
          <Constant key="Parameter_5086" name="kde2f" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="E2Fp decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T11:54:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5081" name="eps" value="17"/>
          <Constant key="Parameter_5080" name="kde2fp" value="1.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Cd synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:03:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5083" name="eps" value="17"/>
          <Constant key="Parameter_5082" name="kcd1" value="0.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="Cd synthesis through E2F" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:05:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5087" name="Ki7" value="0.1"/>
          <Constant key="Parameter_5091" name="Ki8" value="2"/>
          <Constant key="Parameter_5089" name="eps" value="17"/>
          <Constant key="Parameter_5088" name="kcd2" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="Cd cdk4/6 complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:06:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5092" name="Cdk4_tot" value="1.5"/>
          <Constant key="Parameter_5090" name="eps" value="17"/>
          <Constant key="Parameter_5094" name="kcom1" value="0.175"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="Cd cdk4/6 complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:10:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5096" name="eps" value="17"/>
          <Constant key="Parameter_5097" name="kdecom1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Cd degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:10:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5093" name="Kdd" value="0.1"/>
          <Constant key="Parameter_5095" name="Vdd" value="5"/>
          <Constant key="Parameter_5100" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Cd decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:11:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5101" name="eps" value="17"/>
          <Constant key="Parameter_5102" name="kddd" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Md complex inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:13:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5098" name="K2d" value="0.1"/>
          <Constant key="Parameter_5099" name="Vm2d" value="0.2"/>
          <Constant key="Parameter_5103" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Md complex activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:14:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5105" name="K1d" value="0.1"/>
          <Constant key="Parameter_5104" name="Vm1d" value="1"/>
          <Constant key="Parameter_5106" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="Md p27 complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:16:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5107" name="eps" value="17"/>
          <Constant key="Parameter_5108" name="kc1" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="Md p27 complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T12:17:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5109" name="eps" value="17"/>
          <Constant key="Parameter_5110" name="kc2" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="Ce synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T14:35:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5111" name="Ki10" value="2"/>
          <Constant key="Parameter_5118" name="Ki9" value="0.1"/>
          <Constant key="Parameter_5117" name="eps" value="17"/>
          <Constant key="Parameter_5116" name="kce" value="0.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Ce cdk2 complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T14:37:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5115" name="Cdk2_tot" value="2"/>
          <Constant key="Parameter_5113" name="eps" value="17"/>
          <Constant key="Parameter_5112" name="kcom2" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Ce cdk2 complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T14:40:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
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
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5123" name="eps" value="17"/>
          <Constant key="Parameter_5120" name="kdecom2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="Ce degradation through Skp2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T14:41:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5121" name="Kdceskp2" value="2"/>
          <Constant key="Parameter_5122" name="Kde" value="0.1"/>
          <Constant key="Parameter_5114" name="Vde" value="3"/>
          <Constant key="Parameter_5119" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="Ce decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:01:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5124" name="eps" value="17"/>
          <Constant key="Parameter_5125" name="kdde" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Me complex deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:12:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5126" name="K2e" value="0.1"/>
          <Constant key="Parameter_5127" name="Vm2e" value="1.4"/>
          <Constant key="Parameter_5195" name="eps" value="17"/>
          <Constant key="Parameter_5129" name="ib1" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="Me complex activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:15:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5152" name="K1e" value="0.1"/>
          <Constant key="Parameter_5130" name="Vm1e" value="2"/>
          <Constant key="Parameter_5128" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Me p27 complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:27:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5189" name="eps" value="17"/>
          <Constant key="Parameter_5190" name="kc3" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Me p27 complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:28:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5192" name="eps" value="17"/>
          <Constant key="Parameter_5133" name="kc4" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="Skp2 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:47:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5131" name="eps" value="17"/>
          <Constant key="Parameter_5191" name="vsskp2" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="Skp2 degradation through Cdh1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:47:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5134" name="Kcdh1" value="0.4"/>
          <Constant key="Parameter_5132" name="Kdskp2" value="0.5"/>
          <Constant key="Parameter_5138" name="Vdskp2" value="1.1"/>
          <Constant key="Parameter_5140" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="Skp2 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:48:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5141" name="eps" value="17"/>
          <Constant key="Parameter_5135" name="kddskp2" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="inactive dephosphorylated cdc25 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:52:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5137" name="eps" value="17"/>
          <Constant key="Parameter_5136" name="vspei" value="0.13"/>
        </ListOfConstants>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="Cdc25 deactivation through dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:52:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5139" name="K6e" value="0.1"/>
          <Constant key="Parameter_5142" name="V6e" value="0.8"/>
          <Constant key="Parameter_5151" name="eps" value="17"/>
          <Constant key="Parameter_5148" name="xe1" value="1"/>
          <Constant key="Parameter_5147" name="xe2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="Cdc25 activation through phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:54:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5149" name="K5e" value="0.1"/>
          <Constant key="Parameter_5144" name="Vm5e" value="5"/>
          <Constant key="Parameter_5143" name="ae" value="0.25"/>
          <Constant key="Parameter_5145" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="inactive Cdc25 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:54:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5150" name="eps" value="17"/>
          <Constant key="Parameter_5146" name="kdpei" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="active Cdc2  decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-17T15:56:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5027" name="eps" value="17"/>
          <Constant key="Parameter_5030" name="kdpe" value="0.075"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="Ca synthesis through E2F" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T09:48:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5032" name="Ki11" value="0.1"/>
          <Constant key="Parameter_5026" name="Ki12" value="2"/>
          <Constant key="Parameter_5025" name="eps" value="17"/>
          <Constant key="Parameter_5035" name="kca" value="0.0375"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="Ca cdk2 complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T09:51:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5028" name="Cdk2_tot" value="2"/>
          <Constant key="Parameter_5029" name="eps" value="17"/>
          <Constant key="Parameter_5034" name="kcom3" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="Ca cdk2 complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T09:52:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5031" name="eps" value="17"/>
          <Constant key="Parameter_5037" name="kdecom3" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="Ca degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T09:53:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5036" name="Kacdc20" value="2"/>
          <Constant key="Parameter_5033" name="Kda" value="1.1"/>
          <Constant key="Parameter_5187" name="Vda" value="2.5"/>
          <Constant key="Parameter_5188" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="Ca decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T09:54:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4889" name="eps" value="17"/>
          <Constant key="Parameter_4888" name="kdda" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_90" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="Ma inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T09:59:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4887" name="K2a" value="0.1"/>
          <Constant key="Parameter_4886" name="Vm2a" value="1.85"/>
          <Constant key="Parameter_4885" name="eps" value="17"/>
          <Constant key="Parameter_4884" name="ib2" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_91" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="Ma activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:01:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4883" name="K1a" value="0.1"/>
          <Constant key="Parameter_4882" name="Vm1a" value="2"/>
          <Constant key="Parameter_4881" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_92" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="Ma p27 complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:04:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4880" name="eps" value="17"/>
          <Constant key="Parameter_4879" name="kc5" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_93" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="Ma p27 complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:05:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4878" name="eps" value="17"/>
          <Constant key="Parameter_4877" name="kc6" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_94" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="p27 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:08:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4876" name="eps" value="17"/>
          <Constant key="Parameter_4875" name="vs1p27" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_95" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="p27 synthesis through E2F" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:08:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4874" name="Ki13" value="0.1"/>
          <Constant key="Parameter_4873" name="Ki14" value="2"/>
          <Constant key="Parameter_4872" name="eps" value="17"/>
          <Constant key="Parameter_4871" name="vs2p27" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_96" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="Mb p27 complex formation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:10:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4870" name="eps" value="17"/>
          <Constant key="Parameter_4869" name="kc7" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_97" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="Mb p26 complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:11:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4868" name="eps" value="17"/>
          <Constant key="Parameter_4867" name="kc8" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_98" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="p27 phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:13:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4866" name="K1p27" value="0.5"/>
          <Constant key="Parameter_4865" name="V1p27" value="100"/>
          <Constant key="Parameter_4864" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_99" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="p27 dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:15:41Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4863" name="K2p27" value="0.5"/>
          <Constant key="Parameter_4862" name="V2p27" value="0.1"/>
          <Constant key="Parameter_4861" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_100" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="p27 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:16:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4860" name="eps" value="17"/>
          <Constant key="Parameter_4859" name="kddp27" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_101" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="p27 degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:18:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4858" name="Kdp27p" value="0.1"/>
          <Constant key="Parameter_4857" name="Kdp27skp2" value="0.1"/>
          <Constant key="Parameter_4856" name="Vdp27p" value="5"/>
          <Constant key="Parameter_4855" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_102" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="p27p decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:19:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4854" name="eps" value="17"/>
          <Constant key="Parameter_4853" name="kddp27p" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_103" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="cdh1 inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:23:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4852" name="K2cdh1" value="0.01"/>
          <Constant key="Parameter_4851" name="V2cdh1" value="8"/>
          <Constant key="Parameter_4850" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_104" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="cdh1 activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:24:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4849" name="K1cdh1" value="0.01"/>
          <Constant key="Parameter_4848" name="V1cdh1" value="1.25"/>
          <Constant key="Parameter_4847" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_105" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="inactive cdh1 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:35:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4846" name="eps" value="17"/>
          <Constant key="Parameter_4845" name="kdcdh1i" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_106" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="active cdh1 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:37:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4844" name="eps" value="17"/>
          <Constant key="Parameter_4843" name="kdcdh1a" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_107" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="active cdh1 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:38:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4842" name="eps" value="17"/>
          <Constant key="Parameter_4841" name="vscdh1a" value="0.11"/>
        </ListOfConstants>
        <KineticLaw function="Function_108" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="cdc25 inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:39:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4840" name="K6a" value="0.1"/>
          <Constant key="Parameter_4839" name="V6a" value="1"/>
          <Constant key="Parameter_4838" name="eps" value="17"/>
          <Constant key="Parameter_4837" name="xa1" value="1"/>
          <Constant key="Parameter_4836" name="xa2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_109" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="cdc25 activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:41:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4835" name="K5a" value="0.1"/>
          <Constant key="Parameter_4834" name="Vm5a" value="4"/>
          <Constant key="Parameter_4833" name="aa" value="0.2"/>
          <Constant key="Parameter_4832" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_110" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="inactive cdc25 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:42:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4831" name="eps" value="17"/>
          <Constant key="Parameter_4830" name="kdpai" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_111" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="inactive cdc25 syntehsis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:40:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4829" name="eps" value="17"/>
          <Constant key="Parameter_4828" name="vspai" value="0.105"/>
        </ListOfConstants>
        <KineticLaw function="Function_112" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="active cdc25 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:43:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4827" name="eps" value="17"/>
          <Constant key="Parameter_4826" name="kdpa" value="0.075"/>
        </ListOfConstants>
        <KineticLaw function="Function_113" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="Cb synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T10:51:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4825" name="eps" value="17"/>
          <Constant key="Parameter_4824" name="vcb" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_114" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="ModelValue_149"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="Cb degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:00:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4823" name="Cdk1_tot" value="0.5"/>
          <Constant key="Parameter_4822" name="eps" value="17"/>
          <Constant key="Parameter_4821" name="kcom4" value="0.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_115" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="Mbi complex dissociation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:00:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4820" name="eps" value="17"/>
          <Constant key="Parameter_4819" name="kdecom4" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_116" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="Cb degradation through Cdc20" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:01:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4818" name="Kdb" value="0.005"/>
          <Constant key="Parameter_4817" name="Kdbcdc20" value="0.2"/>
          <Constant key="Parameter_4816" name="Vdb" value="0.06"/>
          <Constant key="Parameter_4815" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_117" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="ModelValue_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="Cb decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:01:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4814" name="eps" value="17"/>
          <Constant key="Parameter_4813" name="kddb" value="0.005"/>
        </ListOfConstants>
        <KineticLaw function="Function_118" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="Cb degradation through cdh1" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:06:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_28" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4812" name="Kdb" value="0.005"/>
          <Constant key="Parameter_4811" name="Kdbcdh1" value="0.1"/>
          <Constant key="Parameter_4810" name="Vdb" value="0.06"/>
          <Constant key="Parameter_4809" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_119" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="ModelValue_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="Mb inactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:11:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4808" name="K2b" value="0.1"/>
          <Constant key="Parameter_4807" name="Vm2b" value="2.1"/>
          <Constant key="Parameter_4806" name="eps" value="17"/>
          <Constant key="Parameter_4805" name="ib3" value="0.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_120" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="ModelValue_152"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="Mv activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:14:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4804" name="K1b" value="0.1"/>
          <Constant key="Parameter_4803" name="Vm1b" value="3.9"/>
          <Constant key="Parameter_4802" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_121" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="ModelValue_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="inactive cdc20 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:20:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4801" name="eps" value="17"/>
          <Constant key="Parameter_4800" name="vscdc20i" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_122" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="ModelValue_153"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="cdc20 activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:22:26Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4799" name="K3b" value="0.1"/>
          <Constant key="Parameter_4798" name="Vm3b" value="8"/>
          <Constant key="Parameter_4797" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_123" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="ModelValue_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="Cdc20 deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:23:00Z</dcterms:W3CDTF>
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
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4796" name="K4b" value="0.1"/>
          <Constant key="Parameter_4795" name="Vm4b" value="0.7"/>
          <Constant key="Parameter_4794" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_124" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="ModelValue_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="inactive cdc20 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:23:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4793" name="eps" value="17"/>
          <Constant key="Parameter_4792" name="kdcdc20i" value="0.14"/>
        </ListOfConstants>
        <KineticLaw function="Function_125" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="actice cdc20 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:23:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4791" name="eps" value="17"/>
          <Constant key="Parameter_4790" name="kdcdc20a" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_126" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="inactive cdc25 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:26:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4789" name="eps" value="17"/>
          <Constant key="Parameter_4788" name="vspbi" value="0.12"/>
        </ListOfConstants>
        <KineticLaw function="Function_127" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="ModelValue_160"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="cdc25 deactivation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:27:04Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4787" name="K6b" value="0.1"/>
          <Constant key="Parameter_4786" name="V6b" value="1"/>
          <Constant key="Parameter_4785" name="eps" value="17"/>
          <Constant key="Parameter_4784" name="xb1" value="1"/>
          <Constant key="Parameter_4783" name="xb2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_128" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="ModelValue_146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="ModelValue_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="ModelValue_162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="ModelValue_163"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="cdc25 activation 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:28:08Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4782" name="K5b" value="0.1"/>
          <Constant key="Parameter_4781" name="Vm5b" value="5"/>
          <Constant key="Parameter_4780" name="ab" value="0.11"/>
          <Constant key="Parameter_4779" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_129" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_641">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_640">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="ModelValue_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="inactive cdc25 decay 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:29:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4778" name="eps" value="17"/>
          <Constant key="Parameter_4777" name="kdpbi" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_130" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_646">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="active cdc25 decay 2" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:30:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4776" name="eps" value="17"/>
          <Constant key="Parameter_4775" name="kdpb" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_131" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="Wee1 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:35:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4774" name="eps" value="17"/>
          <Constant key="Parameter_4773" name="vswee1" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_132" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="Wee1 translation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:35:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4772" name="eps" value="17"/>
          <Constant key="Parameter_4771" name="ksW" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_133" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="Wee1 phosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_94">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:45:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4770" name="K7b" value="0.1"/>
          <Constant key="Parameter_4769" name="Vm7b" value="1.2"/>
          <Constant key="Parameter_4768" name="eps" value="17"/>
          <Constant key="Parameter_4767" name="ib" value="0.75"/>
        </ListOfConstants>
        <KineticLaw function="Function_134" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="ModelValue_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="ModelValue_158"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_656">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_657">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="Wee1 dephosphorylation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:47:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4766" name="K8b" value="0.1"/>
          <Constant key="Parameter_4765" name="Vm8b" value="1"/>
          <Constant key="Parameter_4764" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_135" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="ModelValue_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="ModelValue_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="Wee1 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_96">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:47:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4763" name="eps" value="17"/>
          <Constant key="Parameter_4762" name="kdwee1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_136" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="Wee1p decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:47:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4761" name="eps" value="17"/>
          <Constant key="Parameter_4760" name="kdwee1p" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_137" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_668">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="Cdc45 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_98">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:58:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4759" name="Cdc45_tot" value="0.5"/>
          <Constant key="Parameter_4758" name="K1cdc45" value="0.02"/>
          <Constant key="Parameter_4757" name="V1cdc45" value="0.8"/>
          <Constant key="Parameter_4756" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_138" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_670">
              <SourceParameter reference="ModelValue_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_669">
              <SourceParameter reference="ModelValue_173"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="ModelValue_178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="Cdc45 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:58:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4755" name="K2cdc45" value="0.02"/>
          <Constant key="Parameter_4754" name="V2cdc45" value="0.12"/>
          <Constant key="Parameter_4753" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_139" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_679">
              <SourceParameter reference="ModelValue_174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_678">
              <SourceParameter reference="ModelValue_179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="Polymerase activation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_100">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T11:59:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4752" name="Pol_tot" value="0.5"/>
          <Constant key="Parameter_4751" name="eps" value="17"/>
          <Constant key="Parameter_4750" name="kspol" value="0.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_140" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="ModelValue_177"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="ModelValue_171"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="Polymerase deactivation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T12:01:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4749" name="eps" value="17"/>
          <Constant key="Parameter_4748" name="kdpol" value="0.2"/>
        </ListOfConstants>
        <KineticLaw function="Function_141" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="ModelValue_169"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="RNA Primer synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_102">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T12:04:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4747" name="eps" value="17"/>
          <Constant key="Parameter_4746" name="ksprim" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_142" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_684">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_685">
              <SourceParameter reference="ModelValue_172"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="RNA Primer degradation" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T12:05:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4745" name="eps" value="17"/>
          <Constant key="Parameter_4744" name="kdprim" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_143" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_690">
              <SourceParameter reference="ModelValue_170"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="ATR activation by Primer" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_104">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T12:07:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4743" name="ATR_tot" value="0.5"/>
          <Constant key="Parameter_4742" name="eps" value="17"/>
          <Constant key="Parameter_4741" name="kaatr" value="0.022"/>
        </ListOfConstants>
        <KineticLaw function="Function_144" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="ModelValue_164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="ModelValue_167"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="Atr deactivation by Primer" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T12:07:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4740" name="eps" value="17"/>
          <Constant key="Parameter_4739" name="kdatr" value="0.15"/>
        </ListOfConstants>
        <KineticLaw function="Function_145" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="ModelValue_168"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="Chk1 synthesis" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_106">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T12:08:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4738" name="Chk1_tot" value="0.5"/>
          <Constant key="Parameter_4737" name="K1chk" value="0.5"/>
          <Constant key="Parameter_4736" name="V1chk" value="4"/>
          <Constant key="Parameter_4735" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_146" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_698">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_699">
              <SourceParameter reference="ModelValue_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="ModelValue_175"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="ModelValue_180"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_706">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="Chk1 decay" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-12-19T12:09:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4734" name="K2chk" value="0.5"/>
          <Constant key="Parameter_4733" name="V2chk" value="0.1"/>
          <Constant key="Parameter_4732" name="eps" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_147" unitType="Default" scalingCompartment="CN=Root,Model=Gerard2009,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="ModelValue_176"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="ModelValue_181"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_709">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Gerard2009" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[pRB]" value="6.022140857e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[pRBp]" value="1.50553521425e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[pRBpp]" value="60221408570000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[E2F]" value="60221408570000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[E2Fp]" value="602214085700000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[pRBc1]" value="60221408570000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[pRBc2]" value="30110704285000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Cd]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Mdi]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Md]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Mdp27]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Ce]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Mei]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Me]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Skp2]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Mep27]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Pei]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Pe]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Ca]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Mai]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Ma]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Map27]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[p27]" value="1.50553521425e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[p27p]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Cdh1i]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Cdh1a]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Pai]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Pa]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Cb]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Mbi]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Mb]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Mbp27]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Cdc20i]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Cdc20a]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Pbi]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Pb]" value="60221408570000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Wee1]" value="60221408570000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Wee1p]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Pol]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Cdc45]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Primer]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Chk1]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[ATR]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[AP1]" value="6022140857000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Compartments[cell],Vector=Metabolites[Mw]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[GF]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kagf]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdap1]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[eps]" value="17" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vsap1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kde2f]" value="0.002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kde2fp]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdprb]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdprbp]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdprbpp]" value="0.040000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kpc1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kpc2]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kpc3]" value="0.025000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kpc4]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V1]" value="2.2000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V2]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V3]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V4]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1e2f]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2e2f]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V1e2f]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V2e2f]" value="0.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vse2f]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vsprb]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Cdk4_tot]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Ki7]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Ki8]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kcd1]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kcd2]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdecom1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kcom1]" value="0.17499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kc1]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kc2]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kddd]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kdd]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1d]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2d]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vdd]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm1d]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm2d]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[ae]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Cdk2_tot]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[ib1]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Ki9]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Ki10]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kce]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kc3]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kc4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdecom2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kcom2]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdde]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kddskp2]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdpe]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdpei]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kde]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kdceskp2]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kdskp2]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kcdh1]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1e]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2e]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K5e]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K6e]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vde]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vdskp2]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm1e]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm2e]" value="1.3999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm5e]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V6e]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vspei]" value="0.13" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vsskp2]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[xe1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[xe2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[aa]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[ib2]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Ki11]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Ki12]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Ki13]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Ki14]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kca]" value="0.037499999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdecom3]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kcom3]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kc5]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kc6]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdda]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kddp27]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kddp27p]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdcdh1a]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdcdh1i]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdpa]" value="0.074999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdpai]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kda]" value="1.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kdp27p]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kdp27skp2]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kacdc20]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1a]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2a]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1cdh1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2cdh1]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K5a]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K6a]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1p27]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2p27]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vdp27p]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vda]" value="2.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm1a]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm2a]" value="1.8500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm5a]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V6a]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vscdh1a]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vspai]" value="0.105" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vs1p27]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vs2p27]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V1cdh1]" value="1.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V2cdh1]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V1p27]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V2p27]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[xa1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[xa2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[ab]" value="0.11" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Cdk1_tot]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[ib]" value="0.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[ib3]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kc7]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kc8]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdecom4]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kcom4]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdcdc20a]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdcdc20i]" value="0.14000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kddb]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdpb]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdpbi]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdwee1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdwee1p]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kdb]" value="0.0050000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kdbcdc20]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kdbcdh1]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[ksW]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1b]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2b]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K3b]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K4b]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K5b]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K6b]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K7b]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K8b]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vcb]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vdb]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm1b]" value="3.8999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm2b]" value="2.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vscdc20i]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm3b]" value="8" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm4b]" value="0.69999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm5b]" value="5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V6b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm7b]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Vm8b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vspbi]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vswee1]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[xb1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[xb2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[ATR_tot]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Chk1_tot]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Cdc45_tot]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kaatr]" value="0.021999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdatr]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdpol]" value="0.20000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kdprim]" value="0.14999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[kspol]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[ksprim]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1cdc45]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2cdc45]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K1chk]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[K2chk]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Pol_tot]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V1cdc45]" value="0.80000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V2cdc45]" value="0.12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V1chk]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[V2chk]" value="0.10000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kdw]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[Kiw]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[n]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vdw]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Values[vsw]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[AP1 simulation by growth factor]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[AP1 simulation by growth factor],ParameterGroup=Parameters,Parameter=GF" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[GF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[AP1 simulation by growth factor],ParameterGroup=Parameters,Parameter=Kagf" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kagf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[AP1 simulation by growth factor],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[AP1 simulation by growth factor],ParameterGroup=Parameters,Parameter=vsap1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vsap1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[AP1 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[AP1 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[AP1 decay],ParameterGroup=Parameters,Parameter=kdap1" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdap1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB synthesis],ParameterGroup=Parameters,Parameter=vsprb" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vsprb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB and E2F complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB and E2F complex formation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB and E2F complex formation],ParameterGroup=Parameters,Parameter=kpc1" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kpc1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB and E2f complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB and E2f complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB and E2f complex dissociation],ParameterGroup=Parameters,Parameter=kpc2" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kpc2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB phosphorylation through cyclin D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB phosphorylation through cyclin D],ParameterGroup=Parameters,Parameter=K1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB phosphorylation through cyclin D],ParameterGroup=Parameters,Parameter=V1" value="2.2000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB phosphorylation through cyclin D],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp dephosphorylation],ParameterGroup=Parameters,Parameter=K2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp dephosphorylation],ParameterGroup=Parameters,Parameter=V2" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp dephosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRB decay],ParameterGroup=Parameters,Parameter=kdprb" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdprb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp phosphorylation],ParameterGroup=Parameters,Parameter=K3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp phosphorylation],ParameterGroup=Parameters,Parameter=V3" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp phosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBpp dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBpp dephosphorylation],ParameterGroup=Parameters,Parameter=K4" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBpp dephosphorylation],ParameterGroup=Parameters,Parameter=V4" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBpp dephosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp and E2F complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp and E2F complex formation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp and E2F complex formation],ParameterGroup=Parameters,Parameter=kpc3" value="0.025000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kpc3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[PRBp and E2F complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[PRBp and E2F complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[PRBp and E2F complex dissociation],ParameterGroup=Parameters,Parameter=kpc4" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kpc4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBp decay],ParameterGroup=Parameters,Parameter=kdprbp" value="0.059999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdprbp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBpp decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBpp decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[pRBpp decay],ParameterGroup=Parameters,Parameter=kdprbpp" value="0.040000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdprbpp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F synthesis],ParameterGroup=Parameters,Parameter=vse2f" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vse2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F phosphorylation],ParameterGroup=Parameters,Parameter=K1e2f" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1e2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F phosphorylation],ParameterGroup=Parameters,Parameter=V1e2f" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V1e2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F phosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2Fp dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2Fp dephosphorylation],ParameterGroup=Parameters,Parameter=K2e2f" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2e2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2Fp dephosphorylation],ParameterGroup=Parameters,Parameter=V2e2f" value="0.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V2e2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2Fp dephosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2F decay],ParameterGroup=Parameters,Parameter=kde2f" value="0.002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kde2f],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2Fp decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2Fp decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[E2Fp decay],ParameterGroup=Parameters,Parameter=kde2fp" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kde2fp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd synthesis],ParameterGroup=Parameters,Parameter=kcd1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kcd1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd synthesis through E2F]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd synthesis through E2F],ParameterGroup=Parameters,Parameter=Ki7" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Ki7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd synthesis through E2F],ParameterGroup=Parameters,Parameter=Ki8" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Ki8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd synthesis through E2F],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd synthesis through E2F],ParameterGroup=Parameters,Parameter=kcd2" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kcd2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd cdk4/6 complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd cdk4/6 complex formation],ParameterGroup=Parameters,Parameter=Cdk4_tot" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Cdk4_tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd cdk4/6 complex formation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd cdk4/6 complex formation],ParameterGroup=Parameters,Parameter=kcom1" value="0.17499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kcom1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd cdk4/6 complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd cdk4/6 complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd cdk4/6 complex dissociation],ParameterGroup=Parameters,Parameter=kdecom1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdecom1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd degradation],ParameterGroup=Parameters,Parameter=Kdd" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kdd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd degradation],ParameterGroup=Parameters,Parameter=Vdd" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vdd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd degradation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cd decay],ParameterGroup=Parameters,Parameter=kddd" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kddd],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md complex inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md complex inactivation],ParameterGroup=Parameters,Parameter=K2d" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md complex inactivation],ParameterGroup=Parameters,Parameter=Vm2d" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm2d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md complex inactivation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md complex activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md complex activation],ParameterGroup=Parameters,Parameter=K1d" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md complex activation],ParameterGroup=Parameters,Parameter=Vm1d" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm1d],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md complex activation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md p27 complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md p27 complex formation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md p27 complex formation],ParameterGroup=Parameters,Parameter=kc1" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kc1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md p27 complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md p27 complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Md p27 complex dissociation],ParameterGroup=Parameters,Parameter=kc2" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kc2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce synthesis],ParameterGroup=Parameters,Parameter=Ki10" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Ki10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce synthesis],ParameterGroup=Parameters,Parameter=Ki9" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Ki9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce synthesis],ParameterGroup=Parameters,Parameter=kce" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kce],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce cdk2 complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce cdk2 complex formation],ParameterGroup=Parameters,Parameter=Cdk2_tot" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Cdk2_tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce cdk2 complex formation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce cdk2 complex formation],ParameterGroup=Parameters,Parameter=kcom2" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kcom2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce cdk2 complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce cdk2 complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce cdk2 complex dissociation],ParameterGroup=Parameters,Parameter=kdecom2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdecom2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce degradation through Skp2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce degradation through Skp2],ParameterGroup=Parameters,Parameter=Kdceskp2" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kdceskp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce degradation through Skp2],ParameterGroup=Parameters,Parameter=Kde" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kde],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce degradation through Skp2],ParameterGroup=Parameters,Parameter=Vde" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vde],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce degradation through Skp2],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ce decay],ParameterGroup=Parameters,Parameter=kdde" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdde],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me complex deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me complex deactivation],ParameterGroup=Parameters,Parameter=K2e" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me complex deactivation],ParameterGroup=Parameters,Parameter=Vm2e" value="1.3999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm2e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me complex deactivation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me complex deactivation],ParameterGroup=Parameters,Parameter=ib1" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[ib1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me complex activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me complex activation],ParameterGroup=Parameters,Parameter=K1e" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me complex activation],ParameterGroup=Parameters,Parameter=Vm1e" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm1e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me complex activation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me p27 complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me p27 complex formation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me p27 complex formation],ParameterGroup=Parameters,Parameter=kc3" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kc3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me p27 complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me p27 complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Me p27 complex dissociation],ParameterGroup=Parameters,Parameter=kc4" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kc4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 synthesis],ParameterGroup=Parameters,Parameter=vsskp2" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vsskp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 degradation through Cdh1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 degradation through Cdh1],ParameterGroup=Parameters,Parameter=Kcdh1" value="0.40000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kcdh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 degradation through Cdh1],ParameterGroup=Parameters,Parameter=Kdskp2" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kdskp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 degradation through Cdh1],ParameterGroup=Parameters,Parameter=Vdskp2" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vdskp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 degradation through Cdh1],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Skp2 decay],ParameterGroup=Parameters,Parameter=kddskp2" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kddskp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive dephosphorylated cdc25 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive dephosphorylated cdc25 synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive dephosphorylated cdc25 synthesis],ParameterGroup=Parameters,Parameter=vspei" value="0.13" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vspei],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 deactivation through dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 deactivation through dephosphorylation],ParameterGroup=Parameters,Parameter=K6e" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K6e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 deactivation through dephosphorylation],ParameterGroup=Parameters,Parameter=V6e" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V6e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 deactivation through dephosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 deactivation through dephosphorylation],ParameterGroup=Parameters,Parameter=xe1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[xe1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 deactivation through dephosphorylation],ParameterGroup=Parameters,Parameter=xe2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[xe2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 activation through phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 activation through phosphorylation],ParameterGroup=Parameters,Parameter=K5e" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K5e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 activation through phosphorylation],ParameterGroup=Parameters,Parameter=Vm5e" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm5e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 activation through phosphorylation],ParameterGroup=Parameters,Parameter=ae" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[ae],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc25 activation through phosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive Cdc25 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive Cdc25 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive Cdc25 decay],ParameterGroup=Parameters,Parameter=kdpei" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdpei],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[active Cdc2  decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active Cdc2  decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active Cdc2  decay],ParameterGroup=Parameters,Parameter=kdpe" value="0.074999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdpe],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca synthesis through E2F]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca synthesis through E2F],ParameterGroup=Parameters,Parameter=Ki11" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Ki11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca synthesis through E2F],ParameterGroup=Parameters,Parameter=Ki12" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Ki12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca synthesis through E2F],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca synthesis through E2F],ParameterGroup=Parameters,Parameter=kca" value="0.037499999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kca],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca cdk2 complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca cdk2 complex formation],ParameterGroup=Parameters,Parameter=Cdk2_tot" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Cdk2_tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca cdk2 complex formation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca cdk2 complex formation],ParameterGroup=Parameters,Parameter=kcom3" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kcom3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca cdk2 complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca cdk2 complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca cdk2 complex dissociation],ParameterGroup=Parameters,Parameter=kdecom3" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdecom3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca degradation],ParameterGroup=Parameters,Parameter=Kacdc20" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kacdc20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca degradation],ParameterGroup=Parameters,Parameter=Kda" value="1.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca degradation],ParameterGroup=Parameters,Parameter=Vda" value="2.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca degradation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ca decay],ParameterGroup=Parameters,Parameter=kdda" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdda],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma inactivation],ParameterGroup=Parameters,Parameter=K2a" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma inactivation],ParameterGroup=Parameters,Parameter=Vm2a" value="1.8500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm2a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma inactivation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma inactivation],ParameterGroup=Parameters,Parameter=ib2" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[ib2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma activation],ParameterGroup=Parameters,Parameter=K1a" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma activation],ParameterGroup=Parameters,Parameter=Vm1a" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma activation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma p27 complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma p27 complex formation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma p27 complex formation],ParameterGroup=Parameters,Parameter=kc5" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kc5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma p27 complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma p27 complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Ma p27 complex dissociation],ParameterGroup=Parameters,Parameter=kc6" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kc6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 synthesis],ParameterGroup=Parameters,Parameter=vs1p27" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vs1p27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 synthesis through E2F]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 synthesis through E2F],ParameterGroup=Parameters,Parameter=Ki13" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Ki13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 synthesis through E2F],ParameterGroup=Parameters,Parameter=Ki14" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Ki14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 synthesis through E2F],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 synthesis through E2F],ParameterGroup=Parameters,Parameter=vs2p27" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vs2p27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb p27 complex formation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb p27 complex formation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb p27 complex formation],ParameterGroup=Parameters,Parameter=kc7" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kc7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb p26 complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb p26 complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb p26 complex dissociation],ParameterGroup=Parameters,Parameter=kc8" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kc8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 phosphorylation],ParameterGroup=Parameters,Parameter=K1p27" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1p27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 phosphorylation],ParameterGroup=Parameters,Parameter=V1p27" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V1p27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 phosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 dephosphorylation],ParameterGroup=Parameters,Parameter=K2p27" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2p27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 dephosphorylation],ParameterGroup=Parameters,Parameter=V2p27" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V2p27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 dephosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 decay],ParameterGroup=Parameters,Parameter=kddp27" value="0.059999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kddp27],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 degradation],ParameterGroup=Parameters,Parameter=Kdp27p" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kdp27p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 degradation],ParameterGroup=Parameters,Parameter=Kdp27skp2" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kdp27skp2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 degradation],ParameterGroup=Parameters,Parameter=Vdp27p" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vdp27p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27 degradation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27p decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27p decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[p27p decay],ParameterGroup=Parameters,Parameter=kddp27p" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kddp27p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdh1 inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdh1 inactivation],ParameterGroup=Parameters,Parameter=K2cdh1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2cdh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdh1 inactivation],ParameterGroup=Parameters,Parameter=V2cdh1" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V2cdh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdh1 inactivation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdh1 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdh1 activation],ParameterGroup=Parameters,Parameter=K1cdh1" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1cdh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdh1 activation],ParameterGroup=Parameters,Parameter=V1cdh1" value="1.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V1cdh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdh1 activation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdh1 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdh1 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdh1 decay],ParameterGroup=Parameters,Parameter=kdcdh1i" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdcdh1i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdh1 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdh1 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdh1 decay],ParameterGroup=Parameters,Parameter=kdcdh1a" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdcdh1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdh1 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdh1 synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdh1 synthesis],ParameterGroup=Parameters,Parameter=vscdh1a" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vscdh1a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 inactivation],ParameterGroup=Parameters,Parameter=K6a" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K6a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 inactivation],ParameterGroup=Parameters,Parameter=V6a" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V6a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 inactivation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 inactivation],ParameterGroup=Parameters,Parameter=xa1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[xa1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 inactivation],ParameterGroup=Parameters,Parameter=xa2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[xa2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation],ParameterGroup=Parameters,Parameter=K5a" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K5a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation],ParameterGroup=Parameters,Parameter=Vm5a" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm5a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation],ParameterGroup=Parameters,Parameter=aa" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[aa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 decay],ParameterGroup=Parameters,Parameter=kdpai" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdpai],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 syntehsis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 syntehsis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 syntehsis],ParameterGroup=Parameters,Parameter=vspai" value="0.105" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vspai],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdc25 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdc25 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdc25 decay],ParameterGroup=Parameters,Parameter=kdpa" value="0.074999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdpa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb synthesis],ParameterGroup=Parameters,Parameter=vcb" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vcb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation],ParameterGroup=Parameters,Parameter=Cdk1_tot" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Cdk1_tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation],ParameterGroup=Parameters,Parameter=kcom4" value="0.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kcom4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mbi complex dissociation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mbi complex dissociation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mbi complex dissociation],ParameterGroup=Parameters,Parameter=kdecom4" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdecom4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through Cdc20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through Cdc20],ParameterGroup=Parameters,Parameter=Kdb" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through Cdc20],ParameterGroup=Parameters,Parameter=Kdbcdc20" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kdbcdc20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through Cdc20],ParameterGroup=Parameters,Parameter=Vdb" value="0.059999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through Cdc20],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb decay],ParameterGroup=Parameters,Parameter=kddb" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kddb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through cdh1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through cdh1],ParameterGroup=Parameters,Parameter=Kdb" value="0.0050000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through cdh1],ParameterGroup=Parameters,Parameter=Kdbcdh1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Kdbcdh1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through cdh1],ParameterGroup=Parameters,Parameter=Vdb" value="0.059999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vdb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cb degradation through cdh1],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb inactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb inactivation],ParameterGroup=Parameters,Parameter=K2b" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb inactivation],ParameterGroup=Parameters,Parameter=Vm2b" value="2.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm2b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb inactivation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mb inactivation],ParameterGroup=Parameters,Parameter=ib3" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[ib3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mv activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mv activation],ParameterGroup=Parameters,Parameter=K1b" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mv activation],ParameterGroup=Parameters,Parameter=Vm1b" value="3.8999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm1b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Mv activation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc20 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc20 synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc20 synthesis],ParameterGroup=Parameters,Parameter=vscdc20i" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vscdc20i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc20 activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc20 activation],ParameterGroup=Parameters,Parameter=K3b" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K3b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc20 activation],ParameterGroup=Parameters,Parameter=Vm3b" value="8" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm3b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc20 activation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc20 deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc20 deactivation],ParameterGroup=Parameters,Parameter=K4b" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K4b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc20 deactivation],ParameterGroup=Parameters,Parameter=Vm4b" value="0.69999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm4b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc20 deactivation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc20 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc20 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc20 decay],ParameterGroup=Parameters,Parameter=kdcdc20i" value="0.14000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdcdc20i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[actice cdc20 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[actice cdc20 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[actice cdc20 decay],ParameterGroup=Parameters,Parameter=kdcdc20a" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdcdc20a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 synthesis],ParameterGroup=Parameters,Parameter=vspbi" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vspbi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 deactivation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 deactivation 2],ParameterGroup=Parameters,Parameter=K6b" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K6b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 deactivation 2],ParameterGroup=Parameters,Parameter=V6b" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V6b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 deactivation 2],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 deactivation 2],ParameterGroup=Parameters,Parameter=xb1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[xb1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 deactivation 2],ParameterGroup=Parameters,Parameter=xb2" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[xb2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation 2],ParameterGroup=Parameters,Parameter=K5b" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K5b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation 2],ParameterGroup=Parameters,Parameter=Vm5b" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm5b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation 2],ParameterGroup=Parameters,Parameter=ab" value="0.11" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[ab],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[cdc25 activation 2],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 decay 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 decay 2],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[inactive cdc25 decay 2],ParameterGroup=Parameters,Parameter=kdpbi" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdpbi],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdc25 decay 2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdc25 decay 2],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[active cdc25 decay 2],ParameterGroup=Parameters,Parameter=kdpb" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdpb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 synthesis],ParameterGroup=Parameters,Parameter=vswee1" value="0.059999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[vswee1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 translation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 translation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 translation],ParameterGroup=Parameters,Parameter=ksW" value="5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[ksW],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 phosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 phosphorylation],ParameterGroup=Parameters,Parameter=K7b" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K7b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 phosphorylation],ParameterGroup=Parameters,Parameter=Vm7b" value="1.2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm7b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 phosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 phosphorylation],ParameterGroup=Parameters,Parameter=ib" value="0.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[ib],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 dephosphorylation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 dephosphorylation],ParameterGroup=Parameters,Parameter=K8b" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K8b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 dephosphorylation],ParameterGroup=Parameters,Parameter=Vm8b" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Vm8b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 dephosphorylation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1 decay],ParameterGroup=Parameters,Parameter=kdwee1" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdwee1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1p decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1p decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Wee1p decay],ParameterGroup=Parameters,Parameter=kdwee1p" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdwee1p],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc45 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc45 synthesis],ParameterGroup=Parameters,Parameter=Cdc45_tot" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Cdc45_tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc45 synthesis],ParameterGroup=Parameters,Parameter=K1cdc45" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1cdc45],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc45 synthesis],ParameterGroup=Parameters,Parameter=V1cdc45" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V1cdc45],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc45 synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc45 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc45 decay],ParameterGroup=Parameters,Parameter=K2cdc45" value="0.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2cdc45],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc45 decay],ParameterGroup=Parameters,Parameter=V2cdc45" value="0.12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V2cdc45],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Cdc45 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Polymerase activation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Polymerase activation],ParameterGroup=Parameters,Parameter=Pol_tot" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Pol_tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Polymerase activation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Polymerase activation],ParameterGroup=Parameters,Parameter=kspol" value="0.80000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kspol],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Polymerase deactivation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Polymerase deactivation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Polymerase deactivation],ParameterGroup=Parameters,Parameter=kdpol" value="0.20000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdpol],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[RNA Primer synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[RNA Primer synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[RNA Primer synthesis],ParameterGroup=Parameters,Parameter=ksprim" value="0.050000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[ksprim],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[RNA Primer degradation]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[RNA Primer degradation],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[RNA Primer degradation],ParameterGroup=Parameters,Parameter=kdprim" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdprim],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[ATR activation by Primer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[ATR activation by Primer],ParameterGroup=Parameters,Parameter=ATR_tot" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[ATR_tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[ATR activation by Primer],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[ATR activation by Primer],ParameterGroup=Parameters,Parameter=kaatr" value="0.021999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kaatr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Atr deactivation by Primer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Atr deactivation by Primer],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Atr deactivation by Primer],ParameterGroup=Parameters,Parameter=kdatr" value="0.14999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[kdatr],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Chk1 synthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Chk1 synthesis],ParameterGroup=Parameters,Parameter=Chk1_tot" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[Chk1_tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Chk1 synthesis],ParameterGroup=Parameters,Parameter=K1chk" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K1chk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Chk1 synthesis],ParameterGroup=Parameters,Parameter=V1chk" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V1chk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Chk1 synthesis],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Gerard2009,Vector=Reactions[Chk1 decay]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Chk1 decay],ParameterGroup=Parameters,Parameter=K2chk" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[K2chk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Chk1 decay],ParameterGroup=Parameters,Parameter=V2chk" value="0.10000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[V2chk],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Gerard2009,Vector=Reactions[Chk1 decay],ParameterGroup=Parameters,Parameter=eps" value="17" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Gerard2009,Vector=Values[eps],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 1.50553521425e+17 60221408570000000 1.50553521425e+17 6022140857000000 6022140857000000 6022140857000000 6022140857000000 60221408570000000 6.022140857e+17 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 602214085700000 60221408570000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 60221408570000000 6022140857000000 60221408570000000 6022140857000000 6022140857000000 30110704285000000 6022140857000000 6022140857000000 6022140857000000 6022140857000000 0 1 1 0.10000000000000001 0.14999999999999999 17 1 0.002 1.1000000000000001 0.01 0.059999999999999998 0.040000000000000001 0.050000000000000003 0.5 0.025000000000000001 0.5 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 2.2000000000000002 2 1 2 5 5 4 0.75 0.14999999999999999 0.80000000000000004 1.5 0.10000000000000001 2 0.40000000000000002 0.0050000000000000001 0.10000000000000001 0.17499999999999999 0.14999999999999999 0.050000000000000003 0.0050000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 5 1 0.20000000000000001 0.25 2 0.5 0.10000000000000001 2 0.25 0.20000000000000001 0.10000000000000001 0.10000000000000001 0.20000000000000001 0.0050000000000000001 0.0050000000000000001 0.074999999999999997 0.14999999999999999 0.10000000000000001 2 0.5 0.40000000000000002 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 3 1.1000000000000001 2 1.3999999999999999 5 0.80000000000000004 0.13 0.14999999999999999 1 1 0.20000000000000001 0.5 0.10000000000000001 2 0.10000000000000001 2 0.037499999999999999 0.10000000000000001 0.20000000000000001 0.14999999999999999 0.125 0.0050000000000000001 0.059999999999999998 0.01 0.10000000000000001 0.20000000000000001 0.074999999999999997 0.14999999999999999 1.1000000000000001 0.10000000000000001 0.10000000000000001 2 0.10000000000000001 0.10000000000000001 0.01 0.01 0.10000000000000001 0.10000000000000001 0.5 0.5 5 2.5 2 1.8500000000000001 4 1 0.11 0.105 0.80000000000000004 0.10000000000000001 1.25 8 100 0.10000000000000001 1 1 0.11 0.5 0.75 0.5 0.12 0.20000000000000001 0.10000000000000001 0.25 0.050000000000000003 0.14000000000000001 0.0050000000000000001 0.10000000000000001 0.20000000000000001 0.10000000000000001 0.20000000000000001 0.0050000000000000001 0.20000000000000001 0.10000000000000001 5 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.10000000000000001 0.050000000000000003 0.059999999999999998 3.8999999999999999 2.1000000000000001 0.10000000000000001 8 0.69999999999999996 5 1 1.2 1 0.12 0.059999999999999998 1 1 0.5 0.5 0.5 0.021999999999999999 0.14999999999999999 0.20000000000000001 0.14999999999999999 0.80000000000000004 0.050000000000000003 0.02 0.02 0.5 0.5 0.5 0.80000000000000004 0.12 4 0.10000000000000001 0.5 0.001 4 0.5 0 
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
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="2500"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="250"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="150"/>
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
  <GUI>
  </GUI>
  <SBMLReference file="Gerard2009.xml">
    <SBMLMap SBMLid="AP1" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="AP1_decay" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="AP1_simulation_by_growth_factor" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="ATR" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="ATR_activation_by_Primer" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="ATR_tot" COPASIkey="ModelValue_164"/>
    <SBMLMap SBMLid="Atr_deactivation_by_Primer" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="Ca" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Ca_cdk2_complex_dissociation" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="Ca_cdk2_complex_formation" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="Ca_decay" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="Ca_degradation" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="Ca_synthesis_through_E2F" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="Cb" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="Cb_decay" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="Cb_degradation" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="Cb_degradation_through_Cdc20" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="Cb_degradation_through_cdh1" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="Cb_synthesis" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="Cd" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Cd_cdk4_6_complex_dissociation" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Cd_cdk4_6_complex_formation" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="Cd_decay" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Cd_degradation" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Cd_synthesis" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="Cd_synthesis_through_E2F" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="Cdc20_deactivation" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="Cdc20a" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="Cdc20i" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="Cdc25_activation_through_phosphorylation" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="Cdc25_deactivation_through_dephosphorylation" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="Cdc45" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="Cdc45_decay" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="Cdc45_synthesis" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="Cdc45_tot" COPASIkey="ModelValue_166"/>
    <SBMLMap SBMLid="Cdh1a" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Cdh1i" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="Cdk1_tot" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="Cdk2_tot" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Cdk4_tot" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Ce" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="Ce_cdk2_complex_dissociation" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Ce_cdk2_complex_formation" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Ce_decay" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="Ce_degradation_through_Skp2" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="Ce_synthesis" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="Chk1" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="Chk1_decay" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="Chk1_synthesis" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="Chk1_tot" COPASIkey="ModelValue_165"/>
    <SBMLMap SBMLid="E2F" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="E2F_decay" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="E2F_phosphorylation" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="E2F_synthesis" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="E2Fp" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="E2Fp_decay" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="E2Fp_dephosphorylation" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="GF" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="K1" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="K1a" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="K1b" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="K1cdc45" COPASIkey="ModelValue_173"/>
    <SBMLMap SBMLid="K1cdh1" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="K1chk" COPASIkey="ModelValue_175"/>
    <SBMLMap SBMLid="K1d" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="K1e" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="K1e2f" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="K1p27" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="K2" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="K2a" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="K2b" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="K2cdc45" COPASIkey="ModelValue_174"/>
    <SBMLMap SBMLid="K2cdh1" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="K2chk" COPASIkey="ModelValue_176"/>
    <SBMLMap SBMLid="K2d" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="K2e" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="K2e2f" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="K2p27" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="K3" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="K3b" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="K4" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="K4b" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="K5a" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="K5b" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="K5e" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="K6a" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="K6b" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="K6e" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="K7b" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="K8b" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="Kacdc20" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="Kagf" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Kcdh1" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="Kda" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="Kdb" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="Kdbcdc20" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="Kdbcdh1" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="Kdceskp2" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="Kdd" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="Kde" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="Kdp27p" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="Kdp27skp2" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="Kdskp2" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="Kdw" COPASIkey="ModelValue_182"/>
    <SBMLMap SBMLid="Ki10" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="Ki11" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="Ki12" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="Ki13" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="Ki14" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="Ki7" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Ki8" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Ki9" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Kiw" COPASIkey="ModelValue_183"/>
    <SBMLMap SBMLid="Ma" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Ma_activation" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="Ma_inactivation" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="Ma_p27_complex_dissociation" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="Ma_p27_complex_formation" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="Mai" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Map27" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="Mb" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="Mb_inactivation" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="Mb_p26_complex_dissociation" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="Mb_p27_complex_formation" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="Mbi" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Mbi_complex_dissociation" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="Mbp27" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="Md" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Md_complex_activation" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Md_complex_inactivation" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Md_p27_complex_dissociation" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="Md_p27_complex_formation" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="Mdi" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="Mdp27" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="Me" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="Me_complex_activation" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="Me_complex_deactivation" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Me_p27_complex_dissociation" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="Me_p27_complex_formation" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Mei" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Mep27" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Mv_activation" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="Mw" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="PRBp_and_E2F_complex_dissociation" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="Pa" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="Pai" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Pb" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="Pbi" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="Pe" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Pei" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Pol" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="Pol_tot" COPASIkey="ModelValue_177"/>
    <SBMLMap SBMLid="Polymerase_activation" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="Polymerase_deactivation" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="Primer" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="RNA_Primer_degradation" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="RNA_Primer_synthesis" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="Skp2" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="Skp2_decay" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="Skp2_degradation_through_Cdh1" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="Skp2_synthesis" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="V1" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="V1cdc45" COPASIkey="ModelValue_178"/>
    <SBMLMap SBMLid="V1cdh1" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="V1chk" COPASIkey="ModelValue_180"/>
    <SBMLMap SBMLid="V1e2f" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="V1p27" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="V2" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="V2cdc45" COPASIkey="ModelValue_179"/>
    <SBMLMap SBMLid="V2cdh1" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="V2chk" COPASIkey="ModelValue_181"/>
    <SBMLMap SBMLid="V2e2f" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="V2p27" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="V3" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="V4" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="V6a" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="V6b" COPASIkey="ModelValue_157"/>
    <SBMLMap SBMLid="V6e" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="Vda" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="Vdb" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="Vdd" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Vde" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="Vdp27p" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="Vdskp2" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="Vm1a" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="Vm1b" COPASIkey="ModelValue_151"/>
    <SBMLMap SBMLid="Vm1d" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Vm1e" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="Vm2a" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="Vm2b" COPASIkey="ModelValue_152"/>
    <SBMLMap SBMLid="Vm2d" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="Vm2e" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="Vm3b" COPASIkey="ModelValue_154"/>
    <SBMLMap SBMLid="Vm4b" COPASIkey="ModelValue_155"/>
    <SBMLMap SBMLid="Vm5a" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="Vm5b" COPASIkey="ModelValue_156"/>
    <SBMLMap SBMLid="Vm5e" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="Vm7b" COPASIkey="ModelValue_158"/>
    <SBMLMap SBMLid="Vm8b" COPASIkey="ModelValue_159"/>
    <SBMLMap SBMLid="Wee1" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="Wee1_decay" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="Wee1_dephosphorylation" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="Wee1_phosphorylation" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="Wee1_synthesis" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="Wee1_translation" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="Wee1p" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="Wee1p_decay" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="aa" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="ab" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="actice_cdc20_decay" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="active_Cdc2__decay" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="active_cdc25_decay" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="active_cdc25_decay_2" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="active_cdh1_decay" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="active_cdh1_synthesis" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="ae" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="cdc20_activation" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="cdc25_activation" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="cdc25_activation_2" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="cdc25_deactivation_2" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="cdc25_inactivation" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="cdh1_activation" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="cdh1_inactivation" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="eps" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="ib" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="ib1" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="ib2" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="ib3" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="inactive_Cdc25_decay" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="inactive_cdc20_decay" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="inactive_cdc20_synthesis" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="inactive_cdc25_decay" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="inactive_cdc25_decay_2" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="inactive_cdc25_syntehsis" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="inactive_cdc25_synthesis" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="inactive_cdh1_decay" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="inactive_dephosphorylated_cdc25_synthesis" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="kaatr" COPASIkey="ModelValue_167"/>
    <SBMLMap SBMLid="kc1" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="kc2" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="kc3" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="kc4" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="kc5" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="kc6" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="kc7" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="kc8" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="kca" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="kcd1" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="kcd2" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="kce" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="kcom1" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="kcom2" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="kcom3" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="kcom4" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="kdap1" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="kdatr" COPASIkey="ModelValue_168"/>
    <SBMLMap SBMLid="kdcdc20a" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="kdcdc20i" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="kdcdh1a" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="kdcdh1i" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="kdda" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="kddb" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="kddd" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="kdde" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="kddp27" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="kddp27p" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="kddskp2" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="kde2f" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kde2fp" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="kdecom1" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="kdecom2" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="kdecom3" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="kdecom4" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="kdpa" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="kdpai" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="kdpb" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="kdpbi" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="kdpe" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="kdpei" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="kdpol" COPASIkey="ModelValue_169"/>
    <SBMLMap SBMLid="kdprb" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="kdprbp" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="kdprbpp" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="kdprim" COPASIkey="ModelValue_170"/>
    <SBMLMap SBMLid="kdwee1" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="kdwee1p" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="kpc1" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="kpc2" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="kpc3" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="kpc4" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="ksW" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="kspol" COPASIkey="ModelValue_171"/>
    <SBMLMap SBMLid="ksprim" COPASIkey="ModelValue_172"/>
    <SBMLMap SBMLid="n" COPASIkey="ModelValue_184"/>
    <SBMLMap SBMLid="p27" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="p27_decay" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="p27_degradation" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="p27_dephosphorylation" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="p27_phosphorylation" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="p27_synthesis" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="p27_synthesis_through_E2F" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="p27p" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="p27p_decay" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="pRB" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="pRB_and_E2F_complex_formation" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="pRB_and_E2f_complex_dissociation" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="pRB_decay" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="pRB_phosphorylation_through_cyclin_D" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="pRB_synthesis" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="pRBc1" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="pRBc2" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="pRBp" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="pRBp_and_E2F_complex_formation" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="pRBp_decay" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="pRBp_dephosphorylation" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="pRBp_phosphorylation" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="pRBpp" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="pRBpp_decay" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="pRBpp_dephosphorylation" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="vcb" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="vdw" COPASIkey="ModelValue_185"/>
    <SBMLMap SBMLid="vs1p27" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="vs2p27" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="vsap1" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="vscdc20i" COPASIkey="ModelValue_153"/>
    <SBMLMap SBMLid="vscdh1a" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="vse2f" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="vspai" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="vspbi" COPASIkey="ModelValue_160"/>
    <SBMLMap SBMLid="vspei" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="vsprb" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="vsskp2" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="vsw" COPASIkey="ModelValue_186"/>
    <SBMLMap SBMLid="vswee1" COPASIkey="ModelValue_161"/>
    <SBMLMap SBMLid="xa1" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="xa2" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="xb1" COPASIkey="ModelValue_162"/>
    <SBMLMap SBMLid="xb2" COPASIkey="ModelValue_163"/>
    <SBMLMap SBMLid="xe1" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="xe2" COPASIkey="ModelValue_75"/>
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
    <UnitDefinition key="Unit_33" name="hour" symbol="h">
      <Expression>
        3600*s
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
