<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.10 (Build 55) (http://www.copasi.org) at 2013-08-19 12:19:26 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="10" versionDevel="55" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for re1" type="UserDefined" reversible="false">
      <Expression>
        (-k6*(s3*c1)*(B_T-s4*c1)+k7*(s4*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="B_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_268" name="k6" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="k7" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="s3" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_271" name="s4" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for re4" type="UserDefined" reversible="unspecified">
      <Expression>
        k_CCE*(fracK*Cao/(K3+Cao)-s2*c2)*(s1*default-s2*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_280" name="Cao" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="K3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="c2" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_283" name="default" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_284" name="fracK" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="k_CCE" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="s1" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_287" name="s2" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for re6" type="UserDefined" reversible="false">
      <Expression>
        0.5*k2*(s6*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_254" name="k2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="s6" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for re7" type="UserDefined" reversible="false">
      <Expression>
        0.5*k3*(k_CICR*(s3*c1)/(K_CICR+s3*c1))*(s6*c1/(K2+s6*c1))^3*(s2*c2)-0.5*k4*(s3*c1/(K3+s3*c1))^2+0.5*k5*(s2*c2)*(s2*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_324" name="K2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="K3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="K_CICR" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_328" name="c2" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_329" name="k3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="k4" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="k5" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="k_CICR" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="s2" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_334" name="s3" order="10" role="product"/>
        <ParameterDescription key="FunctionParameter_335" name="s6" order="11" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for re8" type="UserDefined" reversible="false">
      <Expression>
        0.5*dot_Vhi*(s3*c1)^4/(K_hi^4+(s3*c1)^4)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="K_hi" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_246" name="dot_Vhi" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="s3" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for re9" type="UserDefined" reversible="false">
      <Expression>
        0.5*dot_Vex*(s3*c1)/(K5+s3*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_348" name="K5" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_350" name="dot_Vex" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="s3" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for re10" type="UserDefined" reversible="unspecified">
      <Expression>
        0.5*dot_q_inpass/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_264" name="dot_q_inpass" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for re11" type="UserDefined" reversible="unspecified">
      <Expression>
        unisec*0.5/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_359" name="unisec" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for re12" type="UserDefined" reversible="false">
      <Expression>
        0.5*dot_Vp*(s3*c1)^2/(K4^2+(s3*c1)^2)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_364" name="K4" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_366" name="dot_Vp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="s3" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for re37" type="UserDefined" reversible="false">
      <Expression>
        k15*(s47*c1)*(s51*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_372" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_373" name="k15" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="s47" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_375" name="s51" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for re38" type="UserDefined" reversible="true">
      <Expression>
        (k17*(s51*c1)*(s48*c1)-k18*(s50*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_382" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_383" name="k17" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="k18" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="s48" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_386" name="s50" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_387" name="s51" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for re41" type="UserDefined" reversible="true">
      <Expression>
        (k11*(s3*c1)*(s52*c1)-k12*(s48*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_395" name="k11" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="k12" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="s3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_398" name="s48" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_399" name="s52" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for re42" type="UserDefined" reversible="false">
      <Expression>
        (k13*(s3*c1)*(s48*c1)-k14*(s47*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_406" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_407" name="k13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="k14" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="s3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_410" name="s47" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_411" name="s48" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for re50" type="UserDefined" reversible="true">
      <Expression>
        (gam*k14*(s45*c1)-k13*(s3*c1)*(s50*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_419" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_420" name="gam" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="k13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="k14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="s3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_424" name="s45" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_425" name="s50" order="6" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for re51" type="UserDefined" reversible="false">
      <Expression>
        k90*(s45*c1)*(s57*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_380" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_363" name="k90" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="s45" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_433" name="s57" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for re52" type="UserDefined" reversible="true">
      <Expression>
        (gam*k14*(s58*c1)-k13*(s3*c1)*(s61*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_441" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_442" name="gam" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="k13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="k14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="s3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_446" name="s58" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_447" name="s61" order="6" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for re53" type="UserDefined" reversible="false">
      <Expression>
        kr90*(s61*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_438" name="kr90" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="s61" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for re54" type="UserDefined" reversible="true">
      <Expression>
        (gam*k14*(s60*c1)-k13*(s3*c1)*(s62*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_461" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_462" name="gam" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_463" name="k13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="k14" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="s3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_466" name="s60" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_467" name="s62" order="6" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for re55" type="UserDefined" reversible="true">
      <Expression>
        (kp*(s58*c1)*(s27*c1)/(s58*c1+Kmp)-Vdp*(s60*c1)/(s60*c1+Kmdp))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_476" name="Kmdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_477" name="Kmp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_478" name="Vdp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_479" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_480" name="kp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_481" name="s27" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_482" name="s58" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_483" name="s60" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for re56" type="UserDefined" reversible="true">
      <Expression>
        (kp*(s61*c1)*(s27*c1)/(s61*c1+Kmp)-Vdp*(s62*c1)/(s62*c1+Kmdp))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_492" name="Kmdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_493" name="Kmp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_494" name="Vdp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_495" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_496" name="kp" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_497" name="s27" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_498" name="s61" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_499" name="s62" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for re58" type="UserDefined" reversible="false">
      <Expression>
        k58*(s19*c1)*(s20*c1)/(Km58+s19*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_460" name="Km58" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_518" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_519" name="k58" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_520" name="s19" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_521" name="s20" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for re59" type="UserDefined" reversible="false">
      <Expression>
        k59*(s17*c1)*(s18*c1)/(Km59+s17*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_527" name="Km59" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_529" name="k59" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_530" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_531" name="s18" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for re60" type="UserDefined" reversible="true">
      <Expression>
        (k60*(s17*c1)*(s16*c1)-kr60*(s28*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_538" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_539" name="k60" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_540" name="kr60" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_541" name="s16" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_542" name="s17" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_543" name="s28" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for re61" type="UserDefined" reversible="false">
      <Expression>
        k61*(s28*c1)*(s14*c1)/(Km61+s28*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_439" name="Km61" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_551" name="k61" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_552" name="s14" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_553" name="s28" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for re62" type="UserDefined" reversible="false">
      <Expression>
        k62*(s26*c1)*(s24*c1)/(Km62+s26*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_559" name="Km62" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_560" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_561" name="k62" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_562" name="s24" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_563" name="s26" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for re63" type="UserDefined" reversible="false">
      <Expression>
        k63*(s26*c1)*(s15*c1)/(Km63+s26*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_569" name="Km63" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_570" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_571" name="k63" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_572" name="s15" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_573" name="s26" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for re64" type="UserDefined" reversible="false">
      <Expression>
        k64*(s27*c1)*(s15*c1)/(Km64+s27*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_579" name="Km64" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_580" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_581" name="k64" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_582" name="s15" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_583" name="s27" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for re65" type="UserDefined" reversible="false">
      <Expression>
        k65*(s27*c1)*(s15*c1)/(Km65+s27*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_589" name="Km65" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_590" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_591" name="k65" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_592" name="s15" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_593" name="s27" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for re66" type="UserDefined" reversible="false">
      <Expression>
        k66*(s17*c1)*(s25*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_457" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_599" name="k66" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_600" name="s17" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_601" name="s25" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for re67" type="UserDefined" reversible="false">
      <Expression>
        s14*c1*k67/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_537" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_606" name="k67" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_607" name="s14" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for re68" type="UserDefined" reversible="unspecified">
      <Expression>
        unitime/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_440" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_611" name="unitime" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for re69" type="UserDefined" reversible="unspecified">
      <Expression>
        (K_cam_no*(s45*c1+s58*c1)+K_p_no*(s62*c1+s65*c1)+K_pcam_no*(s60*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_621" name="K_cam_no" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_622" name="K_p_no" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_623" name="K_pcam_no" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_624" name="c1" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_625" name="s45" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_626" name="s58" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_627" name="s60" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_628" name="s62" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_629" name="s65" order="8" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for re70" type="UserDefined" reversible="false">
      <Expression>
        Vdp*(s65*c1)/(s65*c1+Kmdp)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_418" name="Kmdp" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_614" name="Vdp" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_619" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_616" name="s65" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for re71" type="UserDefined" reversible="false">
      <Expression>
        kr90*(s66*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_615" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_642" name="kr90" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_643" name="s66" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for re72" type="UserDefined" reversible="true">
      <Expression>
        (k18*(s62*c1)-k17*(s65*c1)*(s48*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_650" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_651" name="k17" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_652" name="k18" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_653" name="s48" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_654" name="s62" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_655" name="s65" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for re104" type="UserDefined" reversible="true">
      <Expression>
        (k105*(s91*c1)*(s93*c1)-k_105*(s110*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_688" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_689" name="k105" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_690" name="k_105" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_691" name="s110" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_692" name="s91" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_693" name="s93" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for re105" type="UserDefined" reversible="true">
      <Expression>
        (kcat_src*(s110*c1)*(s92*c1)-k_6*(s112*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_700" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_701" name="k_6" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_702" name="kcat_src" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_703" name="s110" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_704" name="s112" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_705" name="s92" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for re106" type="UserDefined" reversible="true">
      <Expression>
        (k107*(s111*c1)*(s112*c1)-k_107*(s113*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_712" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_713" name="k107" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_714" name="k_107" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_715" name="s111" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_716" name="s112" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_717" name="s113" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for re107" type="UserDefined" reversible="true">
      <Expression>
        (k108*(s113*c1)-k_108*(s93*c1)*(s114*c1))/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_724" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_725" name="k108" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_726" name="k_108" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_727" name="s113" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_728" name="s114" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_729" name="s93" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for re108" type="UserDefined" reversible="false">
      <Expression>
        V10*(s98*c1)/(K10+s98*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_618" name="K10" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_620" name="V10" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_736" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_737" name="s98" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for re109" type="UserDefined" reversible="false">
      <Expression>
        k9*(s114*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_648" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_742" name="k9" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_743" name="s114" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for re110" type="UserDefined" reversible="false">
      <Expression>
        s115*c3*kT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_747" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_748" name="kT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_749" name="s115" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for re111" type="UserDefined" reversible="unspecified">
      <Expression>
        (ktr1*(s107*c3)+ktr1k2*(s49*c1))/c3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_756" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_757" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_758" name="ktr1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_759" name="ktr1k2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_760" name="s107" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_761" name="s49" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for re112" type="UserDefined" reversible="false">
      <Expression>
        k111*(s114*c1)*(s103*c1)/(s103*c1+K111)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_755" name="K111" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_768" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_769" name="k111" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_770" name="s103" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_771" name="s114" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for re113" type="UserDefined" reversible="false">
      <Expression>
        V12*(s102*c1)/(K12+s102*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_647" name="K12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_777" name="V12" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_778" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_779" name="s102" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for re114" type="UserDefined" reversible="false">
      <Expression>
        k113*(s102*c1)*(s97*c1)/(K113+s97*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_785" name="K113" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_786" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_787" name="k113" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_788" name="s102" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_789" name="s97" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for re115" type="UserDefined" reversible="false">
      <Expression>
        V18*(s101*c1)/(K18+s101*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_784" name="K18" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_795" name="V18" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_796" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_797" name="s101" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Function for re116" type="UserDefined" reversible="false">
      <Expression>
        k19*(s101*c1)*(s96*c1)/(K19+s96*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_803" name="K19" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_804" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_805" name="k19" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_806" name="s101" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_807" name="s96" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="Function for re117" type="UserDefined" reversible="false">
      <Expression>
        V20*(s100*c1)/(s100*c1+K20)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_802" name="K20" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_813" name="V20" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_814" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_815" name="s100" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="Function for re118" type="UserDefined" reversible="false">
      <Expression>
        k21*(s99*c1)*(s43*c1)/(s99*c1+K21)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_821" name="K21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_822" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_823" name="k21" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_824" name="s43" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_825" name="s99" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="Function for re119" type="UserDefined" reversible="false">
      <Expression>
        V22*(s104*c1)/(s104*c1+K22)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_820" name="K22" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_831" name="V22" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_832" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_833" name="s104" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="Function for re120" type="UserDefined" reversible="false">
      <Expression>
        kD*(s106*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_617" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_838" name="kD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_839" name="s106" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="Function for re121" type="UserDefined" reversible="unspecified">
      <Expression>
        kP*(s106*c1)/(s106*c1+K30)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_844" name="K30" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_845" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_846" name="kP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_847" name="s106" order="3" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="Function for re122" type="UserDefined" reversible="unspecified">
      <Expression>
        unitime/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_754" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_843" name="unitime" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="Function for re123" type="UserDefined" reversible="false">
      <Expression>
        V37*(s43*c1)/(s43*c1+K37)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_856" name="K37" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_857" name="V37" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_858" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_859" name="s43" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="Function for re124" type="UserDefined" reversible="false">
      <Expression>
        k38*(s100*c1)*(s101*c1)/(K38+s100*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_865" name="K38" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_866" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_867" name="k38" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_868" name="s100" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_869" name="s101" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="Function for re125" type="UserDefined" reversible="false">
      <Expression>
        V39*(s44*c1)/(K39+s44*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_864" name="K39" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_875" name="V39" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_876" name="c1" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_877" name="s44" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="Function for re126" type="UserDefined" reversible="false">
      <Expression>
        k40*(s104*c1)*(s43*c1)/(K40+s104*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_883" name="K40" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_884" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_885" name="k40" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_886" name="s104" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_887" name="s43" order="4" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="Function for re127" type="UserDefined" reversible="false">
      <Expression>
        s44*c1*(s42*c3)*k43/(K43+s42*c3)/c3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_894" name="K43" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_895" name="c1" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_896" name="c3" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_897" name="k43" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_898" name="s42" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_899" name="s44" order="5" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="Function for re128" type="UserDefined" reversible="false">
      <Expression>
        V44*(s107*c3)/(s107*c3+K44)/c3
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_662" name="K44" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_893" name="V44" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_906" name="c3" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_907" name="s107" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="Function for re129" type="UserDefined" reversible="unspecified">
      <Expression>
        exp(tau*(delay-s39*c1/tc))/(1+2*exp(tau*(delay-s39*c1/tc))+exp(2*tau*(delay-s39*c1/tc)))/uc*29.256/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_914" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_915" name="delay" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_916" name="s39" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_917" name="tau" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_918" name="tc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_919" name="uc" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="Function for re131" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s51*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_753" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_882" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_855" name="s51" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="Function for re132" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s45*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_929" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_930" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_931" name="s45" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="Function for re133" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s50*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_935" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_936" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_937" name="s50" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="Function for re134" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s66*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_941" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_942" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_943" name="s66" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="Function for re135" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s65*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_947" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_948" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_949" name="s65" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="Function for re136" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s61*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_953" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_954" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_955" name="s61" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="Function for re137" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s62*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_959" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_960" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_961" name="s62" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="Function for re138" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s58*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_965" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_966" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_967" name="s58" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="Function for re139" type="UserDefined" reversible="false">
      <Expression>
        kDD*(s60*c1)/c1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_971" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_972" name="kDD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_973" name="s60" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Koo2013 - Integrated shear stress induced NO production model" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-08-19T13:13:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfUnsupportedAnnotations>
      <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:modelVersion>4.0</celldesigner:modelVersion>
  <celldesigner:modelDisplay sizeX="2000" sizeY="2000"/>
  <celldesigner:listOfCompartmentAliases>
    <celldesigner:compartmentAlias id="ca1" compartment="c1">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="292.0" y="216.0" w="1592.0" h="1760.0"/>
      <celldesigner:namePoint x="589.0" y="609.5"/>
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0"/>
      <celldesigner:paint color="ffcccc00" scheme="Color"/>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:compartmentAlias>
    <celldesigner:compartmentAlias id="ca2" compartment="c2">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="317.0" y="437.0" w="247.0" h="124.0"/>
      <celldesigner:namePoint x="431.5" y="524.5"/>
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0"/>
      <celldesigner:paint color="ffcccc00" scheme="Color"/>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:compartmentAlias>
    <celldesigner:compartmentAlias id="ca3" compartment="c3">
      <celldesigner:class>SQUARE</celldesigner:class>
      <celldesigner:bounds x="1288.0" y="1552.0" w="425.0" h="308.0"/>
      <celldesigner:namePoint x="1475.0" y="1823.5"/>
      <celldesigner:doubleLine thickness="12.0" outerWidth="2.0" innerWidth="1.0"/>
      <celldesigner:paint color="ffcccc00" scheme="Color"/>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:compartmentAlias>
  </celldesigner:listOfCompartmentAliases>
  <celldesigner:listOfComplexSpeciesAliases>
    <celldesigner:complexSpeciesAlias id="csa1" species="s26" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1198.375" y="171.20785932873258" w="83.0" h="69.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="906.375" y="-44.79214067126742"/>
        <celldesigner:boxSize width="83.0" height="69.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa2" species="s28" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1329.375" y="171.20785932873258" w="85.0" h="68.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1037.375" y="-44.79214067126742"/>
        <celldesigner:boxSize width="85.0" height="68.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa3" species="s27" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1085.375" y="484.20785932873264" w="95.0" h="63.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="793.375" y="268.20785932873264"/>
        <celldesigner:boxSize width="95.0" height="63.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa9" species="s110" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="553.2595969770849" y="1258.4288796346377" w="108.0" h="32.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="261.2595969770849" y="1042.4288796346377"/>
        <celldesigner:boxSize width="108.0" height="32.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa10" species="s111" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="730.2595969770849" y="1340.4288796346377" w="98.0" h="36.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="438.2595969770849" y="1124.4288796346377"/>
        <celldesigner:boxSize width="98.0" height="36.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa11" species="s112" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="552.2595969770849" y="1343.4288796346377" w="108.0" h="33.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="260.2595969770849" y="1127.4288796346377"/>
        <celldesigner:boxSize width="108.0" height="33.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa12" species="s113" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="609.2595969770849" y="1444.4288796346377" w="172.0" h="35.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="317.2595969770849" y="1228.4288796346377"/>
        <celldesigner:boxSize width="172.0" height="35.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
    <celldesigner:complexSpeciesAlias id="csa13" species="s114" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="507.2595969770849" y="1532.4288796346377" w="140.0" h="37.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:backupSize w="0.0" h="0.0"/>
      <celldesigner:backupView state="none"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="215.25959697708493" y="1316.4288796346377"/>
        <celldesigner:boxSize width="140.0" height="37.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="2.0"/>
        <celldesigner:paint color="fff7f7f7" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:complexSpeciesAlias>
  </celldesigner:listOfComplexSpeciesAliases>
  <celldesigner:listOfSpeciesAliases>
    <celldesigner:speciesAlias id="sa1" species="s1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="205.0" y="662.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa2" species="s2" compartmentAlias="ca2">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="367.0" y="477.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="50.0" y="40.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa3" species="s3" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="613.0" y="477.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="321.0" y="261.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa4" species="s4" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="748.0" y="477.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="456.0" y="261.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa5" species="s5">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="207.0" y="482.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa6" species="s6" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="749.0" y="339.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="457.0" y="123.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa7" species="s7" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="940.0" y="343.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="648.0" y="127.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa8" species="s8" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="939.0" y="270.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="647.0" y="54.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa9" species="s9" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="638.0" y="676.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="346.0" y="460.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa10" species="s10" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="689.0" y="676.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="397.0" y="460.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa11" species="s11" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="945.0" y="421.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="653.0" y="205.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa12" species="s12" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="382.5" y="337.5" w="54.0" h="43.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="90.5" y="121.5"/>
        <celldesigner:boxSize width="54.0" height="43.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff9999ff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa13" species="s13" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="308.0" y="344.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="16.0" y="128.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa43" species="s45" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1009.25" y="768.710552944251" w="107.0" h="44.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="717.25" y="552.710552944251"/>
        <celldesigner:boxSize width="107.0" height="44.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa45" species="s47" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="888.25" y="773.710552944251" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="596.25" y="557.710552944251"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa46" species="s48" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="892.25" y="681.710552944251" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="600.25" y="465.71055294425105"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa48" species="s50" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1179.25" y="589.710552944251" w="100.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="887.25" y="373.71055294425105"/>
        <celldesigner:boxSize width="100.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa49" species="s51" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1022.25" y="589.710552944251" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="730.25" y="373.71055294425105"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa50" species="s52" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="889.25" y="587.710552944251" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="597.25" y="371.71055294425105"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa53" species="s3" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="798.75" y="591.210552944251" w="37.0" h="34.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="506.75" y="375.21055294425105"/>
        <celldesigner:boxSize width="37.0" height="34.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff9999ff" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa56" species="s57" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1242.0" y="771.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="950.0" y="555.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa57" species="s58" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1258.0" y="691.0" w="155.0" h="38.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="966.0" y="475.0"/>
        <celldesigner:boxSize width="155.0" height="38.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa59" species="s60" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1496.0" y="692.0" w="170.0" h="37.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1204.0" y="476.0"/>
        <celldesigner:boxSize width="170.0" height="37.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa60" species="s61" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1325.0" y="579.0" w="153.0" h="39.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1033.0" y="363.0"/>
        <celldesigner:boxSize width="153.0" height="39.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa61" species="s62" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1534.0" y="578.0" w="168.0" h="41.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1242.0" y="362.0"/>
        <celldesigner:boxSize width="168.0" height="41.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa62" species="s16" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1431.375" y="286.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1139.375" y="70.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa63" species="s15" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1188.375" y="328.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="896.375" y="112.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa64" species="s17" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1505.375" y="194.70785932873258" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1213.375" y="-21.29214067126742"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa65" species="s14" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1322.375" y="328.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1030.375" y="112.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa66" species="s18" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1554.375" y="286.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1262.375" y="70.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa67" species="s19" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1612.375" y="194.70785932873258" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1320.375" y="-21.29214067126742"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa68" species="s20" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1699.375" y="284.70785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1407.375" y="68.70785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa69" species="s21" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1698.125" y="368.45785932873264" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1406.125" y="152.45785932873264"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa70" species="s22" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1848.375" y="284.70785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1556.375" y="68.70785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa71" species="s23" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1859.125" y="363.45785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1567.125" y="147.45785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa72" species="s24" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1189.375" y="409.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="897.375" y="193.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa73" species="s25" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1322.375" y="409.20785932873264" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1030.375" y="193.20785932873264"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa74" species="s63" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1380.0" y="839.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1088.0" y="623.5"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa75" species="s64" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1592.0" y="839.5" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1300.0" y="623.5"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa76" species="s65" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1544.0" y="481.0" w="112.0" h="44.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1252.0" y="265.0"/>
        <celldesigner:boxSize width="112.0" height="44.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa77" species="s66" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1362.0" y="480.0" w="93.0" h="45.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1070.0" y="264.0"/>
        <celldesigner:boxSize width="93.0" height="45.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa107" species="s91" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="420.2595969770849" y="1094.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="128.25959697708493" y="878.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa108" species="s38" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="661.0095969770849" y="1017.6788796346376" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="369.0095969770849" y="801.6788796346376"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa109" species="s92" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="661.2595969770849" y="1192.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="369.2595969770849" y="976.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa110" species="s93" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="659.2595969770849" y="1094.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="367.2595969770849" y="878.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa111" species="s39" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="822.0095969770849" y="1010.6788796346376" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="530.0095969770849" y="794.6788796346376"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa112" species="s94" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="813.2595969770849" y="1192.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="521.2595969770849" y="976.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa113" species="s95" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="811.2595969770849" y="1094.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="519.2595969770849" y="878.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa114" species="s96" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="979.2595969770849" y="1281.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="687.2595969770849" y="1065.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa115" species="s97" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="900.2595969770849" y="1364.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="608.2595969770849" y="1148.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa116" species="s98" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="420.2595969770849" y="1407.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="128.25959697708493" y="1191.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa117" species="s99" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1104.259596977085" y="1153.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="812.259596977085" y="937.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa118" species="s100" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1139.259596977085" y="1281.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="847.259596977085" y="1065.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa119" species="s101" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1144.259596977085" y="1364.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="852.259596977085" y="1148.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa120" species="s102" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1146.259596977085" y="1505.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="854.259596977085" y="1289.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa121" species="s103" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="904.2595969770849" y="1505.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="612.2595969770849" y="1289.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa122" species="s104" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1269.259596977085" y="1153.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="977.259596977085" y="937.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa123" species="s43" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1293.259596977085" y="1281.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1001.259596977085" y="1065.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa124" species="s105" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1335.259596977085" y="1355.9288796346377" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1043.259596977085" y="1139.9288796346377"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa125" species="s42" compartmentAlias="ca3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1323.759596977085" y="1622.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="35.75959697708504" y="70.42887963463772"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa126" species="s37" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="661.2595969770849" y="752.4288796346377" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="369.2595969770849" y="536.4288796346377"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa128" species="s106" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="949.2595969770849" y="1774.9288796346377" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="657.2595969770849" y="1558.9288796346377"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa129" species="s115" compartmentAlias="ca3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1323.259596977085" y="1772.9288796346377" w="90.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="35.25959697708504" y="220.92887963463772"/>
        <celldesigner:boxSize width="90.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ff66ff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa130" species="s44" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1434.259596977085" y="1153.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1142.259596977085" y="937.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa131" species="s107" compartmentAlias="ca3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1478.259596977085" y="1622.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="190.25959697708504" y="70.42887963463772"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa132" species="s108" compartmentAlias="ca3">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1515.259596977085" y="1772.9288796346377" w="70.0" h="25.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="227.25959697708504" y="220.92887963463772"/>
        <celldesigner:boxSize width="70.0" height="25.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffff66" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa133" species="s49" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1525.259596977085" y="1348.4288796346377" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1233.259596977085" y="1132.4288796346377"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa134" species="s35" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="966.2595969770849" y="1864.4288796346377" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="674.2595969770849" y="1648.4288796346377"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa136" species="s116" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1027.25" y="451.71055294425105" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="735.25" y="235.71055294425105"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="0.0" height="0.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa137" species="s117" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1099.0" y="679.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="807.0" y="463.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa138" species="s57" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1486.0" y="394.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1194.0" y="178.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa139" species="s118" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1601.0" y="413.0" w="30.0" h="30.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1309.0" y="197.0"/>
        <celldesigner:boxSize width="30.0" height="30.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffffcccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa140" species="s48" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1728.0" y="524.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1436.0" y="308.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa141" species="s47" compartmentAlias="ca1">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="1729.0" y="644.0" w="80.0" h="40.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="1437.0" y="428.0"/>
        <celldesigner:boxSize width="80.0" height="40.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="ffccffcc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
    <celldesigner:speciesAlias id="sa142" species="s119">
      <celldesigner:activity>inactive</celldesigner:activity>
      <celldesigner:bounds x="52.0" y="807.5" w="134.0" h="33.0"/>
      <celldesigner:font size="12"/>
      <celldesigner:view state="usual"/>
      <celldesigner:usualView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="134.0" height="33.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="7fcccccc" scheme="Color"/>
      </celldesigner:usualView>
      <celldesigner:briefView>
        <celldesigner:innerPosition x="0.0" y="0.0"/>
        <celldesigner:boxSize width="80.0" height="60.0"/>
        <celldesigner:singleLine width="1.0"/>
        <celldesigner:paint color="3fff0000" scheme="Color"/>
      </celldesigner:briefView>
      <celldesigner:info state="empty" angle="-1.5707963267948966"/>
    </celldesigner:speciesAlias>
  </celldesigner:listOfSpeciesAliases>
  <celldesigner:listOfGroups/>
  <celldesigner:listOfProteins>
    <celldesigner:protein id="pr4" name="Ca_B" type="GENERIC"/>
    <celldesigner:protein id="pr5" name="IP3" type="GENERIC"/>
    <celldesigner:protein id="pr28" name="eNOS-CaM-Ca4" type="GENERIC"/>
    <celldesigner:protein id="pr29" name="CaM-Ca4" type="GENERIC"/>
    <celldesigner:protein id="pr30" name="CaM-Ca2" type="GENERIC"/>
    <celldesigner:protein id="pr12" name="eNOS-CaM-Ca2" type="GENERIC"/>
    <celldesigner:protein id="pr31" name="eNOS-Cav-1" type="GENERIC"/>
    <celldesigner:protein id="pr1" name="Calmodulin" type="GENERIC"/>
    <celldesigner:protein id="pr36" name="Hsp90" type="GENERIC"/>
    <celldesigner:protein id="pr37" name="Hsp90-eNOS-CaM-Ca4" type="GENERIC"/>
    <celldesigner:protein id="pr39" name="Hsp90-p-eNOS-CaM-Ca4" type="GENERIC"/>
    <celldesigner:protein id="pr40" name="Hsp90-eNOS-CaM-Ca2" type="GENERIC"/>
    <celldesigner:protein id="pr41" name="Hsp90-p-eNOS-CaM-Ca2" type="GENERIC"/>
    <celldesigner:protein id="pr6" name="AKT" type="GENERIC"/>
    <celldesigner:protein id="pr9" name="PP2A" type="GENERIC"/>
    <celldesigner:protein id="pr7" name="PDK1" type="GENERIC"/>
    <celldesigner:protein id="pr8" name="PTEN" type="GENERIC"/>
    <celldesigner:protein id="pr3" name="p-PI3K" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.36" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr2" name="PI3K" type="GENERIC"/>
    <celldesigner:protein id="pr15" name="Time" type="GENERIC"/>
    <celldesigner:protein id="pr10" name="PDK2" type="GENERIC"/>
    <celldesigner:protein id="pr11" name="PDK1_cyto" type="GENERIC"/>
    <celldesigner:protein id="pr42" name="Hsp90-p-eNOS" type="GENERIC"/>
    <celldesigner:protein id="pr43" name="Hsp90-eNOS" type="GENERIC"/>
    <celldesigner:protein id="pr57" name="Shc" type="GENERIC"/>
    <celldesigner:protein id="pr58" name="p-Src" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.36" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr59" name="p-FAK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.36" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr60" name="Src" type="GENERIC"/>
    <celldesigner:protein id="pr61" name="FAK" type="GENERIC"/>
    <celldesigner:protein id="pr14" name="JNKK" type="GENERIC"/>
    <celldesigner:protein id="pr62" name="MEKK1" type="GENERIC"/>
    <celldesigner:protein id="pr63" name="p-Shc" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.44" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr16" name="JNK" type="GENERIC"/>
    <celldesigner:protein id="pr64" name="p-JNKK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.36" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr13" name="p-MEKK1" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.44" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr65" name="Ras:GTP" type="GENERIC"/>
    <celldesigner:protein id="pr66" name="Ras:GDP" type="GENERIC"/>
    <celldesigner:protein id="pr17" name="p-JNK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.4" id="rs1" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr67" name="pp-JNKK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.29" id="rs1" name="p" side="none"/>
        <celldesigner:modificationResidue angle="2.52" id="rs2" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr18" name="AP-1" type="GENERIC"/>
    <celldesigner:protein id="pr68" name="pp-JNK" type="GENERIC">
      <celldesigner:listOfModificationResidues>
        <celldesigner:modificationResidue angle="2.29" id="rs1" name="p" side="none"/>
        <celldesigner:modificationResidue angle="2.52" id="rs2" name="p" side="none"/>
      </celldesigner:listOfModificationResidues>
    </celldesigner:protein>
    <celldesigner:protein id="pr69" name="aAP-1" type="GENERIC"/>
    <celldesigner:protein id="pr32" name="KLF2" type="GENERIC"/>
  </celldesigner:listOfProteins>
  <celldesigner:listOfGenes>
    <celldesigner:gene id="gn1" name="eNOS" type="GENE"/>
  </celldesigner:listOfGenes>
  <celldesigner:listOfRNAs>
    <celldesigner:RNA id="rn2" name="KLF2" type="RNA"/>
    <celldesigner:RNA id="rn1" name="eNOS" type="RNA"/>
  </celldesigner:listOfRNAs>
  <celldesigner:listOfAntisenseRNAs/>
  <celldesigner:listOfLayers/>
  <celldesigner:listOfBlockDiagrams/>
</celldesigner:extension>
      </UnsupportedAnnotation>
    </ListOfUnsupportedAnnotations>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="default" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_1" name="Cell" simulationType="fixed" dimensionality="3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>Cell</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_2" name="ER" simulationType="fixed" dimensionality="3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>ER</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
      <Compartment key="Compartment_3" name="nucleus" simulationType="fixed" dimensionality="3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>nucleus</celldesigner:name>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="Ca_ex" simulationType="reactions" compartment="Compartment_0">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Ca_ex</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re4"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="s5" simulationType="reactions" compartment="Compartment_0">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s5</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Ca_c" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Ca_c</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re5"/>
    <celldesigner:catalyzed reaction="re41"/>
    <celldesigner:catalyzed reaction="re42"/>
    <celldesigner:catalyzed reaction="re50"/>
    <celldesigner:catalyzed reaction="re52"/>
    <celldesigner:catalyzed reaction="re54"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Ca_B" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr4</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="IP3" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr5</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re7"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="s7" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s7</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="s8" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s8</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="s9" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s9</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="s10" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s10</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="s11" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s11</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="TimeT" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>TimeT</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re5"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="s13" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s13</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="PDK1" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr7</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re61"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="PP2A" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr9</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re63"/>
    <celldesigner:catalyzed reaction="re64"/>
    <celldesigner:catalyzed reaction="re65"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="AKT" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr6</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="PI3P" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>outerSurface</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>PI3P</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re66"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PTEN" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr8</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re59"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="PIP2" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>outerSurface</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>PIP2</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="p-PI3K" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr3</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re58"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="s3" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s3</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="PI3K" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>transmembrane</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr2</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Time" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>transmembrane</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re57"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="PDK2" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr10</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re62"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="PDK1_cyto" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr11</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="p-AKT:PI3P" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>transmembrane</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-AKT:PI3P</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="pp-AKT:PI3P" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>pp-AKT:PI3P</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re55"/>
    <celldesigner:catalyzed reaction="re56"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="AKT:PI3P" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>transmembrane</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>AKT:PI3P</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="s35" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s35</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="s37" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s37</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="pre_time" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>pre_time</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Time_2" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr15</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re102"/>
    <celldesigner:catalyzed reaction="re103"/>
    <celldesigner:catalyzed reaction="re129"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="pp-JNKK" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr67</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re118"/>
    <celldesigner:catalyzed reaction="re126"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="pp-JNK" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr68</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re127"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="eNOS-CaM-Ca4" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr28</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="CaM-Ca4" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr29</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="CaM-Ca2" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr30</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="KLF2" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr32</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re111"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="eNOS-CaM-Ca2" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr12</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="eNOS-Cav-1" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr31</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Calmodulin" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr1</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="Hsp90" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr36</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Hsp90-eNOS-CaM-Ca4" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr37</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="Hsp90-p-eNOS-CaM-Ca4" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr39</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="Hsp90-eNOS-CaM-Ca2" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr40</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="Hsp90-p-eNOS-CaM-Ca2" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr41</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="L-Arg" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>L-Arg</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="NO" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>SIMPLE_MOLECULE</celldesigner:class>
    <celldesigner:name>NO</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="Hsp90-p-eNOS" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr42</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re69"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="Hsp90-eNOS" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr43</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="Shc" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr57</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="p-Src" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr58</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re105"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="p-FAK" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr59</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="Src" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-08-19T13:15:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr60</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="FAK" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr61</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="JNKK" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr14</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="MEKK1" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr62</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="p-Shc" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr63</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="JNK" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr16</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="p-JNKK" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr64</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="p-MEKK1" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr13</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re116"/>
    <celldesigner:catalyzed reaction="re124"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="Ras:GTP" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr65</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re114"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="Ras:GDP" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr66</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="p-JNK" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr17</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="KLF2_2" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>RNA</celldesigner:class>
    <celldesigner:rnaReference>rn2</celldesigner:rnaReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="eNOS" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>RNA</celldesigner:class>
    <celldesigner:rnaReference>rn1</celldesigner:rnaReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re121"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="p-FAK:Shc" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-FAK:Shc</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="Grb2:Sos" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>Grb2:Sos</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="p-FAK:p-Shc" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-FAK:p-Shc</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="p-FAK:p-Shc:Grb2:Sos" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-FAK:p-Shc:Grb2:Sos</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="p-Shc:Grb2:Sos" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>COMPLEX</celldesigner:class>
    <celldesigner:name>p-Shc:Grb2:Sos</celldesigner:name>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re112"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="sa49_degraded" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>sa49_degraded</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="s117" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s117</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="s118" simulationType="reactions" compartment="Compartment_1">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>DEGRADED</celldesigner:class>
    <celldesigner:name>s118</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Ca_s" simulationType="reactions" compartment="Compartment_2">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>ION</celldesigner:class>
    <celldesigner:name>Ca_s</celldesigner:name>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="AP-1" simulationType="reactions" compartment="Compartment_3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr18</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="aAP-1" simulationType="reactions" compartment="Compartment_3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>PROTEIN</celldesigner:class>
    <celldesigner:proteinReference>pr69</celldesigner:proteinReference>
  </celldesigner:speciesIdentity>
  <celldesigner:listOfCatalyzedReactions>
    <celldesigner:catalyzed reaction="re111"/>
  </celldesigner:listOfCatalyzedReactions>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="eNOS" simulationType="reactions" compartment="Compartment_3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>GENE</celldesigner:class>
    <celldesigner:geneReference>gn1</celldesigner:geneReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="eNOS_2" simulationType="reactions" compartment="Compartment_3">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:positionToCompartment>inside</celldesigner:positionToCompartment>
  <celldesigner:speciesIdentity>
    <celldesigner:class>RNA</celldesigner:class>
    <celldesigner:rnaReference>rn1</celldesigner:rnaReference>
  </celldesigner:speciesIdentity>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="R_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k6" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k7" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="K1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="K2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="K3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="K4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="K5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="K_hi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="k_CICR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="K_CICR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="k_CCE" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="B_T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Vc_Vs" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="dot_Vp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="dot_Vex" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="dot_Vhi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="dot_q_inpass" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="dot_q_instim" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Cao" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="tau_I" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="tau_II" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="half" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="fracK" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="alp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="gam" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="k8" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="k11" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="k12" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="k13" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="k14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="k15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="k16" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="k17" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="k18" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="kp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Kmp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Kmdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Vdp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="k90" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="kr90" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kDD" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="re1" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:name>re1</celldesigner:name>
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s4" alias="sa4">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s3" alias="sa3">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_753" name="B_T" value="1"/>
          <Constant key="Parameter_752" name="k6" value="1"/>
          <Constant key="Parameter_751" name="k7" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="re4" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s5" alias="sa5">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s2" alias="sa2">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s1" aliases="sa1" targetLineIndex="-1,3" editPoints="0.5870844032352514,-0.24174976941010584 0.7301324392157968,0.10571653442838036">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
          <celldesigner:lineDirection index="1" value="unknown"/>
          <celldesigner:lineDirection index="2" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s1" alias="sa1">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_750" name="Cao" value="1"/>
          <Constant key="Parameter_749" name="K3" value="1"/>
          <Constant key="Parameter_748" name="fracK" value="1"/>
          <Constant key="Parameter_747" name="k_CCE" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="re6" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s6" alias="sa6">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s8" alias="sa8">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.108236516833081,-0.30314390705616034</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_740" name="k2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="re7" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s2" alias="sa2">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s3" alias="sa3">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s6" aliases="sa6" targetLineIndex="-1,2" editPoints="0.7313012214488868,0.44565948834230174">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
          <celldesigner:lineDirection index="1" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s6" alias="sa6">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_739" name="K2" value="1"/>
          <Constant key="Parameter_738" name="K3" value="1"/>
          <Constant key="Parameter_737" name="K_CICR" value="1"/>
          <Constant key="Parameter_736" name="k3" value="1"/>
          <Constant key="Parameter_735" name="k4" value="1"/>
          <Constant key="Parameter_734" name="k5" value="1"/>
          <Constant key="Parameter_733" name="k_CICR" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="re8" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s3" alias="sa3">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s9" alias="sa9">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_732" name="K_hi" value="1"/>
          <Constant key="Parameter_731" name="dot_Vhi" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="re9" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s3" alias="sa3">
      <celldesigner:linkAnchor position="SE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s10" alias="sa10">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.22165017357843997,-0.16496430061432266</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_730" name="K5" value="1"/>
          <Constant key="Parameter_729" name="dot_Vex" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="re10" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s11" alias="sa11">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s3" alias="sa3">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.7667134752900213,0.1295424925726123</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_728" name="dot_q_inpass" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="re11" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s13" alias="sa13">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s12" alias="sa12">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_727" name="unisec" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Parameter_727"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="re12" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s3" alias="sa3">
      <celldesigner:linkAnchor position="SSE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s9" alias="sa9">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_726" name="K4" value="1"/>
          <Constant key="Parameter_725" name="dot_Vp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="re37" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s51" alias="sa49">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s47" alias="sa45">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s45" alias="sa43">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
      <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
      <celldesigner:lineDirection arm="1" index="1" value="unknown"/>
      <celldesigner:lineDirection arm="1" index="2" value="unknown"/>
      <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="0" num1="2" num2="0" tShapeIndex="0">0.5453666187072295,0.3578155033912864 0.8484633221065794,-0.09642323355609506 -0.001232235274787108,0.6697609463567016</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_724" name="k15" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="re38" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s48" alias="sa46">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s51" alias="sa49">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s50" alias="sa48">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="unknown"/>
      <celldesigner:lineDirection arm="0" index="1" value="unknown"/>
      <celldesigner:lineDirection arm="0" index="2" value="unknown"/>
      <celldesigner:lineDirection arm="0" index="3" value="unknown"/>
      <celldesigner:lineDirection arm="1" index="0" value="unknown"/>
      <celldesigner:lineDirection arm="2" index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="3" num1="0" num2="0" tShapeIndex="0">-0.12441832828528421,0.19344291051328533 0.46852029703696196,0.5656478145251889 0.8768987676458146,-0.07007199661977648 0.6840015620932078,0.3268680031241864</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_723" name="k17" value="1"/>
          <Constant key="Parameter_722" name="k18" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="re41" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s52" alias="sa50">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s48" alias="sa46">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.31731374606505547,0.2526757607555048 0.7053515215110178,-0.2346274921301177</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,3" editPoints="0.10070703764728339,0.30094040974185043">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_721" name="k11" value="1"/>
          <Constant key="Parameter_720" name="k12" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="re42" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s48" alias="sa46">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s47" alias="sa45">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.3249999999999922,0.2249999999999952 0.6489999999999903,-0.24300000000000566</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,3" editPoints="0.5141287842118762,0.4998003375916171">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="SSW"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_719" name="k13" value="1"/>
          <Constant key="Parameter_718" name="k14" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="re50" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s45" alias="sa43">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s50" alias="sa48">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>-0.05082399068798449,0.04624149972431457 0.4020706977883969,0.5440176438154749</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,2" editPoints="0.061849690420585635,0.24088234932319885">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_717" name="gam" value="1"/>
          <Constant key="Parameter_716" name="k13" value="1"/>
          <Constant key="Parameter_715" name="k14" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="re51" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s45" alias="sa43">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s57" alias="sa56">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s58" alias="sa57">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="1" tShapeIndex="0">0.4868511066528125,0.0033024676586554946 0.48689711798846247,-0.003480541895148903 0.4038461538461533,-0.019230769230766498 0.4061085972850691,0.02828054298642968 0.8237868451538124,-0.38100141588364167 0.7076697004171066,0.011341588207329778</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_714" name="k90" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="re52" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s58" alias="sa57">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s61" alias="sa60">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.2751161590087756,-0.2487351574599881 0.7248838409912217,0.24873515745999164</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,2" editPoints="0.0334789140302616,-0.0016696254934467358 0.035959856034841975,0.04807760489528978">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
          <celldesigner:lineDirection index="2" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_713" name="gam" value="1"/>
          <Constant key="Parameter_712" name="k13" value="1"/>
          <Constant key="Parameter_711" name="k14" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="re53" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s61" alias="sa60">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s50" alias="sa48">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s57" alias="sa56">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.8807959958372176,-0.32402840856063975 -0.0017517136329097127,0.002132520944405414 0.5953541507997144,0.4926123381568708 0.15480991455010873,-0.05638837001290753 0.2719423329037931,0.2651896375129539 0.39211788957793736,0.2172191926376601</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_710" name="kr90" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="re54" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s60" alias="sa59">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s62" alias="sa61">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="2">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
      <celldesigner:lineDirection index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.4250522544042332,-0.21543744401310505 0.6294416243654211,0.18781725888327827</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s3" aliases="sa53" targetLineIndex="-1,2" editPoints="-0.0011986944586066528,-0.021296291675683254 0.5050642675940327,-0.04979207941432351 0.5094211304049809,0.027612984525593354">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
          <celldesigner:lineDirection index="3" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s3" alias="sa53">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_709" name="gam" value="1"/>
          <Constant key="Parameter_708" name="k13" value="1"/>
          <Constant key="Parameter_707" name="k14" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="re55" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s58" alias="sa57">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s60" alias="sa59">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s27" aliases="csa3" targetLineIndex="-1,2" editPoints="0.20435999115897863,0.38521549523605036 0.984732691422848,-0.028778645962525773">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s27" alias="csa3">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_706" name="Kmdp" value="1"/>
          <Constant key="Parameter_705" name="Kmp" value="1"/>
          <Constant key="Parameter_704" name="Vdp" value="1"/>
          <Constant key="Parameter_703" name="kp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="re56" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s61" alias="sa60">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s62" alias="sa61">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s27" aliases="csa3" targetLineIndex="-1,3" editPoints="0.07969945861237404,0.2952167197776825 1.0117671613630876,0.043587031068816784">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s27" alias="csa3">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_702" name="Kmdp" value="1"/>
          <Constant key="Parameter_701" name="Kmp" value="1"/>
          <Constant key="Parameter_700" name="Vdp" value="1"/>
          <Constant key="Parameter_699" name="kp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="re58" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s19" alias="sa67">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s17" alias="sa64">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s20" aliases="sa68" targetLineIndex="-1,3" editPoints="0.3254875461890627,0.542519370788793 1.0608104562837468,0.1013582573794527">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s20" alias="sa68">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_694" name="k58" value="0.2"/>
          <Constant key="Parameter_693" name="Km58" value="6170"/>
        </ListOfConstants>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Parameter_693"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Parameter_694"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="re59" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s17" alias="sa64">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s19" alias="sa67">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s18" aliases="sa66" targetLineIndex="-1,3">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s18" alias="sa66">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_692" name="k59" value="7.5"/>
          <Constant key="Parameter_691" name="Km59" value="80.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Parameter_691"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Parameter_692"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="re60" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s17" alias="sa64">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s16" alias="sa62">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s28" alias="csa2">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.16292541636495628,-0.36929761042723186 0.5,0.0 0.5,3.552713678800501E-15 0.35082934358552365,-0.001270991753500983 0.3509657143667759,0.002351334743991629 0.15847676803710042,0.3446000178364379</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_690" name="k60" value="0.045"/>
          <Constant key="Parameter_689" name="kr60" value="0.089"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Parameter_690"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Parameter_689"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="re61" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s28" alias="csa2">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s26" alias="csa1">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s14" aliases="sa65" targetLineIndex="-1,3" editPoints="1.1701225395112274,0.4629197118451893 1.3054538779800096,0.12084257537297383">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s14" alias="sa65">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_688" name="k61" value="20"/>
          <Constant key="Parameter_687" name="Km61" value="80000"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Parameter_687"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Parameter_688"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="re62" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s26" alias="csa1">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s27" alias="csa3">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="horizontal"/>
      <celldesigner:lineDirection index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.0834670431936333,0.2765868686220396</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s24" aliases="sa72" targetLineIndex="-1,2" editPoints="0.022749856491216303,-0.14910499830939639">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s24" alias="sa72">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_686" name="k62" value="20"/>
          <Constant key="Parameter_685" name="Km62" value="80000"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Parameter_685"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Parameter_686"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="re63" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s26" alias="csa1">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s28" alias="csa2">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s15" aliases="sa63" targetLineIndex="-1,3" editPoints="0.32380017932634253,-0.24633681954897035 0.6903948799260009,0.23553767250462165">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s15" alias="sa63">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_684" name="k63" value="0.037"/>
          <Constant key="Parameter_683" name="Km63" value="8800"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Parameter_683"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Parameter_684"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="re64" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s27" alias="csa3">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s26" alias="csa1">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="1">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="vertical"/>
      <celldesigner:lineDirection index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.9750971949631848,-0.1558289297213893</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s15" aliases="sa63" targetLineIndex="-1,3" editPoints="0.46451894165016494,0.14451494560039535 0.5527651862258152,-0.13913773796516615">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s15" alias="sa63">
        <celldesigner:linkAnchor position="NNW"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_682" name="k64" value="0.04"/>
          <Constant key="Parameter_681" name="Km64" value="48000"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Parameter_681"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Parameter_682"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="re65" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s27" alias="csa3">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s17" alias="sa64">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s16" alias="sa62">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="1" tShapeIndex="0">0.31134239628529414,0.27204469681914434 0.744284068716333,-0.22343941534433354 0.127957993946902,-0.21425524567853937 0.8650545388068505,0.22595519083504456 0.30455707625274897,0.4602195818923036 0.82649165617131,-0.1633540617128304</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s15" aliases="sa63" targetLineIndex="0,3" editPoints="0.03851070414214952,-0.13863070052721405 0.966869949772736,0.11926144104129754">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s15" alias="sa63">
        <celldesigner:linkAnchor position="NNE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_680" name="k65" value="0.163"/>
          <Constant key="Parameter_679" name="Km65" value="48000"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Parameter_679"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Parameter_680"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="re66" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s25" alias="sa73">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s14" alias="sa65">
      <celldesigner:linkAnchor position="SSE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s17" aliases="sa64" targetLineIndex="-1,3" editPoints="0.5106060321925066,-0.4998874994247524">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s17" alias="sa64">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_678" name="k66" value="0.0007"/>
        </ListOfConstants>
        <KineticLaw function="Function_70">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="Parameter_678"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="re67" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s14" alias="sa65">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s25" alias="sa73">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_677" name="k67" value="0.98"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Parameter_677"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="re68" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s21" alias="sa69">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s23" alias="sa71">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_676" name="unitime" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Parameter_676"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="re69" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s63" alias="sa74">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s64" alias="sa75">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="BOOLEAN_LOGIC_GATE_AND" modifiers="s45,s65" aliases="sa43,sa76" modificationType="CATALYSIS" targetLineIndex="-1,3" editPoints="1521.0,849.4351382360627">
      <celldesigner:connectScheme connectPolicy="direct">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="unknown"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s50" aliases="sa48" targetLineIndex="-1,2" editPoints="0.23246732641423629,0.2853958814847629 0.8336163913780754,-0.20426611076799606">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s50" alias="sa48">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s61" aliases="sa60" targetLineIndex="-1,2" editPoints="0.0314211105911002,-0.17445292889579722">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s61" alias="sa60">
        <celldesigner:linkAnchor position="ESE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s62" aliases="sa61" targetLineIndex="-1,2" editPoints="0.6880390016005284,-0.16598160045628862 0.7430345618589447,0.06198999560400864">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s62" alias="sa61">
        <celldesigner:linkAnchor position="SSW"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s58" aliases="sa57" targetLineIndex="-1,2" editPoints="0.06834266243603881,0.10744608765052227 0.7803001283825237,-0.34540491723910455">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s58" alias="sa57">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s60" aliases="sa59" targetLineIndex="-1,2" editPoints="0.3770680148828701,-0.19174574873270522 0.5825282331874334,0.2122917705632208">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s60" alias="sa59">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s45" aliases="sa43" targetLineIndex="-1,0" editPoints="0.004135501478698345,0.04859057968604108 0.9954711322264256,-0.05321248500886577">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s45" alias="sa43">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s65" aliases="sa76" targetLineIndex="-1,0" editPoints="-0.021484016776921633,-0.05513198757021254 0.7458970384229011,-0.35416759631202854 0.8992147945127511,0.039274314984490744">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
          <celldesigner:lineDirection index="2" value="horizontal"/>
          <celldesigner:lineDirection index="3" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s65" alias="sa76">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_675" name="K_cam_no" value="17"/>
          <Constant key="Parameter_674" name="K_p_no" value="5"/>
          <Constant key="Parameter_673" name="K_pcam_no" value="17"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Parameter_675"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="Parameter_674"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="Parameter_673"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="re70" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s65" alias="sa76">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s66" alias="sa77">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_672" name="Kmdp" value="1"/>
          <Constant key="Parameter_671" name="Vdp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="re71" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s66" alias="sa77">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s51" alias="sa49">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s57" alias="sa56">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="1" num2="2" tShapeIndex="0">0.3244270862118137,-0.4681603912591541 0.9822532889313855,0.1320294107949498 0.5259641260045163,0.010004574806173672 0.5263258088570621,-0.009009946961673343 0.35080815167434665,0.07140456508108617</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_670" name="kr90" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_642">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_643">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="re72" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s62" alias="sa61">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s65" alias="sa76">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s48" alias="sa46">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.9978295033580737,-0.04653800152835985 0.005042920444222165,-0.0485381092756354 0.9943637947976351,0.05424847507276964 0.2213445262553897,-0.44245339062588007 1.021174077082086,-0.04232561047176242 0.9404420617096321,0.5068494974687949</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_669" name="k17" value="1"/>
          <Constant key="Parameter_668" name="k18" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_654">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="re104" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s91" alias="sa107">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s93" alias="sa110">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s110" alias="csa9">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="2" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="2" tShapeIndex="0">0.3888888888888897,4.440892098500626E-16 0.3888888888888893,4.440892098500626E-16 0.470588235294116,8.881784197001252E-16 0.47058823529411953,8.881784197001252E-16 0.51039205285239,-0.003544389255920599 0.5104402758354638,0.0033997203066991055 0.6192468619246871,0.0</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_658" name="k105" value="0.1"/>
          <Constant key="Parameter_657" name="k_105" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Parameter_658"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_690">
              <SourceParameter reference="Parameter_657"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_691">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_692">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="re105" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s110" alias="csa9">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s112" alias="csa11">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s92" aliases="sa109" targetLineIndex="-1,2" editPoints="0.46792072254721795,-0.4989698587671487">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s92" alias="sa109">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_656" name="kcat_src" value="8.33"/>
          <Constant key="Parameter_655" name="k_6" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_700">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_701">
              <SourceParameter reference="Parameter_655"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="Parameter_656"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="Metabolite_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="re106" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>HETERODIMER_ASSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s112" alias="csa11">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
    <celldesigner:baseReactant species="s111" alias="csa10">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s113" alias="csa12">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="1" num2="2" tShapeIndex="0">0.9564114948080178,-0.20417773484665513 0.9513280302008891,0.2151813401644862 0.49999999999999467,0.0 0.49999999999999467,1.7763568394002505E-15 0.33288337692286174,0.35293455946455143</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_654" name="k107" value="60"/>
          <Constant key="Parameter_653" name="k_107" value="546"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_712">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="Parameter_654"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Parameter_653"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="re107" reversible="true">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s113" alias="csa12">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s114" alias="csa13">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s93" alias="sa110">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="1" tShapeIndex="0">0.9880818752063387,0.10851766259491624 0.12198038746711326,0.19732121502033007 0.8454915092083244,-0.24994020569241737 0.8816918276655428,-0.32297267484005165 1.4753499471081701,0.2728234396910132</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_652" name="k108" value="2040"/>
          <Constant key="Parameter_651" name="k_108" value="15700"/>
        </ListOfConstants>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="Parameter_652"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Parameter_651"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_728">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_729">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="re108" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s98" alias="sa116">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s91" alias="sa107">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_650" name="V10" value="154"/>
          <Constant key="Parameter_649" name="K10" value="340"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="Parameter_649"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="Parameter_650"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_736">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_737">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="re109" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s114" alias="csa13">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s98" alias="sa116">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s111" alias="csa10">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="3" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="3" tShapeIndex="0">0.22218312552589392,0.5047655473112513 1.0598791402126517,0.13603610494913054 0.4999999999999982,0.0 0.4999999999999982,8.881784197001252E-16 -0.09741676599990393,0.2247609397364556 0.8359416402339238,0.6293007924383449 1.0915057261013559,0.03966076987273448 0.6148895606652705,-0.22305901684239304</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_648" name="k9" value="40.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_742">
              <SourceParameter reference="Parameter_648"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_743">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="re110" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>TRANSPORT</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s115" alias="sa129">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s106" alias="sa128">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_647" name="kT" value="0.001"/>
        </ListOfConstants>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="Parameter_647"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="Metabolite_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="re111" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>TRANSCRIPTION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s108" alias="sa132">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s115" alias="sa129">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s107" aliases="sa131" targetLineIndex="-1,3" editPoints="0.40212232367541834,-0.2064548748155275 0.6107282759927637,0.19985720841006227">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s107" alias="sa131">
        <celldesigner:linkAnchor position="S"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
    <celldesigner:modification type="CATALYSIS" modifiers="s49" aliases="sa133" targetLineIndex="-1,3" editPoints="0.8215211149178097,-0.26719031385620884 0.9171821753956975,0.026935546934939048">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s49" alias="sa133">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_74" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_67" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_646" name="ktr1" value="0.00012"/>
          <Constant key="Parameter_645" name="ktr1k2" value="9e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_756">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_757">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_758">
              <SourceParameter reference="Parameter_646"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_759">
              <SourceParameter reference="Parameter_645"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_760">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_761">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="re112" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s103" alias="sa121">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s102" alias="sa120">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s114" aliases="csa13" targetLineIndex="-1,3" editPoints="-0.0026937366737682655,0.04274909329521348 0.9933513636989437,0.10551260495785231">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s114" alias="csa13">
        <celldesigner:linkAnchor position="SSE"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_644" name="k111" value="0.222"/>
          <Constant key="Parameter_643" name="K111" value="0.181"/>
        </ListOfConstants>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_755">
              <SourceParameter reference="Parameter_643"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_769">
              <SourceParameter reference="Parameter_644"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_770">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_771">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="re113" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s102" alias="sa120">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s103" alias="sa121">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_642" name="V12" value="0.289"/>
          <Constant key="Parameter_641" name="K12" value="0.0571"/>
        </ListOfConstants>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="Parameter_641"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_777">
              <SourceParameter reference="Parameter_642"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_778">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_779">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="re114" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s97" alias="sa115">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s101" alias="sa119">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s102" aliases="sa120" targetLineIndex="-1,3" editPoints="0.21506786308292902,0.2516125579987105 0.7928983509399572,-0.24229271142037279">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s102" alias="sa120">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_640" name="k113" value="0.035"/>
          <Constant key="Parameter_639" name="K113" value="10"/>
        </ListOfConstants>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_785">
              <SourceParameter reference="Parameter_639"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_786">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_787">
              <SourceParameter reference="Parameter_640"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_788">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_789">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="re115" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s101" alias="sa119">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s97" alias="sa115">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_638" name="K18" value="8"/>
          <Constant key="Parameter_637" name="V18" value="0.125"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_784">
              <SourceParameter reference="Parameter_638"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_795">
              <SourceParameter reference="Parameter_637"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_796">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_797">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="re116" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s96" alias="sa114">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s100" alias="sa118">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s101" aliases="sa119" targetLineIndex="-1,3" editPoints="0.14192464766772517,0.2513772671755907 0.9002128081048326,-0.1767433071700193">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s101" alias="sa119">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_636" name="k19" value="0.005"/>
          <Constant key="Parameter_635" name="K19" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_91">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_803">
              <SourceParameter reference="Parameter_635"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_804">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_805">
              <SourceParameter reference="Parameter_636"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_806">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_807">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="re117" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s100" alias="sa118">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s96" alias="sa114">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_634" name="K20" value="15"/>
          <Constant key="Parameter_633" name="V20" value="0.375"/>
        </ListOfConstants>
        <KineticLaw function="Function_92">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_802">
              <SourceParameter reference="Parameter_634"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_813">
              <SourceParameter reference="Parameter_633"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_814">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_815">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="re118" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s99" alias="sa117">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s104" alias="sa122">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s43" aliases="sa123" targetLineIndex="-1,3" editPoints="0.22094521283066726,0.25304511416782294 0.7883587228606697,-0.24238946139734097">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s43" alias="sa123">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_632" name="k21" value="0.002"/>
          <Constant key="Parameter_631" name="K21" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_93">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_821">
              <SourceParameter reference="Parameter_631"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_822">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_823">
              <SourceParameter reference="Parameter_632"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_824">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_825">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="re119" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s104" alias="sa122">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s99" alias="sa117">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_630" name="K22" value="15"/>
          <Constant key="Parameter_629" name="V22" value="0.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_94">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_820">
              <SourceParameter reference="Parameter_630"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_831">
              <SourceParameter reference="Parameter_629"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_832">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_833">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="re120" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s106" alias="sa128">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s35" alias="sa134">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_628" name="kD" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_95">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_838">
              <SourceParameter reference="Parameter_628"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_839">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="re121" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>TRANSLATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s37" alias="sa126">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s51" alias="sa49">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="horizontal"/>
      <celldesigner:lineDirection index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.8698220815743513,0.3364990757491224</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s106" aliases="sa128" targetLineIndex="-1,2" editPoints="0.008936533931400703,-0.09410989476507514">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s106" alias="sa128">
        <celldesigner:linkAnchor position="W"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_627" name="kP" value="0.02824"/>
          <Constant key="Parameter_626" name="K30" value="16"/>
        </ListOfConstants>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_844">
              <SourceParameter reference="Parameter_626"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_845">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_846">
              <SourceParameter reference="Parameter_627"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_847">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="re122" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s38" alias="sa108">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s39" alias="sa111">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_625" name="unitime" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_97">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_754">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_843">
              <SourceParameter reference="Parameter_625"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="re123" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s43" alias="sa123">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s100" alias="sa118">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_624" name="V37" value="0.375"/>
          <Constant key="Parameter_623" name="K37" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_98">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_856">
              <SourceParameter reference="Parameter_623"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_857">
              <SourceParameter reference="Parameter_624"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_858">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_859">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="re124" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s100" alias="sa118">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s43" alias="sa123">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s101" aliases="sa119" targetLineIndex="-1,3" editPoints="0.1790110040488626,-0.2685724586688494 0.8714074558856835,0.19292900971516502">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s101" alias="sa119">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_622" name="k38" value="0.005"/>
          <Constant key="Parameter_621" name="K38" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_99">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_865">
              <SourceParameter reference="Parameter_621"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_866">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_867">
              <SourceParameter reference="Parameter_622"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_868">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_869">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="re125" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s44" alias="sa130">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s104" alias="sa122">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_620" name="V39" value="0.05"/>
          <Constant key="Parameter_619" name="K39" value="15"/>
        </ListOfConstants>
        <KineticLaw function="Function_100">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_864">
              <SourceParameter reference="Parameter_619"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_875">
              <SourceParameter reference="Parameter_620"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_876">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_877">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="re126" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s104" alias="sa122">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s44" alias="sa130">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s43" aliases="sa123" targetLineIndex="-1,3" editPoints="0.365930673663454,-0.23020695138522385 0.6494785556728364,0.2205130067011396">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s43" alias="sa123">
        <celldesigner:linkAnchor position="N"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_618" name="k40" value="0.002"/>
          <Constant key="Parameter_617" name="K40" value="30"/>
        </ListOfConstants>
        <KineticLaw function="Function_101">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_883">
              <SourceParameter reference="Parameter_617"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_884">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_885">
              <SourceParameter reference="Parameter_618"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_886">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_887">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="re127" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s42" alias="sa125">
      <celldesigner:linkAnchor position="ENE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s107" alias="sa131">
      <celldesigner:linkAnchor position="WNW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
      <celldesigner:lineDirection index="1" value="unknown"/>
      <celldesigner:lineDirection index="2" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.5,0.0 0.5,0.0</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s44" aliases="sa130" targetLineIndex="-1,2" editPoints="0.49960912278917746,-0.036694487865860825 0.5049745522748275,0.03635783346676158">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="vertical"/>
          <celldesigner:lineDirection index="1" value="horizontal"/>
          <celldesigner:lineDirection index="2" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s44" alias="sa130">
        <celldesigner:linkAnchor position="SSW"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_616" name="K43" value="25"/>
          <Constant key="Parameter_615" name="k43" value="4e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_102">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_894">
              <SourceParameter reference="Parameter_616"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_895">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_896">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_897">
              <SourceParameter reference="Parameter_615"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_898">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_899">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="re128" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s107" alias="sa131">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s42" alias="sa125">
      <celldesigner:linkAnchor position="ESE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_614" name="K44" value="5"/>
          <Constant key="Parameter_613" name="V44" value="0.002"/>
        </ListOfConstants>
        <KineticLaw function="Function_103">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Parameter_614"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_893">
              <SourceParameter reference="Parameter_613"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_906">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_907">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="re129" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>TRANSLATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s105" alias="sa124">
      <celldesigner:linkAnchor position="E"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s49" alias="sa133">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="horizontal"/>
      <celldesigner:lineDirection index="1" value="vertical"/>
      <celldesigner:lineDirection index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints>0.5555272235279656,-0.004576266129490136 0.5555782211776013,0.0036610129036045436</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
  <celldesigner:listOfModification>
    <celldesigner:modification type="CATALYSIS" modifiers="s39" aliases="sa111" targetLineIndex="-1,2" editPoints="0.7272491157078269,-0.445373819852504">
      <celldesigner:connectScheme connectPolicy="square">
        <celldesigner:listOfLineDirection>
          <celldesigner:lineDirection index="0" value="horizontal"/>
          <celldesigner:lineDirection index="1" value="vertical"/>
        </celldesigner:listOfLineDirection>
      </celldesigner:connectScheme>
      <celldesigner:linkTarget species="s39" alias="sa111">
        <celldesigner:linkAnchor position="E"/>
      </celldesigner:linkTarget>
      <celldesigner:line width="1.0" color="ff000000"/>
    </celldesigner:modification>
  </celldesigner:listOfModification>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_612" name="tau" value="0.55"/>
          <Constant key="Parameter_611" name="tc" value="3600"/>
          <Constant key="Parameter_610" name="uc" value="3600"/>
          <Constant key="Parameter_609" name="delay" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_104">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_914">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_915">
              <SourceParameter reference="Parameter_609"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_916">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_917">
              <SourceParameter reference="Parameter_612"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_918">
              <SourceParameter reference="Parameter_611"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_919">
              <SourceParameter reference="Parameter_610"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="re131" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>STATE_TRANSITION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s51" alias="sa49">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s116" alias="sa136">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="direct" rectangleIndex="0">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection index="0" value="unknown"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_608" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_105">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_753">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_882">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_855">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="re132" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s45" alias="sa43">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s117" alias="sa137">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s47" alias="sa45">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="1" tShapeIndex="0">0.7349999999999994,-0.10499999999998977 0.7549999999999955,0.0350000000000108 0.12118685531478146,-0.053769956868354285 0.28567068323380074,0.3169440815387823 0.9747443855585232,0.1569005047176697 0.36998730593095,-0.0727743536880201</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_607" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_106">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_929">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_930">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_931">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="re133" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s50" alias="sa48">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s117" alias="sa137">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s48" alias="sa46">
      <celldesigner:linkAnchor position="NE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="1" tShapeIndex="0">0.020782147550029606,-0.06828495985154959 0.9360087898508986,0.2102591758317338 0.7236939480872664,0.0 0.7236939480872664,7.105427357601002E-15 0.968999264164009,0.17331961866337586 0.24216843044470693,0.29407437168769945</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_606" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_107">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_935">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_936">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_937">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="re134" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s66" alias="sa77">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s118" alias="sa139">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="1" tShapeIndex="0">0.9721844773958299,0.16444397011269896 0.25119617224880386,0.0 0.25119617224880386,-1.4210854715202004E-14 0.9430101013408407,0.2318233165796233 0.004064776274717019,0.5639633194588995</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_605" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_108">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_941">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_942">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_943">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="re135" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s65" alias="sa76">
      <celldesigner:linkAnchor position="N"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s118" alias="sa139">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="SSE"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="1" num2="1" tShapeIndex="0">0.4475138121546962,-0.49723756906076844 0.49115113547376055,-0.4999216914643654 0.6721422523285341,-0.4694326841659606 0.21157155147691498,0.3497992543733872</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_604" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_109">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_947">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_948">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_949">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="re136" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s61" alias="sa60">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="SSW"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s48" alias="sa140">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.8753505765035854,0.33032097226550405 0.5,0.0 0.5,0.0 0.4999999999999991,0.0 0.4999999999999991,0.0 0.1744748002761609,0.22586053851464616</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_603" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_110">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_953">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_954">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_955">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="re137" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s62" alias="sa61">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="SW"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s48" alias="sa140">
      <celldesigner:linkAnchor position="SW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="2" value="vertical"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.9852626211116764,0.12049974502804783 9.361104610343673E-4,0.0016674467587176611 0.7612918324362274,-0.42519892347296984 0.20000000000000284,1.4000000000000021 1.1800000000000068,1.2600000000000016 0.010355165346140893,0.6530178347456328</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_602" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_111">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_959">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_960">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_961">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="re138" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s58" alias="sa57">
      <celldesigner:linkAnchor position="NNE"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s47" alias="sa141">
      <celldesigner:linkAnchor position="W"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="1" num1="2" num2="2" tShapeIndex="0">0.9693143880898596,0.17246450397644875 0.5,0.0 0.5,0.0 0.5,0.0 0.5,0.0 0.0934982810970868,0.39835888685353016</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_601" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_112">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_965">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_966">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_967">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="re139" reversible="false">
        <ListOfUnsupportedAnnotations>
          <UnsupportedAnnotation name="http://www.sbml.org/2001/ns/celldesigner">
<celldesigner:extension xmlns:celldesigner="http://www.sbml.org/2001/ns/celldesigner">
  <celldesigner:reactionType>DISSOCIATION</celldesigner:reactionType>
  <celldesigner:baseReactants>
    <celldesigner:baseReactant species="s60" alias="sa59">
      <celldesigner:linkAnchor position="NNW"/>
    </celldesigner:baseReactant>
  </celldesigner:baseReactants>
  <celldesigner:baseProducts>
    <celldesigner:baseProduct species="s57" alias="sa138">
      <celldesigner:linkAnchor position="S"/>
    </celldesigner:baseProduct>
    <celldesigner:baseProduct species="s47" alias="sa141">
      <celldesigner:linkAnchor position="WSW"/>
    </celldesigner:baseProduct>
  </celldesigner:baseProducts>
  <celldesigner:connectScheme connectPolicy="square">
    <celldesigner:listOfLineDirection>
      <celldesigner:lineDirection arm="0" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="0" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="0" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="0" value="vertical"/>
      <celldesigner:lineDirection arm="1" index="1" value="horizontal"/>
      <celldesigner:lineDirection arm="1" index="2" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="0" value="horizontal"/>
      <celldesigner:lineDirection arm="2" index="1" value="vertical"/>
      <celldesigner:lineDirection arm="2" index="2" value="horizontal"/>
    </celldesigner:listOfLineDirection>
  </celldesigner:connectScheme>
  <celldesigner:editPoints num0="2" num1="2" num2="2" tShapeIndex="0">0.5,1.4210854715202004E-14 0.5,1.4210854715202004E-14 0.08310788875662878,0.004328535872740957 0.08581322367709188,-0.04761389460015142 0.5,0.0 0.5,0.0 0.1516007855985042,-0.18171253612809757</celldesigner:editPoints>
  <celldesigner:line width="1.0" color="ff000000"/>
</celldesigner:extension>
          </UnsupportedAnnotation>
        </ListOfUnsupportedAnnotations>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_600" name="kDD" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_113">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_971">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_972">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_973">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 1.20435007015673e+20 2.092814714860801e+17 7.05795017788e+16 2.106545198142001e+16 1702459484033000 207763891755000 877426058803000 173437683552000.1 1806642537000 6612311685420000 624496103623000.1 1276694059480000 387223717097000 63834702974000.01 6.02066034311966e+17 4.933639661457501e+17 5.932652763000602e+16 370963934264000 1935516371306000 1945151798170000 3.011070895e+16 1.70426612657e+21 1037615030417000 364339578295000 9612542725198000 54199276110000.01 0 0 0 1.80487202731374e+17 1.80662447057463e+17 0 0 3.011070895e+20 0 0 6022141790000000 4.19578938513551e+18 24991888428500 0 0 9.4645184799998e+16 0 6.02214179e+18 49983776857000 0 0 5359706193100 2.33056887273e+18 0 4.59812205376944e+18 3358548476283000 516097551403000 718441515547000 148144688034000 0 7.1894737545736e+16 0 1.7586460669337e+16 894890269994000 1.009407318272641e+17 0 0 0 0 3613285074000 0 0 9.033212685e+20 0 9.033212685e+16 60221417900000 18066425370000 6.020335147463e+16 1806642537000000 1.0839855222e+16 4.3359420888e+16 3.4326208203e+16 1 1 1 1 44000 0.0012 2 6.64 5000 1e-10 0.1 300 0 200 150 80 321 380 1 0 0 120000 3.5 1630 18330 4760 6000 2500 100 33 0.005 0.5 7071067.81 10 0.1 7.499999999999999e-05 0.004 10.3 0.08 1152 0.015 0 0.00015 1.5 0.1 5 20 4 0.002 1.5 9.450000000000001e-05 
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
    <Task key="Task_15" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="12000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="12000"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
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
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="1e-06"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="1e-12"/>
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
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="1e-06"/>
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
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="1e-12"/>
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
    <Task key="Task_26" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_14"/>
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
    <PlotSpecification name="plot_1" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NO]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Koo2013 - Integrated shear stress induced NO production model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Koo2013 - Integrated shear stress induced NO production model,Vector=Compartments[Cell],Vector=Metabolites[NO],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfLayouts xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <Layout key="Layout_2" name="Layout">
      <Dimensions width="2000" height="2000"/>
      <ListOfCompartmentGlyphs>
        <CompartmentGlyph key="Layout_3" name="CompartmentGlyph" compartment="Compartment_1">
          <BoundingBox>
            <Position x="292" y="216"/>
            <Dimensions width="1592" height="1760"/>
          </BoundingBox>
        </CompartmentGlyph>
        <CompartmentGlyph key="Layout_4" name="CompartmentGlyph_1" compartment="Compartment_2">
          <BoundingBox>
            <Position x="317" y="437"/>
            <Dimensions width="247" height="124"/>
          </BoundingBox>
        </CompartmentGlyph>
        <CompartmentGlyph key="Layout_5" name="CompartmentGlyph_2" compartment="Compartment_3">
          <BoundingBox>
            <Position x="1288" y="1552"/>
            <Dimensions width="425" height="308"/>
          </BoundingBox>
        </CompartmentGlyph>
      </ListOfCompartmentGlyphs>
      <ListOfMetabGlyphs>
        <MetaboliteGlyph key="Layout_6" name="SpeciesGlyph" metabolite="Metabolite_0">
          <BoundingBox>
            <Position x="205" y="662"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_7" name="SpeciesGlyph_1" metabolite="Metabolite_1">
          <BoundingBox>
            <Position x="367" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_8" name="SpeciesGlyph_2" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="613" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_9" name="SpeciesGlyph_3" metabolite="Metabolite_3">
          <BoundingBox>
            <Position x="748" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_10" name="SpeciesGlyph_4" metabolite="Metabolite_4">
          <BoundingBox>
            <Position x="207" y="482"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_11" name="SpeciesGlyph_5" metabolite="Metabolite_5">
          <BoundingBox>
            <Position x="749" y="339"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_12" name="SpeciesGlyph_6" metabolite="Metabolite_6">
          <BoundingBox>
            <Position x="940" y="343"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_13" name="SpeciesGlyph_7" metabolite="Metabolite_7">
          <BoundingBox>
            <Position x="939" y="270"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_14" name="SpeciesGlyph_8" metabolite="Metabolite_8">
          <BoundingBox>
            <Position x="638" y="676"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_15" name="SpeciesGlyph_9" metabolite="Metabolite_9">
          <BoundingBox>
            <Position x="689" y="676"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_16" name="SpeciesGlyph_10" metabolite="Metabolite_10">
          <BoundingBox>
            <Position x="945" y="421"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_17" name="SpeciesGlyph_11" metabolite="Metabolite_11">
          <BoundingBox>
            <Position x="382.5" y="337.5"/>
            <Dimensions width="54" height="43"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_18" name="SpeciesGlyph_12" metabolite="Metabolite_12">
          <BoundingBox>
            <Position x="308" y="344"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_19" name="SpeciesGlyph_13" metabolite="Metabolite_35">
          <BoundingBox>
            <Position x="1009.25" y="768.710552944251"/>
            <Dimensions width="107" height="44"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_20" name="SpeciesGlyph_14" metabolite="Metabolite_36">
          <BoundingBox>
            <Position x="888.25" y="773.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_21" name="SpeciesGlyph_15" metabolite="Metabolite_37">
          <BoundingBox>
            <Position x="892.25" y="681.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_22" name="SpeciesGlyph_16" metabolite="Metabolite_39">
          <BoundingBox>
            <Position x="1179.25" y="589.710552944251"/>
            <Dimensions width="100" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_23" name="SpeciesGlyph_17" metabolite="Metabolite_40">
          <BoundingBox>
            <Position x="1022.25" y="589.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_24" name="SpeciesGlyph_18" metabolite="Metabolite_41">
          <BoundingBox>
            <Position x="889.25" y="587.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_25" name="SpeciesGlyph_19" metabolite="Metabolite_2">
          <BoundingBox>
            <Position x="798.75" y="591.210552944251"/>
            <Dimensions width="37" height="34"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_26" name="SpeciesGlyph_20" metabolite="Metabolite_42">
          <BoundingBox>
            <Position x="1242" y="771"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_27" name="SpeciesGlyph_21" metabolite="Metabolite_43">
          <BoundingBox>
            <Position x="1258" y="691"/>
            <Dimensions width="155" height="38"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_28" name="SpeciesGlyph_22" metabolite="Metabolite_44">
          <BoundingBox>
            <Position x="1496" y="692"/>
            <Dimensions width="170" height="37"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_29" name="SpeciesGlyph_23" metabolite="Metabolite_45">
          <BoundingBox>
            <Position x="1325" y="579"/>
            <Dimensions width="153" height="39"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_30" name="SpeciesGlyph_24" metabolite="Metabolite_46">
          <BoundingBox>
            <Position x="1534" y="578"/>
            <Dimensions width="168" height="41"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_31" name="SpeciesGlyph_25" metabolite="Metabolite_15">
          <BoundingBox>
            <Position x="1431.375" y="286.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_32" name="SpeciesGlyph_26" metabolite="Metabolite_14">
          <BoundingBox>
            <Position x="1188.375" y="328.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_33" name="SpeciesGlyph_27" metabolite="Metabolite_16">
          <BoundingBox>
            <Position x="1505.375" y="194.7078593287326"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_34" name="SpeciesGlyph_28" metabolite="Metabolite_13">
          <BoundingBox>
            <Position x="1322.375" y="328.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_35" name="SpeciesGlyph_29" metabolite="Metabolite_17">
          <BoundingBox>
            <Position x="1554.375" y="286.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_36" name="SpeciesGlyph_30" metabolite="Metabolite_18">
          <BoundingBox>
            <Position x="1612.375" y="194.7078593287326"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_37" name="SpeciesGlyph_31" metabolite="Metabolite_19">
          <BoundingBox>
            <Position x="1699.375" y="284.7078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_38" name="SpeciesGlyph_32" metabolite="Metabolite_20">
          <BoundingBox>
            <Position x="1698.125" y="368.4578593287326"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_39" name="SpeciesGlyph_33" metabolite="Metabolite_21">
          <BoundingBox>
            <Position x="1848.375" y="284.7078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_40" name="SpeciesGlyph_34" metabolite="Metabolite_22">
          <BoundingBox>
            <Position x="1859.125" y="363.4578593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_41" name="SpeciesGlyph_35" metabolite="Metabolite_23">
          <BoundingBox>
            <Position x="1189.375" y="409.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_42" name="SpeciesGlyph_36" metabolite="Metabolite_24">
          <BoundingBox>
            <Position x="1322.375" y="409.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_43" name="SpeciesGlyph_37" metabolite="Metabolite_47">
          <BoundingBox>
            <Position x="1380" y="839.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_44" name="SpeciesGlyph_38" metabolite="Metabolite_48">
          <BoundingBox>
            <Position x="1592" y="839.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_45" name="SpeciesGlyph_39" metabolite="Metabolite_49">
          <BoundingBox>
            <Position x="1544" y="481"/>
            <Dimensions width="112" height="44"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_46" name="SpeciesGlyph_40" metabolite="Metabolite_50">
          <BoundingBox>
            <Position x="1362" y="480"/>
            <Dimensions width="93" height="45"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_47" name="SpeciesGlyph_41" metabolite="Metabolite_51">
          <BoundingBox>
            <Position x="420.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_48" name="SpeciesGlyph_42" metabolite="Metabolite_30">
          <BoundingBox>
            <Position x="661.0095969770849" y="1017.678879634638"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_49" name="SpeciesGlyph_43" metabolite="Metabolite_52">
          <BoundingBox>
            <Position x="661.2595969770849" y="1192.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_50" name="SpeciesGlyph_44" metabolite="Metabolite_53">
          <BoundingBox>
            <Position x="659.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_51" name="SpeciesGlyph_45" metabolite="Metabolite_31">
          <BoundingBox>
            <Position x="822.0095969770849" y="1010.678879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_52" name="SpeciesGlyph_46" metabolite="Metabolite_54">
          <BoundingBox>
            <Position x="813.2595969770849" y="1192.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_53" name="SpeciesGlyph_47" metabolite="Metabolite_55">
          <BoundingBox>
            <Position x="811.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_54" name="SpeciesGlyph_48" metabolite="Metabolite_56">
          <BoundingBox>
            <Position x="979.2595969770849" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_55" name="SpeciesGlyph_49" metabolite="Metabolite_57">
          <BoundingBox>
            <Position x="900.2595969770849" y="1364.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_56" name="SpeciesGlyph_50" metabolite="Metabolite_58">
          <BoundingBox>
            <Position x="420.2595969770849" y="1407.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_57" name="SpeciesGlyph_51" metabolite="Metabolite_59">
          <BoundingBox>
            <Position x="1104.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_58" name="SpeciesGlyph_52" metabolite="Metabolite_60">
          <BoundingBox>
            <Position x="1139.259596977085" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_59" name="SpeciesGlyph_53" metabolite="Metabolite_61">
          <BoundingBox>
            <Position x="1144.259596977085" y="1364.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_60" name="SpeciesGlyph_54" metabolite="Metabolite_62">
          <BoundingBox>
            <Position x="1146.259596977085" y="1505.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_61" name="SpeciesGlyph_55" metabolite="Metabolite_63">
          <BoundingBox>
            <Position x="904.2595969770849" y="1505.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_62" name="SpeciesGlyph_56" metabolite="Metabolite_64">
          <BoundingBox>
            <Position x="1269.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_63" name="SpeciesGlyph_57" metabolite="Metabolite_33">
          <BoundingBox>
            <Position x="1293.259596977085" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_64" name="SpeciesGlyph_58" metabolite="Metabolite_65">
          <BoundingBox>
            <Position x="1335.259596977085" y="1355.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_65" name="SpeciesGlyph_59" metabolite="Metabolite_32">
          <BoundingBox>
            <Position x="1323.759596977085" y="1622.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_66" name="SpeciesGlyph_60" metabolite="Metabolite_29">
          <BoundingBox>
            <Position x="661.2595969770849" y="752.4288796346377"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_67" name="SpeciesGlyph_61" metabolite="Metabolite_66">
          <BoundingBox>
            <Position x="949.2595969770849" y="1774.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_68" name="SpeciesGlyph_62" metabolite="Metabolite_74">
          <BoundingBox>
            <Position x="1323.259596977085" y="1772.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_69" name="SpeciesGlyph_63" metabolite="Metabolite_34">
          <BoundingBox>
            <Position x="1434.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_70" name="SpeciesGlyph_64" metabolite="Metabolite_67">
          <BoundingBox>
            <Position x="1478.259596977085" y="1622.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_71" name="SpeciesGlyph_65" metabolite="Metabolite_68">
          <BoundingBox>
            <Position x="1515.259596977085" y="1772.928879634638"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_72" name="SpeciesGlyph_66" metabolite="Metabolite_38">
          <BoundingBox>
            <Position x="1525.259596977085" y="1348.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_73" name="SpeciesGlyph_67" metabolite="Metabolite_28">
          <BoundingBox>
            <Position x="966.2595969770849" y="1864.428879634638"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_74" name="SpeciesGlyph_68" metabolite="Metabolite_75">
          <BoundingBox>
            <Position x="1027.25" y="451.710552944251"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_75" name="SpeciesGlyph_69" metabolite="Metabolite_76">
          <BoundingBox>
            <Position x="1099" y="679"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_76" name="SpeciesGlyph_70" metabolite="Metabolite_42">
          <BoundingBox>
            <Position x="1486" y="394"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_77" name="SpeciesGlyph_71" metabolite="Metabolite_77">
          <BoundingBox>
            <Position x="1601" y="413"/>
            <Dimensions width="30" height="30"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_78" name="SpeciesGlyph_72" metabolite="Metabolite_37">
          <BoundingBox>
            <Position x="1728" y="524"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_79" name="SpeciesGlyph_73" metabolite="Metabolite_36">
          <BoundingBox>
            <Position x="1729" y="644"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_80" name="SpeciesGlyph_74">
          <BoundingBox>
            <Position x="52" y="807.5"/>
            <Dimensions width="134" height="33"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_81" name="SpeciesGlyph_75" metabolite="Metabolite_25">
          <BoundingBox>
            <Position x="1198.375" y="171.2078593287326"/>
            <Dimensions width="83" height="69"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_82" name="SpeciesGlyph_76" metabolite="Metabolite_27">
          <BoundingBox>
            <Position x="1329.375" y="171.2078593287326"/>
            <Dimensions width="85" height="68"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_83" name="SpeciesGlyph_77" metabolite="Metabolite_26">
          <BoundingBox>
            <Position x="1085.375" y="484.2078593287326"/>
            <Dimensions width="95" height="63"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_84" name="SpeciesGlyph_78" metabolite="Metabolite_69">
          <BoundingBox>
            <Position x="553.2595969770849" y="1258.428879634638"/>
            <Dimensions width="108" height="32"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_85" name="SpeciesGlyph_79" metabolite="Metabolite_70">
          <BoundingBox>
            <Position x="730.2595969770849" y="1340.428879634638"/>
            <Dimensions width="98" height="36"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_86" name="SpeciesGlyph_80" metabolite="Metabolite_71">
          <BoundingBox>
            <Position x="552.2595969770849" y="1343.428879634638"/>
            <Dimensions width="108" height="33"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_87" name="SpeciesGlyph_81" metabolite="Metabolite_72">
          <BoundingBox>
            <Position x="609.2595969770849" y="1444.428879634638"/>
            <Dimensions width="172" height="35"/>
          </BoundingBox>
        </MetaboliteGlyph>
        <MetaboliteGlyph key="Layout_88" name="SpeciesGlyph_82" metabolite="Metabolite_73">
          <BoundingBox>
            <Position x="507.2595969770849" y="1532.428879634638"/>
            <Dimensions width="140" height="37"/>
          </BoundingBox>
        </MetaboliteGlyph>
      </ListOfMetabGlyphs>
      <ListOfReactionGlyphs>
        <ReactionGlyph key="Layout_89" name="ReactionGlyph" reaction="Reaction_0">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="728" y="497"/>
                <End x="713" y="497"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_90" name="SpeciesReferenceGlyph" metaboliteGlyph="Layout_9" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="728" y="497"/>
                    <End x="748" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_91" name="SpeciesReferenceGlyph_1" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="713" y="497"/>
                    <End x="693" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_92" name="ReactionGlyph_1" reaction="Reaction_1">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="294.5" y="497"/>
                <End x="309.5" y="497"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_93" name="SpeciesReferenceGlyph_2" metaboliteGlyph="Layout_10" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="294.5" y="497"/>
                    <End x="237" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_94" name="SpeciesReferenceGlyph_3" metaboliteGlyph="Layout_7" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="309.5" y="497"/>
                    <End x="367" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_95" name="SpeciesReferenceGlyph_4" metaboliteGlyph="Layout_6" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="245" y="662"/>
                    <End x="239.7838478787924" y="554.2867586259837"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="239.7838478787924" y="554.2867586259837"/>
                    <End x="303.5321945438413" y="551.2046521878902"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="303.5321945438413" y="551.2046521878902"/>
                    <End x="302" y="502"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_96" name="ReactionGlyph_2">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="891.999695660113" y="358.4324351742332"/>
                <End x="877.000304339887" y="358.5675648257668"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_97" name="SpeciesReferenceGlyph_5" metaboliteGlyph="Layout_12" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="891.999695660113" y="358.4324351742332"/>
                    <End x="940" y="358"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_98" name="SpeciesReferenceGlyph_6" metaboliteGlyph="Layout_11" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="877.000304339887" y="358.5675648257668"/>
                    <End x="829" y="359"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_99" name="SpeciesReferenceGlyph_7" metaboliteGlyph="Layout_8" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653" y="477"/>
                    <End x="653.9766661975149" y="404.4408581389349"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653.9766661975149" y="404.4408581389349"/>
                    <End x="893.4398745767033" y="406.1011976454537"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="893.4398745767033" y="406.1011976454537"/>
                    <End x="892.0448910472344" y="363.5335795196254"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_100" name="SpeciesReferenceGlyph_8" metaboliteGlyph="Layout_17" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="409.5" y="337.5"/>
                    <End x="413.1788186030261" y="306.5725269793662"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="413.1788186030261" y="306.5725269793662"/>
                    <End x="892.0448910472344" y="363.5335795196254"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_101" name="SpeciesReferenceGlyph_9" metaboliteGlyph="Layout_80" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="186" y="824"/>
                    <End x="739.2894574057009" y="964.6108298801832"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="739.2894574057009" y="964.6108298801832"/>
                    <End x="892.0448910472344" y="363.5335795196254"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_102" name="ReactionGlyph_3" reaction="Reaction_3">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="856.4340511609528" y="286.4758616813282"/>
                <End x="871.4316553829767" y="286.2077803512613"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_103" name="SpeciesReferenceGlyph_10" metaboliteGlyph="Layout_11" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="856.4340511609528" y="286.4758616813282"/>
                    <End x="788.8657065439295" y="287.6836420325895"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="788.8657065439295" y="287.6836420325895"/>
                    <End x="789" y="339"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_104" name="SpeciesReferenceGlyph_11" metaboliteGlyph="Layout_13" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="871.4316553829767" y="286.2077803512613"/>
                    <End x="939" y="285"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_105" name="ReactionGlyph_4" reaction="Reaction_4">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="522.5" y="497"/>
                <End x="537.5" y="497"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_106" name="SpeciesReferenceGlyph_12" metaboliteGlyph="Layout_7" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="522.5" y="497"/>
                    <End x="447" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_107" name="SpeciesReferenceGlyph_13" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="537.5" y="497"/>
                    <End x="613" y="497"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_108" name="SpeciesReferenceGlyph_14" metaboliteGlyph="Layout_11" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="749" y="359"/>
                    <End x="529.5723205531676" y="358.6636345057378"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="529.5723205531676" y="358.6636345057378"/>
                    <End x="530" y="492"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_109" name="ReactionGlyph_5" reaction="Reaction_5">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="653" y="589"/>
                <End x="653" y="604"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_110" name="SpeciesReferenceGlyph_15" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653" y="589"/>
                    <End x="653" y="517"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_111" name="SpeciesReferenceGlyph_16" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653" y="604"/>
                    <End x="653" y="676"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_112" name="ReactionGlyph_6" reaction="Reaction_6">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="713.8786641536186" y="605.7870332539956"/>
                <End x="711.7888115534216" y="620.640737038219"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_113" name="SpeciesReferenceGlyph_17" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="713.8786641536186" y="605.7870332539956"/>
                    <End x="721.6674757070402" y="550.4277702922144"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="721.6674757070402" y="550.4277702922144"/>
                    <End x="693" y="517"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_114" name="SpeciesReferenceGlyph_18" metaboliteGlyph="Layout_15" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="711.7888115534216" y="620.640737038219"/>
                    <End x="704" y="676"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_115" name="ReactionGlyph_7" reaction="Reaction_7">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="725.6255942220286" y="451.2485638716777"/>
                <End x="713.8513678094088" y="460.5419804869148"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_116" name="SpeciesReferenceGlyph_19" metaboliteGlyph="Layout_16" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="725.6255942220286" y="451.2485638716777"/>
                    <End x="746.4769620314374" y="434.7905443585926"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="746.4769620314374" y="434.7905443585926"/>
                    <End x="945" y="436"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_117" name="SpeciesReferenceGlyph_20" metaboliteGlyph="Layout_8" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="713.8513678094088" y="460.5419804869148"/>
                    <End x="693" y="477"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_118" name="ReactionGlyph_8" reaction="Reaction_8">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="352.8333333333333" y="359"/>
                <End x="367.6666666666667" y="359"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_119" name="SpeciesReferenceGlyph_21" metaboliteGlyph="Layout_18" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="352.8333333333333" y="359"/>
                    <End x="338" y="359"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_120" name="SpeciesReferenceGlyph_22" metaboliteGlyph="Layout_17" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="367.6666666666667" y="359"/>
                    <End x="382.5" y="359"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_121" name="ReactionGlyph_9" reaction="Reaction_9">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="670.7357325292314" y="589.0037055704394"/>
                <End x="670.2642674707686" y="603.9962944295606"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_122" name="SpeciesReferenceGlyph_23" metaboliteGlyph="Layout_8" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="670.7357325292314" y="589.0037055704394"/>
                    <End x="673" y="517"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_123" name="SpeciesReferenceGlyph_24" metaboliteGlyph="Layout_14" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="670.2642674707686" y="603.9962944295606"/>
                    <End x="668" y="676"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_124" name="ReactionGlyph_10" reaction="Reaction_10">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="989.3497808449268" y="774.8226169002041"/>
                <End x="1004.29804507193" y="773.5778692953925"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_125" name="SpeciesReferenceGlyph_25" metaboliteGlyph="Layout_19" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="989.3497808449268" y="774.8226169002041"/>
                    <End x="1062.75" y="768.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_126" name="SpeciesReferenceGlyph_26" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="989.3497808449268" y="774.8226169002041"/>
                    <End x="1062.25" y="629.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_127" name="SpeciesReferenceGlyph_27" metaboliteGlyph="Layout_20" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="989.3497808449268" y="774.8226169002041"/>
                    <End x="968.25" y="793.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_128" name="ReactionGlyph_11" reaction="Reaction_11">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="973.5281617453588" y="695.3602913792749"/>
                <End x="987.3759328116356" y="689.5949434716473"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_129" name="SpeciesReferenceGlyph_28" metaboliteGlyph="Layout_22" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="973.5281617453588" y="695.3602913792749"/>
                    <End x="1179.25" y="609.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_130" name="SpeciesReferenceGlyph_29" metaboliteGlyph="Layout_21" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="973.5281617453588" y="695.3602913792749"/>
                    <End x="972.25" y="701.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_131" name="SpeciesReferenceGlyph_30" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="973.5281617453588" y="695.3602913792749"/>
                    <End x="1102.25" y="609.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_132" name="ReactionGlyph_12" reaction="Reaction_12">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="952.25" y="664.3772196109177"/>
                <End x="952.25" y="673.0438862775844"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_133" name="SpeciesReferenceGlyph_31" metaboliteGlyph="Layout_24" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="952.25" y="664.3772196109177"/>
                    <End x="952.2500000000001" y="655.7105529442509"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="952.2500000000001" y="655.7105529442509"/>
                    <End x="909.2500000000001" y="655.7105529442508"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="909.2500000000001" y="655.7105529442508"/>
                    <End x="909.25" y="627.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_134" name="SpeciesReferenceGlyph_32" metaboliteGlyph="Layout_21" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="952.25" y="673.0438862775844"/>
                    <End x="952.25" y="681.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_135" name="SpeciesReferenceGlyph_33" metaboliteGlyph="Layout_25" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="817.25" y="625.210552944251"/>
                    <End x="816.8171680975048" y="669.5837984843582"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="816.8171680975048" y="669.5837984843582"/>
                    <End x="949.4166666666667" y="670.8772196109178"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_136" name="ReactionGlyph_13" reaction="Reaction_13">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="948.25" y="755.7105529442506"/>
                <End x="948.25" y="764.7105529442508"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_137" name="SpeciesReferenceGlyph_34" metaboliteGlyph="Layout_21" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="948.25" y="755.7105529442506"/>
                    <End x="948.25" y="746.7105529442504"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="948.25" y="746.7105529442504"/>
                    <End x="912.25" y="746.7105529442505"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="912.25" y="746.7105529442505"/>
                    <End x="912.25" y="721.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_138" name="SpeciesReferenceGlyph_35" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="948.25" y="764.7105529442508"/>
                    <End x="948.25" y="773.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_139" name="SpeciesReferenceGlyph_36" metaboliteGlyph="Layout_25" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="808" y="625.210552944251"/>
                    <End x="810.0951114946837" y="764.4972749961784"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="810.0951114946837" y="764.4972749961784"/>
                    <End x="945.5000000000001" y="762.4605529442508"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_140" name="ReactionGlyph_14" reaction="Reaction_14">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1229.25" y="737.210552944251"/>
                <End x="1229.25" y="722.210552944251"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_141" name="SpeciesReferenceGlyph_37" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1229.25" y="737.210552944251"/>
                    <End x="1229.25" y="829.7105529442509"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1229.25" y="829.7105529442509"/>
                    <End x="1062.75" y="829.7105529442506"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1062.75" y="829.7105529442506"/>
                    <End x="1062.75" y="812.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_142" name="SpeciesReferenceGlyph_38" metaboliteGlyph="Layout_22" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1229.25" y="722.210552944251"/>
                    <End x="1229.25" y="629.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_143" name="SpeciesReferenceGlyph_39" metaboliteGlyph="Layout_25" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="817.25" y="625.210552944251"/>
                    <End x="815.9607491218134" y="728.4393834235514"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="815.9607491218134" y="728.4393834235514"/>
                    <End x="1218" y="733.460552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_144" name="ReactionGlyph_15" reaction="Reaction_15">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1170.392853187527" y="790.5849265728492"/>
                <End x="1181.432675301973" y="780.4300101437792"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_145" name="SpeciesReferenceGlyph_40" metaboliteGlyph="Layout_27" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1170.392853187527" y="790.5849265728492"/>
                    <End x="1258" y="710"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_146" name="SpeciesReferenceGlyph_41" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1170.392853187527" y="790.5849265728492"/>
                    <End x="1116.25" y="790.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_147" name="SpeciesReferenceGlyph_42" metaboliteGlyph="Layout_26" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1170.392853187527" y="790.5849265728492"/>
                    <End x="1242" y="791"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_148" name="ReactionGlyph_16" reaction="Reaction_16">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1401.5" y="642.3333333333335"/>
                <End x="1401.5" y="630.1666666666667"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_149" name="SpeciesReferenceGlyph_43" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1401.5" y="642.3333333333335"/>
                    <End x="1401.5" y="654.5000000000002"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1401.5" y="654.5000000000002"/>
                    <End x="1335.5" y="654.5000000000002"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1335.5" y="654.5000000000002"/>
                    <End x="1335.5" y="691"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_150" name="SpeciesReferenceGlyph_44" metaboliteGlyph="Layout_29" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1401.5" y="630.1666666666667"/>
                    <End x="1401.5" y="618"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_151" name="SpeciesReferenceGlyph_45" metaboliteGlyph="Layout_25" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="835.75" y="608.210552944251"/>
                    <End x="854.43709434193" y="608.3217595882388"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="854.43709434193" y="608.3217595882388"/>
                    <End x="854.271849360142" y="636.0894221439523"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="854.271849360142" y="636.0894221439523"/>
                    <End x="1392.375" y="639.2916666666667"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_152" name="ReactionGlyph_17" reaction="Reaction_17">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1297.065998860822" y="558.3152770438485"/>
                <End x="1288.504284540036" y="545.9987414964943"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_153" name="SpeciesReferenceGlyph_46" metaboliteGlyph="Layout_29" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1297.065998860822" y="558.3152770438485"/>
                    <End x="1325" y="598.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_154" name="SpeciesReferenceGlyph_47" metaboliteGlyph="Layout_22" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1288.504284540036" y="545.9987414964943"/>
                    <End x="1279.25" y="609.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_155" name="SpeciesReferenceGlyph_48" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1288.504284540036" y="545.9987414964943"/>
                    <End x="1262" y="771"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_156" name="ReactionGlyph_18" reaction="Reaction_18">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1618" y="641.6666666666704"/>
                <End x="1618" y="630.3333333333351"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_157" name="SpeciesReferenceGlyph_49" metaboliteGlyph="Layout_28" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1618" y="641.6666666666704"/>
                    <End x="1618" y="653.0000000000056"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1618" y="653.0000000000056"/>
                    <End x="1581" y="653.0000000000061"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1581" y="653.0000000000061"/>
                    <End x="1581" y="692"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_158" name="SpeciesReferenceGlyph_50" metaboliteGlyph="Layout_30" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1618" y="630.3333333333351"/>
                    <End x="1618" y="619"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_159" name="SpeciesReferenceGlyph_51" metaboliteGlyph="Layout_25" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="817.25" y="591.210552944251"/>
                    <End x="817.3145229367419" y="574.2814807012352"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="817.3145229367419" y="574.2814807012352"/>
                    <End x="1219.758403264436" y="575.8153427262583"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1219.758403264436" y="575.8153427262583"/>
                    <End x="1219.523883465396" y="637.3469905534885"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1219.523883465396" y="637.3469905534885"/>
                    <End x="1609.499999999999" y="638.8333333333366"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_160" name="ReactionGlyph_19" reaction="Reaction_19">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1447.000136082811" y="710.2048200968844"/>
                <End x="1461.999863917189" y="710.2951799031156"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_161" name="SpeciesReferenceGlyph_52" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1447.000136082811" y="710.2048200968844"/>
                    <End x="1413" y="710"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_162" name="SpeciesReferenceGlyph_53" metaboliteGlyph="Layout_28" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1461.999863917189" y="710.2951799031156"/>
                    <End x="1496" y="710.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_163" name="SpeciesReferenceGlyph_54" metaboliteGlyph="Layout_83" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1156.625" y="547.2078593287326"/>
                    <End x="1156.633314639806" y="694.2584989643401"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1156.633314639806" y="694.2584989643401"/>
                    <End x="1454.529702887765" y="694.2416550990297"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1454.529702887765" y="694.2416550990297"/>
                    <End x="1454.530324057158" y="705.2275015900772"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_164" name="ReactionGlyph_20" reaction="Reaction_20">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1498.5" y="598.5"/>
                <End x="1513.5" y="598.5"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_165" name="SpeciesReferenceGlyph_55" metaboliteGlyph="Layout_29" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1498.5" y="598.5"/>
                    <End x="1478" y="598.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_166" name="SpeciesReferenceGlyph_56" metaboliteGlyph="Layout_30" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1513.5" y="598.5"/>
                    <End x="1534" y="598.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_167" name="SpeciesReferenceGlyph_57" metaboliteGlyph="Layout_83" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1180.375" y="515.7078593287326"/>
                    <End x="1180.409428419422" y="618.8347897882619"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1180.409428419422" y="618.8347897882619"/>
                    <End x="1506.005083155819" y="618.7260912774731"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1506.005083155819" y="618.7260912774731"/>
                    <End x="1506" y="603.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_168" name="ReactionGlyph_21">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1821.375" y="304.7078593287326"/>
                <End x="1806.375" y="304.7078593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_169" name="SpeciesReferenceGlyph_58" metaboliteGlyph="Layout_39" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1821.375" y="304.7078593287326"/>
                    <End x="1848.375" y="304.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_170" name="SpeciesReferenceGlyph_59" metaboliteGlyph="Layout_37" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1806.375" y="304.7078593287326"/>
                    <End x="1779.375" y="304.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_171" name="SpeciesReferenceGlyph_60" metaboliteGlyph="Layout_40" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1899.125" y="363.4578593287326"/>
                    <End x="1899.833637998879" y="336.0020861911877"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1899.833637998879" y="336.0020861911877"/>
                    <End x="1820.749025066171" y="333.9608993861405"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1820.749025066171" y="333.9608993861405"/>
                    <End x="1821.375" y="309.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_172" name="SpeciesReferenceGlyph_61" metaboliteGlyph="Layout_80" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="119" y="807.5"/>
                    <End x="105.7302114103831" y="119.0697757829029"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="105.7302114103831" y="119.0697757829029"/>
                    <End x="1817.064536045155" y="86.08307081961709"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1817.064536045155" y="86.08307081961709"/>
                    <End x="1821.375" y="309.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_173" name="ReactionGlyph_22" reaction="Reaction_22">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1600.041666666667" y="200.9578593287326"/>
                <End x="1587.708333333333" y="200.9578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_174" name="SpeciesReferenceGlyph_62" metaboliteGlyph="Layout_36" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1600.041666666667" y="200.9578593287326"/>
                    <End x="1612.375" y="200.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_175" name="SpeciesReferenceGlyph_63" metaboliteGlyph="Layout_33" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1587.708333333333" y="200.9578593287326"/>
                    <End x="1575.375" y="200.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_176" name="SpeciesReferenceGlyph_64" metaboliteGlyph="Layout_37" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1739.375" y="284.7078593287326"/>
                    <End x="1742.172329388496" y="180.2298072745483"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1742.172329388496" y="180.2298072745483"/>
                    <End x="1600.564288433558" y="176.438347472013"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1600.564288433558" y="176.438347472013"/>
                    <End x="1600.041666666667" y="195.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_177" name="ReactionGlyph_23" reaction="Reaction_23">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1587.708333333333" y="213.4578593287326"/>
                <End x="1600.041666666667" y="213.4578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_178" name="SpeciesReferenceGlyph_65" metaboliteGlyph="Layout_33" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1587.708333333333" y="213.4578593287326"/>
                    <End x="1575.375" y="213.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_179" name="SpeciesReferenceGlyph_66" metaboliteGlyph="Layout_36" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1600.041666666667" y="213.4578593287326"/>
                    <End x="1612.375" y="213.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_180" name="SpeciesReferenceGlyph_67" metaboliteGlyph="Layout_35" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1594.375" y="286.2078593287326"/>
                    <End x="1593.875" y="218.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_181" name="ReactionGlyph_24" reaction="Reaction_24">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1591.359793627807" y="224.0760707697177"/>
                <End x="1576.360629240674" y="223.9177429838166"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_182" name="SpeciesReferenceGlyph_68" metaboliteGlyph="Layout_82" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1591.359793627807" y="224.0760707697177"/>
                    <End x="1414.375" y="222.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_183" name="SpeciesReferenceGlyph_69" metaboliteGlyph="Layout_33" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1591.359793627807" y="224.0760707697177"/>
                    <End x="1505.375" y="207.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_184" name="SpeciesReferenceGlyph_70" metaboliteGlyph="Layout_31" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1591.359793627807" y="224.0760707697177"/>
                    <End x="1471.375" y="286.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_185" name="ReactionGlyph_25" reaction="Reaction_25">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1312.874898276809" y="188.2937973585409"/>
                <End x="1297.875101723191" y="188.3719212989243"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_186" name="SpeciesReferenceGlyph_71" metaboliteGlyph="Layout_82" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1312.874898276809" y="188.2937973585409"/>
                    <End x="1329.375" y="188.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_187" name="SpeciesReferenceGlyph_72" metaboliteGlyph="Layout_81" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1297.875101723191" y="188.3719212989243"/>
                    <End x="1281.375" y="188.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_188" name="SpeciesReferenceGlyph_73" metaboliteGlyph="Layout_34" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1362.375" y="328.2078593287326"/>
                    <End x="1371.479823834522" y="135.7826850968266"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1371.479823834522" y="135.7826850968266"/>
                    <End x="1315.225670646503" y="133.1209535599758"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1315.225670646503" y="133.1209535599758"/>
                    <End x="1312.848907824944" y="183.352458129289"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_189" name="ReactionGlyph_26" reaction="Reaction_26">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1161.25" y="188.4578593287326"/>
                <End x="1146.25" y="188.4578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_190" name="SpeciesReferenceGlyph_74" metaboliteGlyph="Layout_81" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1161.25" y="188.4578593287326"/>
                    <End x="1198.375" y="188.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_191" name="SpeciesReferenceGlyph_75" metaboliteGlyph="Layout_83" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1146.25" y="188.4578593287326"/>
                    <End x="1109.125" y="188.4578593287326"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1109.125" y="188.4578593287326"/>
                    <End x="1109.125" y="484.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_192" name="SpeciesReferenceGlyph_76" metaboliteGlyph="Layout_41" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1189.375" y="429.2078593287326"/>
                    <End x="1153.583656934744" y="428.0381587383802"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1153.583656934744" y="428.0381587383802"/>
                    <End x="1161.25" y="193.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_193" name="ReactionGlyph_27" reaction="Reaction_27">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1297.87591535974" y="222.7000325262366"/>
                <End x="1312.87408464026" y="222.4656861312285"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_194" name="SpeciesReferenceGlyph_77" metaboliteGlyph="Layout_81" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1297.87591535974" y="222.7000325262366"/>
                    <End x="1281.375" y="222.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_195" name="SpeciesReferenceGlyph_78" metaboliteGlyph="Layout_82" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1312.87408464026" y="222.4656861312285"/>
                    <End x="1329.375" y="222.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_196" name="SpeciesReferenceGlyph_79" metaboliteGlyph="Layout_32" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1228.375" y="328.2078593287326"/>
                    <End x="1228.559398657632" y="276.6571739623627"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1228.559398657632" y="276.6571739623627"/>
                    <End x="1305.27634297068" y="276.9315932343556"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1305.27634297068" y="276.9315932343556"/>
                    <End x="1305.452657785133" y="227.6408356876581"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_197" name="ReactionGlyph_28" reaction="Reaction_28">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1170.541666666667" y="222.9578593287326"/>
                <End x="1184.458333333333" y="222.9578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_198" name="SpeciesReferenceGlyph_80" metaboliteGlyph="Layout_83" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1170.541666666667" y="222.9578593287326"/>
                    <End x="1156.625" y="222.9578593287326"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1156.625" y="222.9578593287326"/>
                    <End x="1156.625" y="484.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_199" name="SpeciesReferenceGlyph_81" metaboliteGlyph="Layout_81" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.458333333333" y="222.9578593287326"/>
                    <End x="1198.375" y="222.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_200" name="SpeciesReferenceGlyph_82" metaboliteGlyph="Layout_32" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1208.375" y="328.2078593287326"/>
                    <End x="1208.520600972991" y="277.1779364828914"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1208.520600972991" y="277.1779364828914"/>
                    <End x="1177.35981664427" y="277.0890270692692"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1177.35981664427" y="277.0890270692692"/>
                    <End x="1177.5" y="227.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_201" name="ReactionGlyph_29" reaction="Reaction_29">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1340.125294973273" y="372.0410028714688"/>
                <End x="1351.834156359538" y="362.6653660911086"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_202" name="SpeciesReferenceGlyph_83" metaboliteGlyph="Layout_83" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1340.125294973273" y="372.0410028714688"/>
                    <End x="1180.375" y="499.9578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_203" name="SpeciesReferenceGlyph_84" metaboliteGlyph="Layout_33" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1351.834156359538" y="362.6653660911086"/>
                    <End x="1540.375" y="219.7078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_204" name="SpeciesReferenceGlyph_85" metaboliteGlyph="Layout_31" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1351.834156359538" y="362.6653660911086"/>
                    <End x="1431.375" y="306.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_205" name="SpeciesReferenceGlyph_86" metaboliteGlyph="Layout_32" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1248.375" y="328.2078593287326"/>
                    <End x="1258.515245662121" y="316.1057458107467"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1258.515245662121" y="316.1057458107467"/>
                    <End x="1339.558686497131" y="384.0112730683778"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1339.558686497131" y="384.0112730683778"/>
                    <End x="1348.282153273092" y="373.6000474718003"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_206" name="ReactionGlyph_30" reaction="Reaction_30">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1382.375" y="395.541192662066"/>
                <End x="1382.375" y="381.8745259953993"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_207" name="SpeciesReferenceGlyph_87" metaboliteGlyph="Layout_42" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1382.375" y="395.541192662066"/>
                    <End x="1382.375" y="409.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_208" name="SpeciesReferenceGlyph_88" metaboliteGlyph="Layout_34" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1382.375" y="381.8745259953993"/>
                    <End x="1382.375" y="368.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_209" name="SpeciesReferenceGlyph_89" metaboliteGlyph="Layout_33" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1557.875" y="219.7078593287326"/>
                    <End x="1556.197148319357" y="393.7671565719334"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1556.197148319357" y="393.7671565719334"/>
                    <End x="1385.791666666667" y="392.1245259953993"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_210" name="ReactionGlyph_31" reaction="Reaction_31">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1342.375" y="381.8745259953993"/>
                <End x="1342.375" y="395.541192662066"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_211" name="SpeciesReferenceGlyph_90" metaboliteGlyph="Layout_34" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1342.375" y="381.8745259953993"/>
                    <End x="1342.375" y="368.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_212" name="SpeciesReferenceGlyph_91" metaboliteGlyph="Layout_42" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1342.375" y="395.541192662066"/>
                    <End x="1342.375" y="409.2078593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_213" name="ReactionGlyph_32" reaction="Reaction_32">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1786.125" y="383.4578593287326"/>
                <End x="1801.125" y="383.4578593287326"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_214" name="SpeciesReferenceGlyph_92" metaboliteGlyph="Layout_38" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1786.125" y="383.4578593287326"/>
                    <End x="1728.125" y="383.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_215" name="SpeciesReferenceGlyph_93" metaboliteGlyph="Layout_40" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1801.125" y="383.4578593287326"/>
                    <End x="1859.125" y="383.4578593287326"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_216" name="ReactionGlyph_33" reaction="Reaction_33">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1513.5" y="852"/>
                <End x="1528.5" y="852"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_217" name="SpeciesReferenceGlyph_94" metaboliteGlyph="Layout_43" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1513.5" y="852"/>
                    <End x="1450" y="852"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_218" name="SpeciesReferenceGlyph_95" metaboliteGlyph="Layout_44" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1528.5" y="852"/>
                    <End x="1592" y="852"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_219" name="SpeciesReferenceGlyph_96" metaboliteGlyph="Layout_22" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1254.25" y="629.710552944251"/>
                    <End x="1254.247146041185" y="756.3526011453893"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1254.247146041185" y="756.3526011453893"/>
                    <End x="1521.002042661108" y="756.3586126360389"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1521.002042661108" y="756.3586126360389"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_220" name="SpeciesReferenceGlyph_97" metaboliteGlyph="Layout_29" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1478" y="608.25"/>
                    <End x="1521.001744529289" y="608.2503142111059"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1521.001744529289" y="608.2503142111059"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_221" name="SpeciesReferenceGlyph_98" metaboliteGlyph="Layout_30" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1576" y="619"/>
                    <End x="1576.001659816005" y="785.0018803900164"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1576.001659816005" y="785.0018803900164"/>
                    <End x="1520.999380100044" y="785.0024303456189"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1520.999380100044" y="785.0024303456189"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_222" name="SpeciesReferenceGlyph_99" metaboliteGlyph="Layout_27" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1335.5" y="729"/>
                    <End x="1335.498925539124" y="756.9956834266244"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1335.498925539124" y="756.9956834266244"/>
                    <End x="1521.003454049172" y="757.002803001284"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1521.003454049172" y="757.002803001284"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_223" name="SpeciesReferenceGlyph_100" metaboliteGlyph="Layout_28" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1581" y="729"/>
                    <End x="1581.001917457487" y="784.998770680141"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1581.001917457487" y="784.998770680141"/>
                    <End x="1520.997877082294" y="785.0008252823238"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1520.997877082294" y="785.0008252823238"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_224" name="SpeciesReferenceGlyph_101" metaboliteGlyph="Layout_19" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1089.5" y="812.710552944251"/>
                    <End x="1089.618324778506" y="833.8191921377805"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1089.618324778506" y="833.8191921377805"/>
                    <End x="1520.870420243119" y="823.8835203469299"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1520.870420243119" y="823.8835203469299"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_225" name="SpeciesReferenceGlyph_102" metaboliteGlyph="Layout_45" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1656" y="503"/>
                    <End x="1677.865745989037" y="503.0523165507176"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1677.865745989037" y="503.0523165507176"/>
                    <End x="1677.137552944246" y="807.4012067196019"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1677.137552944246" y="807.4012067196019"/>
                    <End x="1521.095638386114" y="807.0278567894801"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1521.095638386114" y="807.0278567894801"/>
                    <End x="1521" y="847"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_226" name="ReactionGlyph_34" reaction="Reaction_34">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1506.999881646533" y="502.7921341665536"/>
                <End x="1492.000118353467" y="502.7078658334464"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_227" name="SpeciesReferenceGlyph_103" metaboliteGlyph="Layout_45" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1506.999881646533" y="502.7921341665536"/>
                    <End x="1544" y="503"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_228" name="SpeciesReferenceGlyph_104" metaboliteGlyph="Layout_46" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1492.000118353467" y="502.7078658334464"/>
                    <End x="1455" y="502.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_229" name="ReactionGlyph_35" reaction="Reaction_35">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1356.37606683007" y="417.1852495845242"/>
                <End x="1355.389410893442" y="402.2177344245948"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_230" name="SpeciesReferenceGlyph_105" metaboliteGlyph="Layout_46" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1356.37606683007" y="417.1852495845242"/>
                    <End x="1362" y="502.5"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_231" name="SpeciesReferenceGlyph_106" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1355.389410893442" y="402.2177344245948"/>
                    <End x="1062.25" y="589.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_232" name="SpeciesReferenceGlyph_107" metaboliteGlyph="Layout_26" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1355.389410893442" y="402.2177344245948"/>
                    <End x="1282" y="771"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_233" name="ReactionGlyph_36" reaction="Reaction_36">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1629.362617338236" y="513.1787942509392"/>
                <End x="1631.952503487627" y="498.4040695586415"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_234" name="SpeciesReferenceGlyph_108" metaboliteGlyph="Layout_30" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1629.362617338236" y="513.1787942509392"/>
                    <End x="1618" y="578"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_235" name="SpeciesReferenceGlyph_109" metaboliteGlyph="Layout_45" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.952503487627" y="498.4040695586415"/>
                    <End x="1600" y="525"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_236" name="SpeciesReferenceGlyph_110" metaboliteGlyph="Layout_21" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.952503487627" y="498.4040695586415"/>
                    <End x="932.25" y="721.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_237" name="ReactionGlyph_37">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="782.7595969770849" y="1104.428879634638"/>
                <End x="767.7595969770849" y="1104.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_238" name="SpeciesReferenceGlyph_111" metaboliteGlyph="Layout_53" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="782.7595969770849" y="1104.428879634638"/>
                    <End x="811.2595969770849" y="1104.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_239" name="SpeciesReferenceGlyph_112" metaboliteGlyph="Layout_50" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="767.7595969770849" y="1104.428879634638"/>
                    <End x="739.2595969770849" y="1104.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_240" name="SpeciesReferenceGlyph_113" metaboliteGlyph="Layout_51" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="902.0095969770849" y="1030.678879634638"/>
                    <End x="928.109366613873" y="1031.717820858397"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="928.109366613873" y="1031.717820858397"/>
                    <End x="925.6440806893369" y="1093.649519445147"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="925.6440806893369" y="1093.649519445147"/>
                    <End x="783.6127756118017" y="1087.995746252398"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="783.6127756118017" y="1087.995746252398"/>
                    <End x="782.7595969770849" y="1109.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_241" name="SpeciesReferenceGlyph_114" metaboliteGlyph="Layout_80" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="119" y="840.5"/>
                    <End x="110.3654342595634" y="948.7422404489374"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="110.3654342595634" y="948.7422404489374"/>
                    <End x="791.2450008514992" y="1003.056520665925"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="791.2450008514992" y="1003.056520665925"/>
                    <End x="782.7595969770849" y="1109.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_242" name="ReactionGlyph_38">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="784.7595969770849" y="1202.428879634638"/>
                <End x="769.7595969770849" y="1202.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_243" name="SpeciesReferenceGlyph_115" metaboliteGlyph="Layout_52" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="784.7595969770849" y="1202.428879634638"/>
                    <End x="813.2595969770849" y="1202.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_244" name="SpeciesReferenceGlyph_116" metaboliteGlyph="Layout_49" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="769.7595969770849" y="1202.428879634638"/>
                    <End x="741.2595969770849" y="1202.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_245" name="SpeciesReferenceGlyph_117" metaboliteGlyph="Layout_51" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="902.0095969770849" y="1030.678879634638"/>
                    <End x="952.4317278560193" y="1041.579140124076"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="952.4317278560193" y="1041.579140124076"/>
                    <End x="908.8350738875392" y="1243.247365797418"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="908.8350738875392" y="1243.247365797418"/>
                    <End x="782.9017022498986" y="1216.023078936961"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="782.9017022498986" y="1216.023078936961"/>
                    <End x="784.7595969770849" y="1207.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_246" name="SpeciesReferenceGlyph_118" metaboliteGlyph="Layout_80" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="119" y="840.5"/>
                    <End x="90.22323398803003" y="1126.215427245889"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="90.22323398803003" y="1126.215427245889"/>
                    <End x="785.8823902121583" y="1196.281019978191"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="785.8823902121583" y="1196.281019978191"/>
                    <End x="784.7595969770849" y="1207.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_247" name="ReactionGlyph_39" reaction="Reaction_39">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="553.2040414215297" y="1114.428879634638"/>
                <End x="558.475642669959" y="1128.472035272797"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_248" name="SpeciesReferenceGlyph_119" metaboliteGlyph="Layout_84" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="553.2040414215297" y="1114.428879634638"/>
                    <End x="607.2595969770849" y="1258.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_249" name="SpeciesReferenceGlyph_120" metaboliteGlyph="Layout_47" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="553.2040414215297" y="1114.428879634638"/>
                    <End x="500.2595969770849" y="1114.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_250" name="SpeciesReferenceGlyph_121" metaboliteGlyph="Layout_50" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="553.2040414215297" y="1114.428879634638"/>
                    <End x="659.2595969770849" y="1114.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_251" name="ReactionGlyph_40" reaction="Reaction_40">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="606.9010812291921" y="1309.430214272961"/>
                <End x="606.6181127249778" y="1324.427544996314"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_252" name="SpeciesReferenceGlyph_122" metaboliteGlyph="Layout_84" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="606.9010812291921" y="1309.430214272961"/>
                    <End x="607.2595969770849" y="1290.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_253" name="SpeciesReferenceGlyph_123" metaboliteGlyph="Layout_86" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="606.6181127249778" y="1324.427544996314"/>
                    <End x="606.2595969770849" y="1343.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_254" name="SpeciesReferenceGlyph_124" metaboliteGlyph="Layout_49" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="701.2595969770849" y="1232.428879634638"/>
                    <End x="706.4413905116346" y="1315.29403710323"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="706.4413905116346" y="1315.29403710323"/>
                    <End x="618.0776700639924" y="1320.819671390209"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_255" name="ReactionGlyph_41" reaction="Reaction_41">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="753.5469671775197" y="1337.668133438067"/>
                <End x="746.3590310793384" y="1350.833754374751"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_256" name="SpeciesReferenceGlyph_125" metaboliteGlyph="Layout_87" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="753.5469671775197" y="1337.668133438067"/>
                    <End x="695.2595969770849" y="1444.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_257" name="SpeciesReferenceGlyph_126" metaboliteGlyph="Layout_86" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="753.5469671775197" y="1337.668133438067"/>
                    <End x="606.2595969770849" y="1376.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_258" name="SpeciesReferenceGlyph_127" metaboliteGlyph="Layout_85" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="753.5469671775197" y="1337.668133438067"/>
                    <End x="779.2595969770849" y="1376.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_259" name="ReactionGlyph_42" reaction="Reaction_42">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="593.537840866738" y="1508.09024060569"/>
                <End x="579.1000063531167" y="1512.158278776268"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_260" name="SpeciesReferenceGlyph_128" metaboliteGlyph="Layout_87" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="593.537840866738" y="1508.09024060569"/>
                    <End x="695.2595969770849" y="1479.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_261" name="SpeciesReferenceGlyph_129" metaboliteGlyph="Layout_88" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="579.1000063531167" y="1512.158278776268"/>
                    <End x="577.2595969770849" y="1532.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_262" name="SpeciesReferenceGlyph_130" metaboliteGlyph="Layout_50" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="579.1000063531167" y="1512.158278776268"/>
                    <End x="659.2595969770849" y="1124.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_263" name="ReactionGlyph_43" reaction="Reaction_43">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="460.2595969770849" y="1278.428879634638"/>
                <End x="460.2595969770849" y="1263.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_264" name="SpeciesReferenceGlyph_131" metaboliteGlyph="Layout_56" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="460.2595969770849" y="1278.428879634638"/>
                    <End x="460.2595969770849" y="1407.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_265" name="SpeciesReferenceGlyph_132" metaboliteGlyph="Layout_47" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="460.2595969770849" y="1263.428879634638"/>
                    <End x="460.2595969770849" y="1134.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_266" name="ReactionGlyph_44" reaction="Reaction_44">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="646.193698339002" y="1439.570869862514"/>
                <End x="653.2268118474281" y="1426.321895774774"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_267" name="SpeciesReferenceGlyph_133" metaboliteGlyph="Layout_88" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="646.193698339002" y="1439.570869862514"/>
                    <End x="577.2595969770849" y="1569.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_268" name="SpeciesReferenceGlyph_134" metaboliteGlyph="Layout_56" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653.2268118474281" y="1426.321895774774"/>
                    <End x="460.2595969770849" y="1447.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_269" name="SpeciesReferenceGlyph_135" metaboliteGlyph="Layout_85" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="653.2268118474281" y="1426.321895774774"/>
                    <End x="828.2595969770849" y="1358.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_270" name="ReactionGlyph_45" reaction="Reaction_45">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1188.759411008997" y="1786.376064042864"/>
                <End x="1173.759782945173" y="1786.481695226412"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_271" name="SpeciesReferenceGlyph_136" metaboliteGlyph="Layout_68" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1188.759411008997" y="1786.376064042864"/>
                    <End x="1323.259596977085" y="1785.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_272" name="SpeciesReferenceGlyph_137" metaboliteGlyph="Layout_67" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1173.759782945173" y="1786.481695226412"/>
                    <End x="1039.259596977085" y="1787.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_273" name="ReactionGlyph_46" reaction="Reaction_46">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1471.759596977085" y="1785.428879634638"/>
                <End x="1456.759596977085" y="1785.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_274" name="SpeciesReferenceGlyph_138" metaboliteGlyph="Layout_71" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1471.759596977085" y="1785.428879634638"/>
                    <End x="1515.259596977085" y="1785.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_275" name="SpeciesReferenceGlyph_139" metaboliteGlyph="Layout_68" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1456.759596977085" y="1785.428879634638"/>
                    <End x="1413.259596977085" y="1785.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_276" name="SpeciesReferenceGlyph_140" metaboliteGlyph="Layout_70" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1518.259596977085" y="1662.428879634638"/>
                    <End x="1523.922584154411" y="1719.479465507259"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1523.922584154411" y="1719.479465507259"/>
                    <End x="1466.277581551034" y="1725.201456010716"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1466.277581551034" y="1725.201456010716"/>
                    <End x="1471.759596977085" y="1780.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_277" name="SpeciesReferenceGlyph_141" metaboliteGlyph="Layout_72" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1585.259596977085" y="1388.428879634638"/>
                    <End x="1596.755553465548" y="1740.791257305099"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1596.755553465548" y="1740.791257305099"/>
                    <End x="1470.600685671177" y="1744.907107812636"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1470.600685671177" y="1744.907107812636"/>
                    <End x="1471.759596977085" y="1780.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_278" name="ReactionGlyph_47" reaction="Reaction_47">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1057.759596977085" y="1535.428879634638"/>
                <End x="1072.759596977085" y="1535.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_279" name="SpeciesReferenceGlyph_142" metaboliteGlyph="Layout_61" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1057.759596977085" y="1535.428879634638"/>
                    <End x="984.2595969770849" y="1535.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_280" name="SpeciesReferenceGlyph_143" metaboliteGlyph="Layout_60" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1072.759596977085" y="1535.428879634638"/>
                    <End x="1146.259596977085" y="1535.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_281" name="SpeciesReferenceGlyph_144" metaboliteGlyph="Layout_88" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="612.2595969770849" y="1569.428879634638"/>
                    <End x="612.2790579694291" y="1588.872337260909"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="612.2790579694291" y="1588.872337260909"/>
                    <End x="1065.307630276484" y="1588.418900133275"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1065.307630276484" y="1588.418900133275"/>
                    <End x="1065.259596977085" y="1540.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_282" name="ReactionGlyph_48" reaction="Reaction_48">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1072.759596977085" y="1515.428879634638"/>
                <End x="1057.759596977085" y="1515.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_283" name="SpeciesReferenceGlyph_145" metaboliteGlyph="Layout_60" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1072.759596977085" y="1515.428879634638"/>
                    <End x="1146.259596977085" y="1515.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_284" name="SpeciesReferenceGlyph_146" metaboliteGlyph="Layout_61" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1057.759596977085" y="1515.428879634638"/>
                    <End x="984.2595969770849" y="1515.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_285" name="ReactionGlyph_49" reaction="Reaction_49">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1054.759596977085" y="1394.428879634638"/>
                <End x="1069.759596977085" y="1394.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_286" name="SpeciesReferenceGlyph_147" metaboliteGlyph="Layout_55" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1054.759596977085" y="1394.428879634638"/>
                    <End x="980.2595969770849" y="1394.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_287" name="SpeciesReferenceGlyph_148" metaboliteGlyph="Layout_59" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1069.759596977085" y="1394.428879634638"/>
                    <End x="1144.259596977085" y="1394.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_288" name="SpeciesReferenceGlyph_149" metaboliteGlyph="Layout_60" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1186.259596977085" y="1505.428879634638"/>
                    <End x="1186.262113102665" y="1451.431728956007"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1186.262113102665" y="1451.431728956007"/>
                    <End x="1062.257174049971" y="1451.425950651128"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1062.257174049971" y="1451.425950651128"/>
                    <End x="1062.259596977085" y="1399.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_289" name="ReactionGlyph_50" reaction="Reaction_50">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1069.759596977085" y="1374.428879634638"/>
                <End x="1054.759596977085" y="1374.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_290" name="SpeciesReferenceGlyph_150" metaboliteGlyph="Layout_59" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1069.759596977085" y="1374.428879634638"/>
                    <End x="1144.259596977085" y="1374.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_291" name="SpeciesReferenceGlyph_151" metaboliteGlyph="Layout_55" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1054.759596977085" y="1374.428879634638"/>
                    <End x="980.2595969770849" y="1374.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_292" name="ReactionGlyph_51" reaction="Reaction_51">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1091.759596977085" y="1311.428879634638"/>
                <End x="1106.759596977085" y="1311.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_293" name="SpeciesReferenceGlyph_152" metaboliteGlyph="Layout_54" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1091.759596977085" y="1311.428879634638"/>
                    <End x="1059.259596977085" y="1311.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_294" name="SpeciesReferenceGlyph_153" metaboliteGlyph="Layout_58" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1106.759596977085" y="1311.428879634638"/>
                    <End x="1139.259596977085" y="1311.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_295" name="SpeciesReferenceGlyph_154" metaboliteGlyph="Layout_59" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.259596977085" y="1364.428879634638"/>
                    <End x="1184.262110749757" y="1336.249428836662"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.262110749757" y="1336.249428836662"/>
                    <End x="1099.257829544013" y="1336.241845955057"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1099.257829544013" y="1336.241845955057"/>
                    <End x="1099.259596977085" y="1316.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_296" name="ReactionGlyph_52" reaction="Reaction_52">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1106.759596977085" y="1291.428879634638"/>
                <End x="1091.759596977085" y="1291.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_297" name="SpeciesReferenceGlyph_155" metaboliteGlyph="Layout_58" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1106.759596977085" y="1291.428879634638"/>
                    <End x="1139.259596977085" y="1291.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_298" name="SpeciesReferenceGlyph_156" metaboliteGlyph="Layout_54" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1091.759596977085" y="1291.428879634638"/>
                    <End x="1059.259596977085" y="1291.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_299" name="ReactionGlyph_53" reaction="Reaction_53">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1219.259596977085" y="1183.428879634638"/>
                <End x="1234.259596977085" y="1183.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_300" name="SpeciesReferenceGlyph_157" metaboliteGlyph="Layout_57" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1219.259596977085" y="1183.428879634638"/>
                    <End x="1184.259596977085" y="1183.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_301" name="SpeciesReferenceGlyph_158" metaboliteGlyph="Layout_62" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1234.259596977085" y="1183.428879634638"/>
                    <End x="1269.259596977085" y="1183.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_302" name="SpeciesReferenceGlyph_159" metaboliteGlyph="Layout_63" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1333.259596977085" y="1281.428879634638"/>
                    <End x="1333.262127428227" y="1233.931670182513"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1333.262127428227" y="1233.931670182513"/>
                    <End x="1226.757173082471" y="1233.925996047412"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1226.757173082471" y="1233.925996047412"/>
                    <End x="1226.759596977085" y="1188.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_303" name="ReactionGlyph_54" reaction="Reaction_54">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1234.259596977085" y="1163.428879634638"/>
                <End x="1219.259596977085" y="1163.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_304" name="SpeciesReferenceGlyph_160" metaboliteGlyph="Layout_62" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1234.259596977085" y="1163.428879634638"/>
                    <End x="1269.259596977085" y="1163.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_305" name="SpeciesReferenceGlyph_161" metaboliteGlyph="Layout_57" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1219.259596977085" y="1163.428879634638"/>
                    <End x="1184.259596977085" y="1163.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_306" name="ReactionGlyph_55" reaction="Reaction_55">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="989.241426635738" y="1824.826724789782"/>
                <End x="986.2777673184319" y="1839.531034479493"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_307" name="SpeciesReferenceGlyph_162" metaboliteGlyph="Layout_67" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="989.241426635738" y="1824.826724789782"/>
                    <End x="994.2595969770849" y="1799.928879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_308" name="SpeciesReferenceGlyph_163" metaboliteGlyph="Layout_73" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="986.2777673184319" y="1839.531034479493"/>
                    <End x="981.2595969770849" y="1864.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_309" name="ReactionGlyph_56" reaction="Reaction_56">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="859.5803291329336" y="766.6235167266207"/>
                <End x="874.5801574362798" y="766.5517471639089"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_310" name="SpeciesReferenceGlyph_164" metaboliteGlyph="Layout_66" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="859.5803291329336" y="766.6235167266207"/>
                    <End x="691.2595969770849" y="767.4288796346377"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_311" name="SpeciesReferenceGlyph_165" metaboliteGlyph="Layout_23" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="874.5801574362798" y="766.5517471639089"/>
                    <End x="1042.900889592128" y="765.7463842558918"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1042.900889592128" y="765.7463842558918"/>
                    <End x="1042.25" y="629.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_312" name="SpeciesReferenceGlyph_166" metaboliteGlyph="Layout_67" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="949.2595969770849" y="1787.428879634638"/>
                    <End x="851.9848662972771" y="1785.997721146786"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="851.9848662972771" y="1785.997721146786"/>
                    <End x="867.0562771728727" y="761.6056315681607"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_313" name="ReactionGlyph_57" reaction="Reaction_57">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="749.0104708992505" y="1031.793370109109"/>
                <End x="764.0087230549193" y="1031.564389160167"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_314" name="SpeciesReferenceGlyph_167" metaboliteGlyph="Layout_48" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="749.0104708992505" y="1031.793370109109"/>
                    <End x="691.0095969770849" y="1032.678879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_315" name="SpeciesReferenceGlyph_168" metaboliteGlyph="Layout_51" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="764.0087230549193" y="1031.564389160167"/>
                    <End x="822.0095969770849" y="1030.678879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_316" name="ReactionGlyph_58" reaction="Reaction_58">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1263.759596977085" y="1291.428879634638"/>
                <End x="1248.759596977085" y="1291.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_317" name="SpeciesReferenceGlyph_169" metaboliteGlyph="Layout_63" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1263.759596977085" y="1291.428879634638"/>
                    <End x="1293.259596977085" y="1291.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_318" name="SpeciesReferenceGlyph_170" metaboliteGlyph="Layout_58" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1248.759596977085" y="1291.428879634638"/>
                    <End x="1219.259596977085" y="1291.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_319" name="ReactionGlyph_59" reaction="Reaction_59">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1248.759596977085" y="1311.428879634638"/>
                <End x="1263.759596977085" y="1311.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_320" name="SpeciesReferenceGlyph_171" metaboliteGlyph="Layout_58" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1248.759596977085" y="1311.428879634638"/>
                    <End x="1219.259596977085" y="1311.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_321" name="SpeciesReferenceGlyph_172" metaboliteGlyph="Layout_63" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1263.759596977085" y="1311.428879634638"/>
                    <End x="1293.259596977085" y="1311.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_322" name="SpeciesReferenceGlyph_173" metaboliteGlyph="Layout_59" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.259596977085" y="1364.428879634638"/>
                    <End x="1184.256911252498" y="1336.499134416135"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1184.256911252498" y="1336.499134416135"/>
                    <End x="1256.261526267182" y="1336.492210451617"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1256.261526267182" y="1336.492210451617"/>
                    <End x="1256.259596977085" y="1316.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_323" name="ReactionGlyph_60" reaction="Reaction_60">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1399.259596977085" y="1163.428879634638"/>
                <End x="1384.259596977085" y="1163.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_324" name="SpeciesReferenceGlyph_174" metaboliteGlyph="Layout_69" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1399.259596977085" y="1163.428879634638"/>
                    <End x="1434.259596977085" y="1163.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_325" name="SpeciesReferenceGlyph_175" metaboliteGlyph="Layout_62" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1384.259596977085" y="1163.428879634638"/>
                    <End x="1349.259596977085" y="1163.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_326" name="ReactionGlyph_61" reaction="Reaction_61">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1384.259596977085" y="1183.428879634638"/>
                <End x="1399.259596977085" y="1183.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_327" name="SpeciesReferenceGlyph_176" metaboliteGlyph="Layout_62" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1384.259596977085" y="1183.428879634638"/>
                    <End x="1349.259596977085" y="1183.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_328" name="SpeciesReferenceGlyph_177" metaboliteGlyph="Layout_69" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1399.259596977085" y="1183.428879634638"/>
                    <End x="1434.259596977085" y="1183.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_329" name="SpeciesReferenceGlyph_178" metaboliteGlyph="Layout_63" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1333.259596977085" y="1281.428879634638"/>
                    <End x="1333.257294907571" y="1233.930220327901"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1333.257294907571" y="1233.930220327901"/>
                    <End x="1391.761802107152" y="1233.927384849081"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1391.761802107152" y="1233.927384849081"/>
                    <End x="1391.759596977085" y="1188.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_330" name="ReactionGlyph_62" reaction="Reaction_62">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1416.176263643752" y="1632.428879634638"/>
                <End x="1428.592930310418" y="1632.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_331" name="SpeciesReferenceGlyph_179" metaboliteGlyph="Layout_65" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1416.176263643752" y="1632.428879634638"/>
                    <End x="1403.759596977085" y="1632.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_332" name="SpeciesReferenceGlyph_180" metaboliteGlyph="Layout_70" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1428.592930310418" y="1632.428879634638"/>
                    <End x="1441.009596977085" y="1632.428879634638"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1441.009596977085" y="1632.428879634638"/>
                    <End x="1441.009596977085" y="1632.428879634638"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1441.009596977085" y="1632.428879634638"/>
                    <End x="1478.259596977085" y="1632.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_333" name="SpeciesReferenceGlyph_181" metaboliteGlyph="Layout_69" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1454.259596977085" y="1193.428879634638"/>
                    <End x="1454.259963921964" y="1411.428875725865"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1454.259963921964" y="1411.428875725865"/>
                    <End x="1422.38423339875" y="1411.42892938016"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1422.38423339875" y="1411.42892938016"/>
                    <End x="1422.384596977085" y="1627.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_334" name="ReactionGlyph_63" reaction="Reaction_63">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1448.509596977085" y="1652.428879634638"/>
                <End x="1433.509596977085" y="1652.428879634638"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_335" name="SpeciesReferenceGlyph_182" metaboliteGlyph="Layout_70" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1448.509596977085" y="1652.428879634638"/>
                    <End x="1478.259596977085" y="1652.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_336" name="SpeciesReferenceGlyph_183" metaboliteGlyph="Layout_65" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1433.509596977085" y="1652.428879634638"/>
                    <End x="1403.759596977085" y="1652.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_337" name="ReactionGlyph_64" reaction="Reaction_64">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1445.536212614359" y="1368.261846975514"/>
                <End x="1460.535703692608" y="1368.138285680813"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_338" name="SpeciesReferenceGlyph_184" metaboliteGlyph="Layout_64" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1445.536212614359" y="1368.261846975514"/>
                    <End x="1425.259596977085" y="1368.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_339" name="SpeciesReferenceGlyph_185" metaboliteGlyph="Layout_72" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1460.535703692608" y="1368.138285680813"/>
                    <End x="1480.812319329882" y="1367.971253021689"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1480.812319329882" y="1367.971253021689"/>
                    <End x="1480.817419094845" y="1368.794980924998"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1480.817419094845" y="1368.794980924998"/>
                    <End x="1525.259596977085" y="1368.428879634638"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_340" name="SpeciesReferenceGlyph_186" metaboliteGlyph="Layout_51" role="undefinedRole">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="902.0095969770849" y="1030.678879634638"/>
                    <End x="1450.823049459839" y="1027.13289194698"/>
                  </CurveSegment>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1450.823049459839" y="1027.13289194698"/>
                    <End x="1452.994643824812" y="1363.231126292422"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_341" name="ReactionGlyph_65" reaction="Reaction_65">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1042.25" y="543.210552944251"/>
                <End x="1042.25" y="528.210552944251"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_342" name="SpeciesReferenceGlyph_187" metaboliteGlyph="Layout_23" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1042.25" y="543.210552944251"/>
                    <End x="1042.25" y="589.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_343" name="SpeciesReferenceGlyph_188" metaboliteGlyph="Layout_74" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1042.25" y="528.210552944251"/>
                    <End x="1042.25" y="481.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_344" name="ReactionGlyph_66" reaction="Reaction_66">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1107.758910383807" y="732.6923798071418"/>
                <End x="1114.541249999999" y="719.3132965302267"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_345" name="SpeciesReferenceGlyph_189" metaboliteGlyph="Layout_19" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1107.758910383807" y="732.6923798071418"/>
                    <End x="1089.5" y="768.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_346" name="SpeciesReferenceGlyph_190" metaboliteGlyph="Layout_75" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1114.541249999999" y="719.3132965302267"/>
                    <End x="1114" y="709"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_347" name="SpeciesReferenceGlyph_191" metaboliteGlyph="Layout_20" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1114.541249999999" y="719.3132965302267"/>
                    <End x="968.25" y="773.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_348" name="ReactionGlyph_67" reaction="Reaction_67">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1234.115049674889" y="612.6277445481539"/>
                <End x="1247.135490570769" y="605.1800523635314"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_349" name="SpeciesReferenceGlyph_192" metaboliteGlyph="Layout_22" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1234.115049674889" y="612.6277445481539"/>
                    <End x="1204.25" y="629.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_350" name="SpeciesReferenceGlyph_193" metaboliteGlyph="Layout_75" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1247.135490570769" y="605.1800523635314"/>
                    <End x="1114" y="679"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_351" name="SpeciesReferenceGlyph_194" metaboliteGlyph="Layout_21" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1247.135490570769" y="605.1800523635314"/>
                    <End x="972.25" y="681.710552944251"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_352" name="ReactionGlyph_68" reaction="Reaction_68">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1543.495970933637" y="411.0347027175185"/>
                <End x="1556.853799892395" y="404.210597977073"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_353" name="SpeciesReferenceGlyph_195" metaboliteGlyph="Layout_46" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1543.495970933637" y="411.0347027175185"/>
                    <End x="1408.5" y="480"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_354" name="SpeciesReferenceGlyph_196" metaboliteGlyph="Layout_76" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1556.853799892395" y="404.210597977073"/>
                    <End x="1526" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_355" name="SpeciesReferenceGlyph_197" metaboliteGlyph="Layout_77" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1556.853799892395" y="404.210597977073"/>
                    <End x="1616" y="443"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_356" name="ReactionGlyph_69" reaction="Reaction_69">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1631.919590428995" y="504.7390920774716"/>
                <End x="1643.955801104972" y="513.6906077348061"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_357" name="SpeciesReferenceGlyph_198" metaboliteGlyph="Layout_45" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.919590428995" y="504.7390920774716"/>
                    <End x="1600" y="481"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_358" name="SpeciesReferenceGlyph_199" metaboliteGlyph="Layout_77" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1643.955801104972" y="513.6906077348061"/>
                    <End x="1601" y="428"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_359" name="SpeciesReferenceGlyph_200" metaboliteGlyph="Layout_76" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1643.955801104972" y="513.6906077348061"/>
                    <End x="1546" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_360" name="ReactionGlyph_70" reaction="Reaction_70">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1620.025679195564" y="428.6043465236992"/>
                <End x="1631.543783110003" y="418.9953256466185"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_361" name="SpeciesReferenceGlyph_201" metaboliteGlyph="Layout_29" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1620.025679195564" y="428.6043465236992"/>
                    <End x="1439.75" y="579"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_362" name="SpeciesReferenceGlyph_202" metaboliteGlyph="Layout_76" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.543783110003" y="418.9953256466185"/>
                    <End x="1506" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_363" name="SpeciesReferenceGlyph_203" metaboliteGlyph="Layout_78" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1631.543783110003" y="418.9953256466185"/>
                    <End x="1728" y="554"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_364" name="ReactionGlyph_71" reaction="Reaction_71">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1548.118452021653" y="424.9090637682244"/>
                <End x="1545.430800611933" y="410.1518103008671"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_365" name="SpeciesReferenceGlyph_204" metaboliteGlyph="Layout_30" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1548.118452021653" y="424.9090637682244"/>
                    <End x="1576" y="578"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_366" name="SpeciesReferenceGlyph_205" metaboliteGlyph="Layout_76" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1545.430800611933" y="410.1518103008671"/>
                    <End x="1486" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_367" name="SpeciesReferenceGlyph_206" metaboliteGlyph="Layout_78" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1545.430800611933" y="410.1518103008671"/>
                    <End x="1728" y="564"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_368" name="ReactionGlyph_72" reaction="Reaction_72">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1585.547653606165" y="426.8628668083527"/>
                <End x="1594.917753404909" y="415.1495739424849"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_369" name="SpeciesReferenceGlyph_207" metaboliteGlyph="Layout_27" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1585.547653606165" y="426.8628668083527"/>
                    <End x="1374.25" y="691"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_370" name="SpeciesReferenceGlyph_208" metaboliteGlyph="Layout_76" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1594.917753404909" y="415.1495739424849"/>
                    <End x="1526" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_371" name="SpeciesReferenceGlyph_209" metaboliteGlyph="Layout_79" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1594.917753404909" y="415.1495739424849"/>
                    <End x="1729" y="664"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
        <ReactionGlyph key="Layout_372" name="ReactionGlyph_73" reaction="Reaction_73">
          <Curve>
            <ListOfCurveSegments>
              <CurveSegment xsi:type="LineSegment">
                <Start x="1551.77736919526" y="577.1507564610167"/>
                <End x="1553.500000000003" y="562.2499999999993"/>
              </CurveSegment>
            </ListOfCurveSegments>
          </Curve>
          <ListOfMetaboliteReferenceGlyphs>
            <MetaboliteReferenceGlyph key="Layout_373" name="SpeciesReferenceGlyph_210" metaboliteGlyph="Layout_28" role="substrate">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1551.77736919526" y="577.1507564610167"/>
                    <End x="1538.5" y="692"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_374" name="SpeciesReferenceGlyph_211" metaboliteGlyph="Layout_76" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1553.500000000003" y="562.2499999999993"/>
                    <End x="1526" y="434"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
            <MetaboliteReferenceGlyph key="Layout_375" name="SpeciesReferenceGlyph_212" metaboliteGlyph="Layout_79" role="product">
              <Curve>
                <ListOfCurveSegments>
                  <CurveSegment xsi:type="LineSegment">
                    <Start x="1553.500000000003" y="562.2499999999993"/>
                    <End x="1729" y="674"/>
                  </CurveSegment>
                </ListOfCurveSegments>
              </Curve>
            </MetaboliteReferenceGlyph>
          </ListOfMetaboliteReferenceGlyphs>
        </ReactionGlyph>
      </ListOfReactionGlyphs>
      <ListOfTextGlyphs>
        <TextGlyph key="Layout_376" name="TextGlyph" graphicalObject="Layout_3" text="Cell">
          <BoundingBox>
            <Position x="881" y="825.5"/>
            <Dimensions width="1003" height="1150.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_377" name="TextGlyph_1" graphicalObject="Layout_4" text="ER">
          <BoundingBox>
            <Position x="748.5" y="961.5"/>
            <Dimensions width="-184.5" height="-400.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_378" name="TextGlyph_2" graphicalObject="Layout_5" text="nucleus">
          <BoundingBox>
            <Position x="2763" y="3375.5"/>
            <Dimensions width="-1050" height="-1515.5"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_379" name="TextGlyph_3" graphicalObject="Layout_6" text="Ca_ex">
          <BoundingBox>
            <Position x="205" y="662"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_380" name="TextGlyph_4" graphicalObject="Layout_7" text="Ca_s">
          <BoundingBox>
            <Position x="367" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_381" name="TextGlyph_5" graphicalObject="Layout_8" text="Ca_c">
          <BoundingBox>
            <Position x="613" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_382" name="TextGlyph_6" graphicalObject="Layout_25" text="Ca_c">
          <BoundingBox>
            <Position x="798.75" y="591.210552944251"/>
            <Dimensions width="37" height="34"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_383" name="TextGlyph_7" graphicalObject="Layout_9" text="Ca_B">
          <BoundingBox>
            <Position x="748" y="477"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_384" name="TextGlyph_8" graphicalObject="Layout_11" text="IP3">
          <BoundingBox>
            <Position x="749" y="339"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_385" name="TextGlyph_9" graphicalObject="Layout_17" text="TimeT">
          <BoundingBox>
            <Position x="382.5" y="337.5"/>
            <Dimensions width="54" height="43"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_386" name="TextGlyph_10" graphicalObject="Layout_34" text="PDK1">
          <BoundingBox>
            <Position x="1322.375" y="328.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_387" name="TextGlyph_11" graphicalObject="Layout_32" text="PP2A">
          <BoundingBox>
            <Position x="1188.375" y="328.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_388" name="TextGlyph_12" graphicalObject="Layout_31" text="AKT">
          <BoundingBox>
            <Position x="1431.375" y="286.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_389" name="TextGlyph_13" graphicalObject="Layout_33" text="PI3P">
          <BoundingBox>
            <Position x="1505.375" y="194.7078593287326"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_390" name="TextGlyph_14" graphicalObject="Layout_35" text="PTEN">
          <BoundingBox>
            <Position x="1554.375" y="286.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_391" name="TextGlyph_15" graphicalObject="Layout_36" text="PIP2">
          <BoundingBox>
            <Position x="1612.375" y="194.7078593287326"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_392" name="TextGlyph_16" graphicalObject="Layout_37" text="p-PI3K">
          <BoundingBox>
            <Position x="1699.375" y="284.7078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_393" name="TextGlyph_17" graphicalObject="Layout_39" text="PI3K">
          <BoundingBox>
            <Position x="1848.375" y="284.7078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_394" name="TextGlyph_18" graphicalObject="Layout_40" text="Time">
          <BoundingBox>
            <Position x="1859.125" y="363.4578593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_395" name="TextGlyph_19" graphicalObject="Layout_41" text="PDK2">
          <BoundingBox>
            <Position x="1189.375" y="409.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_396" name="TextGlyph_20" graphicalObject="Layout_42" text="PDK1_cyto">
          <BoundingBox>
            <Position x="1322.375" y="409.2078593287326"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_397" name="TextGlyph_21" graphicalObject="Layout_81" text="p-AKT:PI3P">
          <BoundingBox>
            <Position x="1198.375" y="171.2078593287326"/>
            <Dimensions width="83" height="69"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_398" name="TextGlyph_22" graphicalObject="Layout_83" text="pp-AKT:PI3P">
          <BoundingBox>
            <Position x="1085.375" y="484.2078593287326"/>
            <Dimensions width="95" height="63"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_399" name="TextGlyph_23" graphicalObject="Layout_82" text="AKT:PI3P">
          <BoundingBox>
            <Position x="1329.375" y="171.2078593287326"/>
            <Dimensions width="85" height="68"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_400" name="TextGlyph_24" graphicalObject="Layout_51" text="Time">
          <BoundingBox>
            <Position x="822.0095969770849" y="1010.678879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_401" name="TextGlyph_25" graphicalObject="Layout_65" text="AP-1">
          <BoundingBox>
            <Position x="1323.759596977085" y="1622.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_402" name="TextGlyph_26" graphicalObject="Layout_63" text="pp-JNKK">
          <BoundingBox>
            <Position x="1293.259596977085" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_403" name="TextGlyph_27" graphicalObject="Layout_69" text="pp-JNK">
          <BoundingBox>
            <Position x="1434.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_404" name="TextGlyph_28" graphicalObject="Layout_19" text="eNOS-CaM-Ca4">
          <BoundingBox>
            <Position x="1009.25" y="768.710552944251"/>
            <Dimensions width="107" height="44"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_405" name="TextGlyph_29" graphicalObject="Layout_20" text="CaM-Ca4">
          <BoundingBox>
            <Position x="888.25" y="773.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_406" name="TextGlyph_30" graphicalObject="Layout_79" text="CaM-Ca4">
          <BoundingBox>
            <Position x="1729" y="644"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_407" name="TextGlyph_31" graphicalObject="Layout_21" text="CaM-Ca2">
          <BoundingBox>
            <Position x="892.25" y="681.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_408" name="TextGlyph_32" graphicalObject="Layout_78" text="CaM-Ca2">
          <BoundingBox>
            <Position x="1728" y="524"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_409" name="TextGlyph_33" graphicalObject="Layout_72" text="KLF2">
          <BoundingBox>
            <Position x="1525.259596977085" y="1348.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_410" name="TextGlyph_34" graphicalObject="Layout_22" text="eNOS-CaM-Ca2">
          <BoundingBox>
            <Position x="1179.25" y="589.710552944251"/>
            <Dimensions width="100" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_411" name="TextGlyph_35" graphicalObject="Layout_23" text="eNOS-Cav-1">
          <BoundingBox>
            <Position x="1022.25" y="589.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_412" name="TextGlyph_36" graphicalObject="Layout_24" text="Calmodulin">
          <BoundingBox>
            <Position x="889.25" y="587.710552944251"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_413" name="TextGlyph_37" graphicalObject="Layout_26" text="Hsp90">
          <BoundingBox>
            <Position x="1242" y="771"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_414" name="TextGlyph_38" graphicalObject="Layout_76" text="Hsp90">
          <BoundingBox>
            <Position x="1486" y="394"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_415" name="TextGlyph_39" graphicalObject="Layout_27" text="Hsp90-eNOS-CaM-Ca4">
          <BoundingBox>
            <Position x="1258" y="691"/>
            <Dimensions width="155" height="38"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_416" name="TextGlyph_40" graphicalObject="Layout_28" text="Hsp90-p-eNOS-CaM-Ca4">
          <BoundingBox>
            <Position x="1496" y="692"/>
            <Dimensions width="170" height="37"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_417" name="TextGlyph_41" graphicalObject="Layout_29" text="Hsp90-eNOS-CaM-Ca2">
          <BoundingBox>
            <Position x="1325" y="579"/>
            <Dimensions width="153" height="39"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_418" name="TextGlyph_42" graphicalObject="Layout_30" text="Hsp90-p-eNOS-CaM-Ca2">
          <BoundingBox>
            <Position x="1534" y="578"/>
            <Dimensions width="168" height="41"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_419" name="TextGlyph_43" graphicalObject="Layout_43" text="L-Arg">
          <BoundingBox>
            <Position x="1380" y="839.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_420" name="TextGlyph_44" graphicalObject="Layout_44" text="NO">
          <BoundingBox>
            <Position x="1592" y="839.5"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_421" name="TextGlyph_45" graphicalObject="Layout_45" text="Hsp90-p-eNOS">
          <BoundingBox>
            <Position x="1544" y="481"/>
            <Dimensions width="112" height="44"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_422" name="TextGlyph_46" graphicalObject="Layout_46" text="Hsp90-eNOS">
          <BoundingBox>
            <Position x="1362" y="480"/>
            <Dimensions width="93" height="45"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_423" name="TextGlyph_47" graphicalObject="Layout_47" text="Shc">
          <BoundingBox>
            <Position x="420.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_424" name="TextGlyph_48" graphicalObject="Layout_49" text="p-Src">
          <BoundingBox>
            <Position x="661.2595969770849" y="1192.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_425" name="TextGlyph_49" graphicalObject="Layout_50" text="p-FAK">
          <BoundingBox>
            <Position x="659.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_426" name="TextGlyph_50" graphicalObject="Layout_52" text="Src">
          <BoundingBox>
            <Position x="813.2595969770849" y="1192.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_427" name="TextGlyph_51" graphicalObject="Layout_53" text="FAK">
          <BoundingBox>
            <Position x="811.2595969770849" y="1094.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_428" name="TextGlyph_52" graphicalObject="Layout_54" text="JNKK">
          <BoundingBox>
            <Position x="979.2595969770849" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_429" name="TextGlyph_53" graphicalObject="Layout_55" text="MEKK1">
          <BoundingBox>
            <Position x="900.2595969770849" y="1364.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_430" name="TextGlyph_54" graphicalObject="Layout_56" text="p-Shc">
          <BoundingBox>
            <Position x="420.2595969770849" y="1407.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_431" name="TextGlyph_55" graphicalObject="Layout_57" text="JNK">
          <BoundingBox>
            <Position x="1104.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_432" name="TextGlyph_56" graphicalObject="Layout_58" text="p-JNKK">
          <BoundingBox>
            <Position x="1139.259596977085" y="1281.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_433" name="TextGlyph_57" graphicalObject="Layout_59" text="p-MEKK1">
          <BoundingBox>
            <Position x="1144.259596977085" y="1364.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_434" name="TextGlyph_58" graphicalObject="Layout_60" text="Ras:GTP">
          <BoundingBox>
            <Position x="1146.259596977085" y="1505.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_435" name="TextGlyph_59" graphicalObject="Layout_61" text="Ras:GDP">
          <BoundingBox>
            <Position x="904.2595969770849" y="1505.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_436" name="TextGlyph_60" graphicalObject="Layout_62" text="p-JNK">
          <BoundingBox>
            <Position x="1269.259596977085" y="1153.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_437" name="TextGlyph_61" graphicalObject="Layout_64" text="KLF2">
          <BoundingBox>
            <Position x="1335.259596977085" y="1355.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_438" name="TextGlyph_62" graphicalObject="Layout_67" text="eNOS">
          <BoundingBox>
            <Position x="949.2595969770849" y="1774.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_439" name="TextGlyph_63" graphicalObject="Layout_70" text="aAP-1">
          <BoundingBox>
            <Position x="1478.259596977085" y="1622.428879634638"/>
            <Dimensions width="80" height="40"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_440" name="TextGlyph_64" graphicalObject="Layout_71" text="eNOS">
          <BoundingBox>
            <Position x="1515.259596977085" y="1772.928879634638"/>
            <Dimensions width="70" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_441" name="TextGlyph_65" graphicalObject="Layout_84" text="p-FAK:Shc">
          <BoundingBox>
            <Position x="553.2595969770849" y="1258.428879634638"/>
            <Dimensions width="108" height="32"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_442" name="TextGlyph_66" graphicalObject="Layout_85" text="Grb2:Sos">
          <BoundingBox>
            <Position x="730.2595969770849" y="1340.428879634638"/>
            <Dimensions width="98" height="36"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_443" name="TextGlyph_67" graphicalObject="Layout_86" text="p-FAK:p-Shc">
          <BoundingBox>
            <Position x="552.2595969770849" y="1343.428879634638"/>
            <Dimensions width="108" height="33"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_444" name="TextGlyph_68" graphicalObject="Layout_87" text="p-FAK:p-Shc:Grb2:Sos">
          <BoundingBox>
            <Position x="609.2595969770849" y="1444.428879634638"/>
            <Dimensions width="172" height="35"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_445" name="TextGlyph_69" graphicalObject="Layout_88" text="p-Shc:Grb2:Sos">
          <BoundingBox>
            <Position x="507.2595969770849" y="1532.428879634638"/>
            <Dimensions width="140" height="37"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_446" name="TextGlyph_70" graphicalObject="Layout_68" text="eNOS">
          <BoundingBox>
            <Position x="1323.259596977085" y="1772.928879634638"/>
            <Dimensions width="90" height="25"/>
          </BoundingBox>
        </TextGlyph>
        <TextGlyph key="Layout_447" name="TextGlyph_71" graphicalObject="Layout_80" text="Shear Stress">
          <BoundingBox>
            <Position x="52" y="807.5"/>
            <Dimensions width="134" height="33"/>
          </BoundingBox>
        </TextGlyph>
      </ListOfTextGlyphs>
      <ListOfRenderInformation>
        <RenderInformation key="LocalRenderInformation_0" name="render info from celldesigner" backgroundColor="#FFFFFFFF">
          <ListOfColorDefinitions>
            <ColorDefinition id="black" value="#000000"/>
            <ColorDefinition id="ColorDefinition" value="#cccc00"/>
            <ColorDefinition id="ColorDefinition_1" value="#cccc0023"/>
            <ColorDefinition id="ColorDefinition_2" value="#ccffcc"/>
            <ColorDefinition id="ColorDefinition_3" value="#ffcccc"/>
            <ColorDefinition id="ColorDefinition_4" value="#9999ff"/>
            <ColorDefinition id="ColorDefinition_5" value="#ccff66"/>
            <ColorDefinition id="ColorDefinition_6" value="#66ff66"/>
            <ColorDefinition id="ColorDefinition_7" value="#ffff66"/>
            <ColorDefinition id="ColorDefinition_8" value="#cccccc7f"/>
            <ColorDefinition id="ColorDefinition_9" value="#f7f7f7"/>
          </ListOfColorDefinitions>
          <ListOfLineEndings>
            <LineEnding id="modifier_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon stroke="#000000" fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="50%"/>
                    <Element x="50%" y="100%"/>
                    <Element x="100%" y="50%"/>
                    <Element x="50%" y="0"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="inhibitor_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="0" y="-5"/>
                <Dimensions width="3" height="10"/>
              </BoundingBox>
              <Group>
                <Rectangle stroke-width="1" fill="#000000" x="0" y="0" width="100%" height="100%"/>
              </Group>
            </LineEnding>
            <LineEnding id="activator_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon>
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
            <LineEnding id="catalysis_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="none" cx="5" cy="5" rx="5" ry="5"/>
              </Group>
            </LineEnding>
            <LineEnding id="product_arrow" enableRotationalMapping="true">
              <BoundingBox>
                <Position x="-5" y="-5"/>
                <Dimensions width="10" height="10"/>
              </BoundingBox>
              <Group>
                <Polygon fill="#000000">
                  <ListOfElements>
                    <Element x="0" y="0"/>
                    <Element x="0" y="100%"/>
                    <Element x="100%" y="50%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </LineEnding>
          </ListOfLineEndings>
          <ListOfStyles>
            <Style key="LocalStyle_0" typeList="REACTIONGLYPH SPECIESREFERENCEGLYPH">
              <Group stroke="black" stroke-width="1">
              </Group>
            </Style>
            <Style key="LocalStyle_1" roleList="modifier">
              <Group stroke="black" stroke-width="1" endHead="modifier_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_2" roleList="inhibitor">
              <Group stroke="black" stroke-width="1" endHead="inhibitor_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_3" roleList="activator">
              <Group stroke="black" stroke-width="1" endHead="activator_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_4" keyList="Layout_100 Layout_101 Layout_108 Layout_135 Layout_139 Layout_143 Layout_151 Layout_159 Layout_163 Layout_167 Layout_171 Layout_172 Layout_176 Layout_180 Layout_188 Layout_192 Layout_196 Layout_200 Layout_205 Layout_209 Layout_219 Layout_220 Layout_221 Layout_222 Layout_223 Layout_224 Layout_225 Layout_240 Layout_241 Layout_245 Layout_246 Layout_254 Layout_276 Layout_277 Layout_281 Layout_288 Layout_295 Layout_302 Layout_312 Layout_322 Layout_329 Layout_333 Layout_340 Layout_95 Layout_99">
              <Group stroke="black" stroke-width="1" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_5">
              <Group stroke="black" stroke-width="1" stroke-dasharray="5, 5" endHead="catalysis_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_6" roleList="product sideproduct">
              <Group stroke="black" stroke-width="1" endHead="product_arrow">
              </Group>
            </Style>
            <Style key="LocalStyle_7" roleList="sidesubstrate substrate">
              <Group stroke="black" stroke-width="1">
              </Group>
            </Style>
            <Style key="LocalStyle_8" keyList="Layout_3">
              <Group font-size="12">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="1592" height="1760" rx="159.2" ry="159.2"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="1604" height="1772" rx="160.4" ry="160.4"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="1580" height="1748" rx="158" ry="158"/>
              </Group>
            </Style>
            <Style key="LocalStyle_9" keyList="Layout_4">
              <Group font-size="12">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="247" height="124" rx="12.4" ry="12.4"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="259" height="136" rx="13.6" ry="13.6"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="235" height="112" rx="11.2" ry="11.2"/>
              </Group>
            </Style>
            <Style key="LocalStyle_10" keyList="Layout_5">
              <Group font-size="12">
                <Rectangle stroke="ColorDefinition_1" stroke-width="12" x="0" y="0" width="425" height="308" rx="30.8" ry="30.8"/>
                <Rectangle stroke="ColorDefinition" stroke-width="2" x="-6" y="-6" width="437" height="320" rx="32" ry="32"/>
                <Rectangle stroke="ColorDefinition" stroke-width="1" x="6" y="6" width="413" height="296" rx="29.6" ry="29.6"/>
              </Group>
            </Style>
            <Style key="LocalStyle_11" keyList="Layout_376">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="start" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_12" keyList="Layout_377">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="start" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_13" keyList="Layout_378">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="start" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_14" keyList="Layout_379">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_15" keyList="Layout_380">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_16" keyList="Layout_381">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_17" keyList="Layout_382">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_18" keyList="Layout_383">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_19" keyList="Layout_384">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_20" keyList="Layout_385">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_21" keyList="Layout_386">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_22" keyList="Layout_387">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_23" keyList="Layout_388">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_24" keyList="Layout_389">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_25" keyList="Layout_390">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_26" keyList="Layout_391">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_27" keyList="Layout_392">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_28" keyList="Layout_393">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_29" keyList="Layout_394">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_30" keyList="Layout_395">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_31" keyList="Layout_396">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_32" keyList="Layout_397">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_33" keyList="Layout_398">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_34" keyList="Layout_399">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_35" keyList="Layout_400">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_36" keyList="Layout_401">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_37" keyList="Layout_402">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_38" keyList="Layout_403">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_39" keyList="Layout_404">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_40" keyList="Layout_405">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_41" keyList="Layout_406">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_42" keyList="Layout_407">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_43" keyList="Layout_408">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_44" keyList="Layout_409">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_45" keyList="Layout_410">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_46" keyList="Layout_411">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_47" keyList="Layout_412">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_48" keyList="Layout_413">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_49" keyList="Layout_414">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_50" keyList="Layout_415">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_51" keyList="Layout_416">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_52" keyList="Layout_417">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_53" keyList="Layout_418">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_54" keyList="Layout_419">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_55" keyList="Layout_420">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_56" keyList="Layout_421">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_57" keyList="Layout_422">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_58" keyList="Layout_423">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_59" keyList="Layout_424">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_60" keyList="Layout_425">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_61" keyList="Layout_426">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_62" keyList="Layout_427">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_63" keyList="Layout_428">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_64" keyList="Layout_429">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_65" keyList="Layout_430">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_66" keyList="Layout_431">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_67" keyList="Layout_432">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_68" keyList="Layout_433">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_69" keyList="Layout_434">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_70" keyList="Layout_435">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_71" keyList="Layout_436">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_72" keyList="Layout_437">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_73" keyList="Layout_438">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_74" keyList="Layout_439">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_75" keyList="Layout_440">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_76" keyList="Layout_441">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_77" keyList="Layout_442">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_78" keyList="Layout_443">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_79" keyList="Layout_444">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_80" keyList="Layout_445">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="bottom">
              </Group>
            </Style>
            <Style key="LocalStyle_81" keyList="Layout_446">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_82" keyList="Layout_447">
              <Group stroke="black" stroke-width="1" font-size="12" font-family="serif" text-anchor="middle" vtext-anchor="middle">
              </Group>
            </Style>
            <Style key="LocalStyle_83" keyList="Layout_6">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="40" cy="20" rx="20" ry="20"/>
              </Group>
            </Style>
            <Style key="LocalStyle_84" keyList="Layout_7">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="40" cy="20" rx="20" ry="20"/>
              </Group>
            </Style>
            <Style key="LocalStyle_85" keyList="Layout_8">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_2" cx="40" cy="20" rx="20" ry="20"/>
              </Group>
            </Style>
            <Style key="LocalStyle_86" keyList="Layout_9">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_87" keyList="Layout_10">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_88" keyList="Layout_11">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_89" keyList="Layout_12">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_90" keyList="Layout_13">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_91" keyList="Layout_14">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_92" keyList="Layout_15">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_93" keyList="Layout_16">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_94" keyList="Layout_17">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="27" cy="21.5" rx="21.5" ry="21.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_95" keyList="Layout_18">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_96" keyList="Layout_19">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="107" height="44" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_97" keyList="Layout_20">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_98" keyList="Layout_21">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_99" keyList="Layout_22">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="100" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_100" keyList="Layout_23">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_101" keyList="Layout_24">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_102" keyList="Layout_25">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_4" cx="18.5" cy="17" rx="17" ry="17"/>
              </Group>
            </Style>
            <Style key="LocalStyle_103" keyList="Layout_26">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_104" keyList="Layout_27">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="155" height="38" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_105" keyList="Layout_28">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="170" height="37" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_106" keyList="Layout_29">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="153" height="39" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_107" keyList="Layout_30">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="168" height="41" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_108" keyList="Layout_31">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_109" keyList="Layout_32">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_110" keyList="Layout_33">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_111" keyList="Layout_34">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_112" keyList="Layout_35">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_113" keyList="Layout_36">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_114" keyList="Layout_37">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_115" keyList="Layout_38">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_116" keyList="Layout_39">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_117" keyList="Layout_40">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_118" keyList="Layout_41">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_119" keyList="Layout_42">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_120" keyList="Layout_43">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_121" keyList="Layout_44">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_5" cx="35" cy="12.5" rx="35" ry="12.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_122" keyList="Layout_45">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="112" height="44" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_123" keyList="Layout_46">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="93" height="45" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_124" keyList="Layout_47">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_125" keyList="Layout_48">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_126" keyList="Layout_49">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_127" keyList="Layout_50">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_128" keyList="Layout_51">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_129" keyList="Layout_52">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_130" keyList="Layout_53">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_131" keyList="Layout_54">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_132" keyList="Layout_55">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_133" keyList="Layout_56">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_134" keyList="Layout_57">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_135" keyList="Layout_58">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_136" keyList="Layout_59">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_137" keyList="Layout_60">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_138" keyList="Layout_61">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_139" keyList="Layout_62">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_140" keyList="Layout_63">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_141" keyList="Layout_64">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_6">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_142" keyList="Layout_65">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_143" keyList="Layout_66">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_144" keyList="Layout_67">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_6">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_145" keyList="Layout_68">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_6">
                  <ListOfElements>
                    <Element x="20%" y="0"/>
                    <Element x="100%" y="0"/>
                    <Element x="80%" y="100%"/>
                    <Element x="0" y="100%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_146" keyList="Layout_69">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_147" keyList="Layout_70">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_148" keyList="Layout_71">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_7" x="0" y="0" width="70" height="25"/>
              </Group>
            </Style>
            <Style key="LocalStyle_149" keyList="Layout_72">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_150" keyList="Layout_73">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_151" keyList="Layout_74">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_152" keyList="Layout_75">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_153" keyList="Layout_76">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_154" keyList="Layout_77">
              <Group>
                <Ellipse stroke="#000000" stroke-width="1" fill="ColorDefinition_3" cx="15" cy="15" rx="10.5" ry="10.5"/>
                <Curve stroke="#000000FF" stroke-width="2">
                  <ListOfElements>
                    <Element x="0" y="30"/>
                    <Element x="30" y="0"/>
                  </ListOfElements>
                </Curve>
              </Group>
            </Style>
            <Style key="LocalStyle_155" keyList="Layout_78">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_156" keyList="Layout_79">
              <Group>
                <Rectangle stroke="#000000" stroke-width="1" fill="ColorDefinition_2" x="0" y="0" width="80" height="40" rx="10%" ry="10%"/>
              </Group>
            </Style>
            <Style key="LocalStyle_157" keyList="Layout_80">
              <Group>
                <Ellipse fill="ColorDefinition_8" cx="67" cy="16.5" rx="67" ry="16.5"/>
              </Group>
            </Style>
            <Style key="LocalStyle_158" keyList="Layout_81">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="8.31325%" y="0"/>
                    <Element x="91.6867%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="91.6867%" y="100%"/>
                    <Element x="8.31325%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_159" keyList="Layout_82">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="8%" y="0"/>
                    <Element x="92%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="92%" y="100%"/>
                    <Element x="8%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_160" keyList="Layout_83">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="6.63158%" y="0"/>
                    <Element x="93.3684%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="93.3684%" y="100%"/>
                    <Element x="6.63158%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_161" keyList="Layout_84">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="2.96296%" y="0"/>
                    <Element x="97.037%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="97.037%" y="100%"/>
                    <Element x="2.96296%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_162" keyList="Layout_85">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="3.67347%" y="0"/>
                    <Element x="96.3265%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="96.3265%" y="100%"/>
                    <Element x="3.67347%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_163" keyList="Layout_86">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="3.05556%" y="0"/>
                    <Element x="96.9444%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="96.9444%" y="100%"/>
                    <Element x="3.05556%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_164" keyList="Layout_87">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="2.03488%" y="0"/>
                    <Element x="97.9651%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="97.9651%" y="100%"/>
                    <Element x="2.03488%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
            <Style key="LocalStyle_165" keyList="Layout_88">
              <Group>
                <Polygon stroke="#000000" stroke-width="1" fill="ColorDefinition_9">
                  <ListOfElements>
                    <Element x="2.64286%" y="0"/>
                    <Element x="97.3571%" y="0"/>
                    <Element x="100%" y="10%"/>
                    <Element x="100%" y="90%"/>
                    <Element x="97.3571%" y="100%"/>
                    <Element x="2.64286%" y="100%"/>
                    <Element x="0" y="90%"/>
                    <Element x="0" y="10%"/>
                  </ListOfElements>
                </Polygon>
              </Group>
            </Style>
          </ListOfStyles>
        </RenderInformation>
      </ListOfRenderInformation>
    </Layout>
  </ListOfLayouts>
  <SBMLReference file="Integratedmodel_validSBML.xml">
    <SBMLMap SBMLid="B_T" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Cao" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="K1" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="K2" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="K3" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="K4" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="K5" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="K_CICR" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="K_hi" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="Kmdp" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Kmp" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="R_T" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Vc_Vs" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="Vdp" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="alp" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="c1" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="c2" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="c3" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="dot_Vex" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="dot_Vhi" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="dot_Vp" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="dot_q_inpass" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="dot_q_instim" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="fracK" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="gam" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="half" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k11" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="k12" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="k13" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="k14" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="k15" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="k16" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="k17" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="k18" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="k2" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k4" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k5" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k6" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k7" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k8" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="k90" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kDD" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="k_CCE" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="k_CICR" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kp" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kr90" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="re10" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re104" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="re105" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="re106" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="re107" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="re108" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="re109" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="re110" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="re111" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="re112" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="re113" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="re114" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="re115" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="re116" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="re117" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="re118" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="re119" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="re120" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="re121" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="re122" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="re123" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="re124" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="re125" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="re126" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="re127" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="re128" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="re129" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="re131" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="re132" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="re133" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="re134" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="re135" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="re136" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="re137" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="re138" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="re139" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re37" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re38" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re41" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re42" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re50" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re51" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re52" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re53" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="re54" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="re55" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="re56" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="re58" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="re59" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re60" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="re61" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="re62" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="re63" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="re64" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="re65" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="re66" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="re67" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="re68" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="re69" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re70" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="re71" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="re72" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="s1" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="s10" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="s100" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="s101" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="s102" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="s103" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="s104" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="s105" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="s106" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="s107" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="s108" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="s11" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="s110" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="s111" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="s112" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="s113" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="s114" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="s115" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="s116" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="s117" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="s118" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="s12" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="s13" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="s14" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="s15" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="s16" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="s17" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="s18" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="s19" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="s2" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="s20" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="s21" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="s22" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="s23" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="s24" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="s25" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="s26" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="s27" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="s28" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="s3" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="s35" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="s37" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="s38" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="s39" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="s4" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="s42" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="s43" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="s44" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="s45" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="s47" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="s48" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="s49" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="s5" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="s50" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="s51" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="s52" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="s57" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="s58" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="s6" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="s60" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="s61" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="s62" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="s63" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="s64" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="s65" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="s66" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="s7" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="s8" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="s9" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="s91" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="s92" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="s93" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="s94" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="s95" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="s96" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="s97" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="s98" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="s99" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="tau_I" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="tau_II" COPASIkey="ModelValue_26"/>
  </SBMLReference>
</COPASI>
