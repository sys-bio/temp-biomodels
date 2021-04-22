<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.14 (Build 89) (http://www.copasi.org) at 2014-12-04 16:35:38 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="14" versionDevel="89" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for WTasynSynthesis" type="UserDefined" reversible="false">
      <Expression>
        k1*(s3*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_246" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_258" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="s3" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for DopProduction" type="UserDefined" reversible="false">
      <Expression>
        k1*(s3*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_269" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_270" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="s3" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for 2merForm" type="UserDefined" reversible="false">
      <Expression>
        k_2merForm*(s17*c1)^2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_276" name="k_2merForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="s17" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for WTasynDopModification" type="UserDefined" reversible="false">
      <Expression>
        k1*(s17*c1)*(s22*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_282" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_283" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="s22" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for WTasynLampBind" type="UserDefined" reversible="false">
      <Expression>
        k_WTasyn1_2merBindOnLamp*(s17*c1)*(s51*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_292" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_293" name="k_WTasyn1_2merBindOnLamp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_295" name="s51" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for AutophagosomeUptakeWTasyn2mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s18*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_262" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="s18" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for 3merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s18*c1)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_306" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_307" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_309" name="s18" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for WTasyn2LampBind" type="UserDefined" reversible="false">
      <Expression>
        k_WTasyn1_2merBindOnLamp*(s18*c1)*(s51*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_315" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_316" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_317" name="k_WTasyn1_2merBindOnLamp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="s18" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_319" name="s51" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for AutophagosomeUptakeWTasyn3mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s20*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_264" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="s20" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for 4merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s20*c1)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_331" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_333" name="s20" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for 3merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s20*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_339" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="s20" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_341" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for AutophagosomeUptakeWTasyn4mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s24*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_346" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="s24" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for 5merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s24*c1)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_353" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_355" name="s24" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for 4merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s24*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_360" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_361" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="s24" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_363" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for AutophagosomeUptakeWTasyn5mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s23*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_368" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="s23" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for 6merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s23*c1)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_374" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_375" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_377" name="s23" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for 5merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s23*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_382" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_383" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="s23" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_385" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for WTasyn5merBindOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_WTOligBindOnLamp*(s23*c1)*(s51*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_392" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_393" name="k_WTOligBindOnLamp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_394" name="s23" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_395" name="s51" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for AutophagosomeUptakeWTasyn6mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s32*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_390" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_281" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="s32" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for 7merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s32*c1)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_406" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_407" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_409" name="s32" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for 6merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s32*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_414" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_415" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="s32" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_417" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for AutophagosomeUptakeWTasyn7mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s31*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_373" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_422" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="s31" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for 8merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s31*c1)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_428" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_429" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_431" name="s31" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for 7merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s31*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_436" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_437" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="s31" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_439" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for WTasyn7merBindOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_WTOligBindOnLamp*(s31*c1)*(s51*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_445" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_446" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_447" name="k_WTOligBindOnLamp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_448" name="s31" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_449" name="s51" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for AutophagosomeUptakeWTasyn8mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s30*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_444" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_254" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_455" name="s30" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for 9merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s30*c1)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_460" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_461" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_462" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_463" name="s30" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for 8merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s30*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_468" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_469" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_470" name="s30" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_471" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for 9merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s29*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_476" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_477" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_478" name="s29" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_479" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for WTasyn9merBindOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_WTOligBindOnLamp*(s29*c1)*(s51*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_485" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_486" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_487" name="k_WTOligBindOnLamp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_488" name="s29" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_489" name="s51" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for DopamineDegr" type="UserDefined" reversible="false">
      <Expression>
        k1*(s22*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_484" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_351" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_495" name="s22" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for DopMod2merForm" type="UserDefined" reversible="false">
      <Expression>
        k_2merForm*(s7*c1)^2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_499" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_500" name="k_2merForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_501" name="s7" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for DopWTasyn2merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_2merForm*(s7*c1)*(s536*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_507" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_508" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_509" name="k_2merForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_510" name="s536" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_511" name="s7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for DopWTasyn7merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s7*c1)*(s490*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_517" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_518" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_519" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_520" name="s490" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_521" name="s7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for DopWTasyn8merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s7*c1)*(s489*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_527" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_528" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_529" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_530" name="s489" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_531" name="s7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for DopWTasyn9merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s7*c1)*(s492*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_537" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_538" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_539" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_540" name="s492" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_541" name="s7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for WTasynLysosUptake" type="UserDefined" reversible="false">
      <Expression>
        k1*(s78*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_459" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_505" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_547" name="s78" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for WTasyn2LysosUptake" type="UserDefined" reversible="false">
      <Expression>
        k1*(s85*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_551" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_552" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_553" name="s85" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for M/autophagyWTasyn4Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s517*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_557" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_558" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_559" name="s517" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for M/autophagyWTasyn8Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s523*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_563" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_564" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_565" name="s523" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for M/autophagyWTasyn3Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s520*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_569" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_570" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_571" name="s520" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for M/autophagyWTasyn2Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s521*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_575" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_576" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="s521" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for M/autophagyWTasyn7Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s522*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_581" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_582" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_583" name="s522" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for M/autophagyWTasyn5Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s518*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_587" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_588" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_589" name="s518" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for M/autophagyWTasyn6Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s519*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_593" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_594" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_595" name="s519" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for AggregForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s29*c1)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_600" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_601" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_602" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_603" name="s29" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for DopModAutophagosomeUptake2mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s6*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_506" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_608" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_609" name="s6" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for DopMod3merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s6*c1)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_614" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_615" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_616" name="s6" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_617" name="s7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for DopModAutophagosomeUptake3mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s5*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_405" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_622" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_623" name="s5" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for DopMod4merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s5*c1)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_628" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_629" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_630" name="s5" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_631" name="s7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for DopMod3merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s5*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_636" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_637" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_638" name="s35" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_639" name="s5" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Function for DopModAutophagosomeUptake4mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s2*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_427" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_644" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_645" name="s2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="Function for DopMod5merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s2*c1)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_650" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_651" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_652" name="s2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_653" name="s7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="Function for DopMod4merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s2*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_658" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_659" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_660" name="s2" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_661" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="Function for DopModAutophagosomeUptake5mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s1*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_599" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_666" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_667" name="s1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="Function for DopMod6merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s1*c1)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_672" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_673" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_674" name="s1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_675" name="s7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="Function for DopMod5merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s1*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_680" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_681" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_682" name="s1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_683" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="Function for DopModAutophagosomeUptake6mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s21*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_613" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_688" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_689" name="s21" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="Function for DopMod7merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s21*c1)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_694" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_695" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_696" name="s21" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_697" name="s7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="Function for DopMod6merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s21*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_702" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_703" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_704" name="s21" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_705" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="Function for DopModAutophagosomeUptake7mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s25*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_627" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_710" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_711" name="s25" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="Function for DopMod8merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s25*c1)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_716" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_717" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_718" name="s25" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_719" name="s7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="Function for DopMod7merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s25*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_724" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_725" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_726" name="s25" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_727" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="Function for DopModAutophagosomeUptake8mer" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s26*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_649" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_732" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_733" name="s26" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="Function for DopMod9merForm" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s26*c1)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_738" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_739" name="k_OligomerForm" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_740" name="s26" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_741" name="s7" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="Function for DopMod8merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s26*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_746" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_747" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_748" name="s26" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_749" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="Function for DopMod9merProtBind" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s27*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_754" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_755" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_756" name="s27" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_757" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="Function for WTasyn2merCMADegr" type="UserDefined" reversible="false">
      <Expression>
        k1*(s53*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_737" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_762" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_763" name="s53" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="Function for WTasyn1merCMADegr" type="UserDefined" reversible="false">
      <Expression>
        k1*(s52*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_767" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_768" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_769" name="s52" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_109" name="Function for LampFree9merWT" type="UserDefined" reversible="false">
      <Expression>
        k_LampFreeWTasyn*(s501*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_773" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_774" name="k_LampFreeWTasyn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_775" name="s501" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_110" name="Function for DopWTasyn3merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s482*c3)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_781" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_782" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_783" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_784" name="s482" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_785" name="s7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_111" name="Function for DopWTasyn4merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s483*c3)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_791" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_792" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_793" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_794" name="s483" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_795" name="s7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_112" name="Function for DopWTasyn5merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s484*c3)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_801" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_802" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_803" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_804" name="s484" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_805" name="s7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_113" name="Function for DopWTasyn6merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s491*c3)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_811" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_812" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_813" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_814" name="s491" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_815" name="s7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_114" name="Function for LampFree3merWT" type="UserDefined" reversible="false">
      <Expression>
        k_LampFreeWTasyn*(s494*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_715" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_780" name="k_LampFreeWTasyn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_821" name="s494" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_115" name="Function for LampFree4merWT" type="UserDefined" reversible="false">
      <Expression>
        k_LampFreeWTasyn*(s495*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_825" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_826" name="k_LampFreeWTasyn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_827" name="s495" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_116" name="Function for LampFree5merWT" type="UserDefined" reversible="false">
      <Expression>
        k_LampFreeWTasyn*(s496*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_831" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_832" name="k_LampFreeWTasyn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_833" name="s496" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_117" name="Function for LampFree6merWT" type="UserDefined" reversible="false">
      <Expression>
        k_LampFreeWTasyn*(s498*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_837" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_838" name="k_LampFreeWTasyn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_839" name="s498" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_118" name="Function for LampFree7merWT" type="UserDefined" reversible="false">
      <Expression>
        k_LampFreeWTasyn*(s499*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_843" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_844" name="k_LampFreeWTasyn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_845" name="s499" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_119" name="Function for LampFree8merWT" type="UserDefined" reversible="false">
      <Expression>
        k_LampFreeWTasyn*(s500*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_849" name="c3" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_850" name="k_LampFreeWTasyn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_851" name="s500" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_120" name="Function for WTasyn8merBindOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_WTOligBindOnLamp*(s500*c3)*(s30*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_857" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_858" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_859" name="k_WTOligBindOnLamp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_860" name="s30" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_861" name="s500" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_121" name="Function for WTasyn3merBindOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_WTOligBindOnLamp*(s51*c3)*(s20*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_867" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_868" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_869" name="k_WTOligBindOnLamp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_870" name="s20" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_871" name="s51" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_122" name="Function for WTasyn4merBindOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_WTOligBindOnLamp*(s51*c3)*(s24*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_877" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_878" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_879" name="k_WTOligBindOnLamp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_880" name="s24" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_881" name="s51" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_123" name="Function for WTasyn6merBindOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_WTOligBindOnLamp*(s51*c3)*(s32*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_887" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_888" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_889" name="k_WTOligBindOnLamp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_890" name="s32" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_891" name="s51" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_124" name="Function for DopModWTasynCMAInhibition" type="UserDefined" reversible="false">
      <Expression>
        k_DopModWTasynLampBind*(s51*c3)*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_897" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_898" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_899" name="k_DopModWTasynLampBind" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_900" name="s51" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_901" name="s7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_125" name="Function for M/autophagyDopModWTasyn4Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s530*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_693" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_856" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_907" name="s530" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_126" name="Function for M/autophagyDopModWTasyn3Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s531*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_911" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_912" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_913" name="s531" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_127" name="Function for M/autophagyDopModWTasyn2Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s527*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_917" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_918" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_919" name="s527" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_128" name="Function for M/autophagyDopModWTasyn5Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s529*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_923" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_924" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_925" name="s529" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_129" name="Function for M/autophagyDopModWTasyn6Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s528*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_929" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_930" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_931" name="s528" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_130" name="Function for M/autophagyDopModWTasyn7Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s526*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_935" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_936" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_937" name="s526" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_131" name="Function for M/autophagyDopModWTasyn8Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s525*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_941" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_942" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_943" name="s525" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_132" name="Function for WTasyn2merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_2merForm*(s17*c1)*(s78*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_949" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_950" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_951" name="k_2merForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_952" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_953" name="s78" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_133" name="Function for WTasyn3merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s17*c1)*(s85*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_959" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_960" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_961" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_962" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_963" name="s85" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_134" name="Function for WTasyn4merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s17*c1)*(s494*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_969" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_970" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_971" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_972" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_973" name="s494" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_135" name="Function for WTasyn5merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s17*c1)*(s495*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_979" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_980" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_981" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_982" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_983" name="s495" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_136" name="Function for WTasyn6merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s496*c3)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_989" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_990" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_991" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_992" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_993" name="s496" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_137" name="Function for WTasyn7merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s498*c3)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_999" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1000" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1001" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1002" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1003" name="s498" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_138" name="Function for WTasyn8merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s17*c1)*(s499*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1009" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1010" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1011" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1012" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1013" name="s499" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_139" name="Function for WTasyn9merFormOnLamp" type="UserDefined" reversible="false">
      <Expression>
        k_OligomerForm*(s17*c1)*(s500*c3)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1019" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1020" name="c3" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_1021" name="k_OligomerForm" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_1022" name="s17" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1023" name="s500" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_140" name="Function for ProtFree3merWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s381*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_855" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_947" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1029" name="s381" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_141" name="Function for ProtFree4merWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s383*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1033" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1034" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1035" name="s383" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_142" name="Function for ProtFree5merWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s385*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1039" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1040" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1041" name="s385" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_143" name="Function for ProtFree6merWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s387*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1045" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1046" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1047" name="s387" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_144" name="Function for ProtFree7merWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s389*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1051" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1052" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1053" name="s389" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_145" name="Function for ProtFree8merWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s391*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1057" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1058" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1059" name="s391" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_146" name="Function for ProtFree9merWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s393*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1063" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1064" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1065" name="s393" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_147" name="Function for ProtFree3merDopWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s473*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1069" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1070" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1071" name="s473" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_148" name="Function for ProtFree4merDopWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s474*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1075" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1076" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1077" name="s474" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_149" name="Function for ProtFree5merDopWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s475*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1081" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1082" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1083" name="s475" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_150" name="Function for ProtFree6merDopWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s476*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1087" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1088" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1089" name="s476" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_151" name="Function for ProtFree7merDopWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s477*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1093" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1094" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1095" name="s477" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_152" name="Function for ProtFree8merDopWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s478*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1099" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1100" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1101" name="s478" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_153" name="Function for ProtFree9merDopWT" type="UserDefined" reversible="false">
      <Expression>
        k_ProtOligDegr*(s479*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1105" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1106" name="k_ProtOligDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1107" name="s479" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_154" name="Function for WTasynHigherPSCprotInh" type="UserDefined" reversible="false">
      <Expression>
        k_ProteasomeBind*(s33*c1)*(s35*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1112" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1113" name="k_ProteasomeBind" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1114" name="s33" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1115" name="s35" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_155" name="Function for DopMod9merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s27*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_671" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1120" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1121" name="s27" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_156" name="Function for DopMod8merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s26*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1125" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1126" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1127" name="s26" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_157" name="Function for DopMod7merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s25*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1131" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1132" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1133" name="s25" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_158" name="Function for DopMod6merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s21*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1137" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1138" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1139" name="s21" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_159" name="Function for DopMod4merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s2*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1143" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1144" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1145" name="s2" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_160" name="Function for DopMod5merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s1*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1149" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1150" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1151" name="s1" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_161" name="Function for DopMod3merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s5*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1155" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1156" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1157" name="s5" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_162" name="Function for DopMod2merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s6*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1161" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1162" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1163" name="s6" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_163" name="Function for 9merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s29*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1167" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1168" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1169" name="s29" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_164" name="Function for 8merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s30*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1173" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1174" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1175" name="s30" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_165" name="Function for 7merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s31*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1179" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1180" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1181" name="s31" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_166" name="Function for 6merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s32*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1185" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1186" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1187" name="s32" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_167" name="Function for 5merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s23*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1191" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1192" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1193" name="s23" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_168" name="Function for 4merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s24*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1197" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1198" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1199" name="s24" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_169" name="Function for 3merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s20*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1203" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1204" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1205" name="s20" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_170" name="Function for 2merDis" type="UserDefined" reversible="false">
      <Expression>
        k_DisRate*(s18*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1209" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1210" name="k_DisRate" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1211" name="s18" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_171" name="Function for AggregGrowth" type="UserDefined" reversible="false">
      <Expression>
        k1*(s33*c1)*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1216" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1217" name="k1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1218" name="s17" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_1219" name="s33" order="3" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_172" name="Function for AutophagosomeUptakeWTasyn" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s17*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_948" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1224" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1225" name="s17" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_173" name="Function for M/autophagyWTasyn1Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s533*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1229" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1230" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1231" name="s533" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_174" name="Function for DopModAutophagosomeUptake" type="UserDefined" reversible="false">
      <Expression>
        k_OligAutophagUptake*(s7*c1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1235" name="c1" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1236" name="k_OligAutophagUptake" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1237" name="s7" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_175" name="Function for M/autophagyDopModWTasyn1Degr" type="UserDefined" reversible="false">
      <Expression>
        k_M_autophagyDegr*(s535*c2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_1241" name="c2" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_1242" name="k_M_autophagyDegr" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_1243" name="s535" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_4" name="Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis" simulationType="time" timeUnit="s" volumeUnit="dimensionless" areaUnit="m²" lengthUnit="m" quantityUnit="#" type="stochastic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_4">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/24885905"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T17:56:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lloret@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Lloret i Villas</vCard:Family>
                <vCard:Given>Audald</vCard:Given>
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
            <vCard:EMAIL>elouzou@central.ntua.gr</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Ouzounoglou</vCard:Family>
                <vCard:Given>Eleftherios</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Department of Informatics and Telecommunications, Graduate Program "Information Technologies in Medicine and Biology", National and Kapodistrian University of Athens</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2014-12-04T16:09:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1412010000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000559"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006914"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:occursIn>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </CopasiMT:occursIn>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Ouzounoglou2014 - Modeling of alpha-synuclein
effects on neuronal homeostasis</div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/24885905" title="Access to this publication">In silico modeling of the
    effects of alpha-synuclein oligomerization on dopaminergic
    neuronal homeostasis.</a>
      </div>
      <div class="bibo:authorList">Ouzounoglou E, Kalamatianos D,
  Emmanouilidou E, Xilouri M, Stefanis L, Vekrellis K, Manolakos
  ES.</div>
      <div class="bibo:Journal">BMC Syst Biol 2014; 8: 54</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>BACKGROUND: Alpha-synuclein (ASYN) is central in Parkinson&apos;s
    disease (PD) pathogenesis. Converging pieces of evidence
    suggest that the levels of ASYN expression play a critical role
    in both familial and sporadic Parkinson&apos;s disease. ASYN fibrils
    are the main component of inclusions called Lewy Bodies (LBs)
    which are found mainly in the surviving neurons of the
    substantia nigra. Despite the accumulated knowledge regarding
    the involvement of ASYN in molecular mechanisms underlying the
    development of PD, there is much information missing which
    prevents understanding the causes of the disease and how to
    stop its progression. RESULTS: Using a Systems Biology
    approach, we develop a biomolecular reactions model that
    describes the intracellular ASYN dynamics in relation to
    overexpression, post-translational modification,
    oligomerization and degradation of the protein. Especially for
    the proteolysis of ASYN, the model takes into account the
    biological knowledge regarding the contribution of Chaperone
    Mediated Autophagy (CMA), macro-autophagic and proteasome
    pathways in the protein&apos;s degradation. Importantly, inhibitory
    phenomena, caused by ASYN, concerning CMA (more specifically
    the lysosomal-associated membrane protein 2a, abbreviated as
    Lamp2a receptor, which is the rate limiting step of CMA) and
    the proteasome are carefully modeled. The model is validated by
    simulation studies of known experimental overexpression data
    from SH-SY5Y cells and the unknown model parameters are
    estimated either computationally or by experimental fitting.
    The calibrated model is then tested under three hypothetical
    intervention scenarios and in all cases predicts increased cell
    viability that agrees with experimental evidence. The biomodel
    has been annotated and is made available in SBML format.
    CONCLUSIONS: The mathematical model presented here successfully
    simulates the dynamic phenomena of ASYN overexpression and
    oligomerization and predicts the biological system&apos;s behavior
    in a number of scenarios not used for model calibration. It
    allows, for the first time, to qualitatively estimate the
    protein levels that are capable of deregulating proteolytic
    homeostasis. In addition, it can help form new hypotheses for
    intervention that could be tested experimentally.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/BIOMD0000000559">BIOMD0000000559</a>.</p>
    <p>To cite BioModels Database, please use: 
  <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database:
  An enhanced, curated and annotated resource for published
  quantitative kinetic models</a>.</p>
</div><div class="dc:license">
  <p>To the extent possible under law, all copyright and related or
  neighbouring rights to this encoded model have been dedicated to
  the public domain worldwide. Please refer to 
  <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0
  Public Domain Dedication</a> for more information.</p>
</div>
</body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="default" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_3" name="Lysosome" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_5" name="M/autophagy&amp;OtherLysDegrPath" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_7" name="Cytosol" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="Lamp2a" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="WTasyn" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="WTasyn2" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="WTasyndegr" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="WTasyn2degr" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="WTasyn2merCMADegr" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="WTasynCMADegr" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="DopModWTasyn2merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="DopModWTasyn3merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="DopModWTasyn4merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="DopModWTasyn7merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="DopModWTasyn6merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="DopModWTasyn5merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="DopModWTasyn8merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="DopModWTasyn9merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="WTasyn3merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="WTasyn4merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="WTasyn5merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="WTasyn6merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="WTasyn7merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="WTasyn8merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="WTasyn9merOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="DopModWTasynOnLamp" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P13473"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="WTasyn2merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="WTasyn3merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="WTasyn4merM/Adegrr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="WTasyn5merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="WTasyn6merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="WTasyn7merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="WTasyn8merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="DopModWTasyn2merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="DopModWTasyn3merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="DopModWTasyn4merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="DopModWTasyn6merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="DopModWTasyn8merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="WTasyn4" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="WTasyn5" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="WTasyn6" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="WTasyn3" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="WTasyn2" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="WTasyn7" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="WTasyn8" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="DopModWTasyn7merM/Adegr" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="DopModWTasyn8" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="DopModWTasyn7" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="DopModWTasyn6" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_91">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="DopModWTasyn5" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="DopModWTasyn4" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_95">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="DopModWTasyn3" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_97">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="WTasyn" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_99">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="DopModWTasyn" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_101">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="DopModWTasyn2" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_103">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="DopModWTasyn5" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_105">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_107" name="DopModWTasyn4" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_107">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="SOURCE" simulationType="fixed" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_109">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006351"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006412"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_111" name="DopModWTasyn3" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_111">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_113" name="DopModWTasyn2" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_113">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="DopModWTasyn" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_115">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_117" name="WTasyn" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_117">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="WTasyn2" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_119">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="WTasyn3" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_121">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="DopModWTasyn6" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_123">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_125" name="Dopamine" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_125">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="WTasyn5" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_127">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_129" name="WTasyn4" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_129">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_131" name="DopModWTasyn7" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_131">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_133" name="DopModWTasyn8" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_133">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_135" name="DopModWTasyn9" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_135">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_137" name="WTasyn9" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_137">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_139" name="WTasyn8" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_139">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_141" name="WTasyn7" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_141">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_143" name="WTasyn6" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_143">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_145" name="HigherWTasynSPC" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_145">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_147" name="Proteasome" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_147">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_149" name="Dopamine_degraded" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_149">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_151" name="ProtWTasyn3" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_151">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_153" name="ProtWTasyn4" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_153">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_155" name="ProtWTasyn5" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_155">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_157" name="ProtWTasyn6" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_157">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_159" name="ProtWTasyn7" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_159">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_161" name="ProtWTasyn8" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_161">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_163" name="ProtWTasyn9" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_163">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_165" name="ProtDopModWTasyn3" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_165">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_167" name="ProtDopModWTasyn4" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_167">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_169" name="ProtDopModWTasyn5" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_169">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_171" name="ProtDopModWTasyn6" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_171">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_173" name="ProtDopModWTasyn7" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_173">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_175" name="ProtDopModWTasyn8" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_175">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_177" name="ProtDopModWTasyn9" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_177">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18243"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_179" name="ProtWTasynHigherSPC" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_179">
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/uniprot/P37840"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
    <CopasiMT:hasPart>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0000502"/>
      </rdf:Bag>
    </CopasiMT:hasPart>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="k_DisRate" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2014-11-20T19:36:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="k_2merForm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="k_DopModWTasynLampBind" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="k_LampFreeWTasyn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="k_OligAutophagUptake" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="k_OligomerForm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="k_ProteasomeBind" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="k_ProtOligDegr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="k_WTasyn1_2merBindOnLamp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="k_WTOligBindOnLamp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Total_Cytosolic_WTASYN_Oligomers" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn3],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn4],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn5],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn6],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn7],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn8],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn9],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn3],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn4],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn5],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn6],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn7],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn8],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn9],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Total_Cytosolic_WTASYN_Monomer" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Total_Cytosolic_WTASYN_Dimer" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn2],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;+&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn2],Reference=ParticleNumber&gt;*&lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Reference=Volume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="k_M_autophagyDegr" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="WTasynSynthesis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006412"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006351"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4401" name="k1" value="0.0294219"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Parameter_4401"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="DopProduction" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0042416"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_109" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4402" name="k1" value="0.0791823"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4402"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_109"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="2merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051259"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4403" name="k_2merForm" value="1.46294e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="WTasynDopModification" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006461"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032460"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4404" name="k1" value="6.74768e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Parameter_4404"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="WTasynLampBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006622"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4405" name="k_WTasyn1_2merBindOnLamp" value="6.86546e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="AutophagosomeUptakeWTasyn2mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4406" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="3merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051259"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_119" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4407" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="WTasyn2LampBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006622"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_119" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4408" name="k_WTasyn1_2merBindOnLamp" value="6.86546e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="AutophagosomeUptakeWTasyn3mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4409" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="4merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051529"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4410" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="3merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4411" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="AutophagosomeUptakeWTasyn4mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4412" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="5merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051259"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4413" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="4merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4414" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="AutophagosomeUptakeWTasyn5mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4415" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="6merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <CopasiMT:hasVersion>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051259"/>
      </rdf:Bag>
    </CopasiMT:hasVersion>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4416" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="5merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4417" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="WTasyn5merBindOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4418" name="k_WTOligBindOnLamp" value="4e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="AutophagosomeUptakeWTasyn6mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4419" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="7merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051259"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4420" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="6merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4421" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="AutophagosomeUptakeWTasyn7mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4422" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="8merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051259"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4423" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="7merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4424" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="WTasyn7merBindOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4425" name="k_WTOligBindOnLamp" value="4e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="AutophagosomeUptakeWTasyn8mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4426" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="9merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0051259"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_139" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4427" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="8merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_139" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4428" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="9merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_137" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4431" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="WTasyn9merBindOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_137" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4430" name="k_WTOligBindOnLamp" value="4e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="DopamineDegr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0042240"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4432" name="k1" value="0.00679501"/>
        </ListOfConstants>
        <KineticLaw function="Function_70">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Parameter_4432"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="DopMod2merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4429" name="k_2merForm" value="1.46294e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="DopWTasyn2merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4433" name="k_2merForm" value="1.46294e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="DopWTasyn7merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4434" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="DopWTasyn8merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4435" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="DopWTasyn9merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4436" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="WTasynLysosUptake" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006914"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4437" name="k1" value="0.00999558"/>
        </ListOfConstants>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Parameter_4437"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="WTasyn2LysosUptake" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006914"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4438" name="k1" value="0.00995312"/>
        </ListOfConstants>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Parameter_4438"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="M/autophagyWTasyn4Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4439" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="M/autophagyWTasyn8Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4440" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="M/autophagyWTasyn3Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4441" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="M/autophagyWTasyn2Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4442" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="M/autophagyWTasyn7Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4443" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="M/autophagyWTasyn5Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_73" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4444" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="Metabolite_73"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="M/autophagyWTasyn6Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_75" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4445" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Metabolite_75"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="AggregForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070841"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_137" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4446" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="DopModAutophagosomeUptake2mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4447" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="DopMod3merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4448" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="DopModAutophagosomeUptake3mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4454" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="DopMod4merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_111" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4453" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_630">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_631">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="DopMod3merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_111" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4452" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_638">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_639">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="DopModAutophagosomeUptake4mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4449" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_91">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_644">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_645">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="DopMod5merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_107" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4450" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_92">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_650">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_651">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_652">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_653">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="DopMod4merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_107" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4451" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_93">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_659">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="DopModAutophagosomeUptake5mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4455" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_94">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_666">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_667">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="DopMod6merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_105" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4456" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_95">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="DopMod5merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_105" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4459" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_680">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_681">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_682">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_683">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="DopModAutophagosomeUptake6mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4458" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_97">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="DopMod7merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_123" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4457" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_98">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_696">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_697">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="DopMod6merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_123" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4460" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_99">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_702">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_703">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_705">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="DopModAutophagosomeUptake7mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4461" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_100">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_710">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="DopMod8merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_131" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4462" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_101">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="DopMod7merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_131" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4463" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_102">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_724">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_725">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_726">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_727">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="DopModAutophagosomeUptake8mer" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4464" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_103">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="DopMod9merForm" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4465" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_104">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_738">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_739">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_740">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_741">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="DopMod8merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4466" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_105">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="DopMod9merProtBind" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_135" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4467" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_106">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_754">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_755">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_756">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_757">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="WTasyn2merCMADegr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006914"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4468" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_107">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_737">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_762">
              <SourceParameter reference="Parameter_4468"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_763">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="WTasyn1merCMADegr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006914"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4469" name="k1" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_108">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_767">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_768">
              <SourceParameter reference="Parameter_4469"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_769">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="LampFree9merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032984"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4470" name="k_LampFreeWTasyn" value="0.000304457"/>
        </ListOfConstants>
        <KineticLaw function="Function_109">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_773">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_774">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_775">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="DopWTasyn3merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4471" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_110">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_781">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_782">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_783">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_784">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_785">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="DopWTasyn4merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4472" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_111">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_791">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_792">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_793">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_794">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_795">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="DopWTasyn5merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4473" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_112">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_801">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_802">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_803">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_804">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_805">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="DopWTasyn6merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_73">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0035786"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4474" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_113">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_811">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_812">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_813">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_814">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_815">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="LampFree3merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_74">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032984"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4475" name="k_LampFreeWTasyn" value="0.000304457"/>
        </ListOfConstants>
        <KineticLaw function="Function_114">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_780">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_821">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="LampFree4merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_75">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032984"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4476" name="k_LampFreeWTasyn" value="0.000304457"/>
        </ListOfConstants>
        <KineticLaw function="Function_115">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_825">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_826">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_827">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="LampFree5merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_76">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032984"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4477" name="k_LampFreeWTasyn" value="0.000304457"/>
        </ListOfConstants>
        <KineticLaw function="Function_116">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_831">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_832">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_833">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="LampFree6merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032984"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4478" name="k_LampFreeWTasyn" value="0.000304457"/>
        </ListOfConstants>
        <KineticLaw function="Function_117">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_837">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_838">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_839">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="LampFree7merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_78">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032984"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4479" name="k_LampFreeWTasyn" value="0.000304457"/>
        </ListOfConstants>
        <KineticLaw function="Function_118">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_843">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_844">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_845">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="LampFree8merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_79">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032984"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4480" name="k_LampFreeWTasyn" value="0.000304457"/>
        </ListOfConstants>
        <KineticLaw function="Function_119">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_849">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_850">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_851">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="WTasyn8merBindOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_80">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4481" name="k_WTOligBindOnLamp" value="4e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_120">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_857">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_858">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_859">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_860">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_861">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="WTasyn3merBindOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_81">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4482" name="k_WTOligBindOnLamp" value="4e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_121">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_867">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_868">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_869">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_870">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_871">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="WTasyn4merBindOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_82">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4495" name="k_WTOligBindOnLamp" value="4e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_122">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_877">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_878">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_879">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_880">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_881">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="WTasyn6merBindOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_83">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4496" name="k_WTOligBindOnLamp" value="4e-06"/>
        </ListOfConstants>
        <KineticLaw function="Function_123">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_887">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_888">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_889">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_890">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_891">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="DopModWTasynCMAInhibition" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_84">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005102"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4497" name="k_DopModWTasynLampBind" value="7.6716e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_124">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_897">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_898">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_899">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_900">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_901">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="M/autophagyDopModWTasyn4Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_85">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_95" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4498" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_125">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_693">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_856">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_907">
              <SourceParameter reference="Metabolite_95"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="M/autophagyDopModWTasyn3Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_86">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_97" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4499" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_126">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_911">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_912">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_913">
              <SourceParameter reference="Metabolite_97"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="M/autophagyDopModWTasyn2Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_87">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_103" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4500" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_127">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_917">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_918">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_919">
              <SourceParameter reference="Metabolite_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="M/autophagyDopModWTasyn5Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_88">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_93" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4501" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_128">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_923">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_924">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_925">
              <SourceParameter reference="Metabolite_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="M/autophagyDopModWTasyn6Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_89">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_91" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4502" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_129">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_929">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_930">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_931">
              <SourceParameter reference="Metabolite_91"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="M/autophagyDopModWTasyn7Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_90">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_89" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4389" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_130">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_935">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_936">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_937">
              <SourceParameter reference="Metabolite_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="M/autophagyDopModWTasyn8Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_91">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4390" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_131">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_941">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_942">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_943">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="WTasyn2merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_92">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4391" name="k_2merForm" value="1.46294e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_132">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_949">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_950">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_951">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_952">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_953">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="WTasyn3merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_93">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4392" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_133">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_959">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_960">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_961">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_962">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_963">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="WTasyn4merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_94">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4393" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_134">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_969">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_970">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_971">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_972">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_973">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="WTasyn5merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_95">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4394" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_135">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_979">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_980">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_981">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_982">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_983">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="WTasyn6merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_96">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4395" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_136">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_989">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_990">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_991">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_992">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_993">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="WTasyn7merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_97">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_37" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4396" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_137">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_999">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1000">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1001">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1002">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1003">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="WTasyn8merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_98">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4397" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_138">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1009">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1010">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1011">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1012">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1013">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="WTasyn9merFormOnLamp" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_99">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4398" name="k_OligomerForm" value="3.3505e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_139">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1019">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1020">
              <SourceParameter reference="Compartment_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1021">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1022">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1023">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="ProtFree3merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_100">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4399" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_140">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_855">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_947">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1029">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="ProtFree4merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_101">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4503" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_141">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1033">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1034">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1035">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="ProtFree5merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_102">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4504" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_142">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1039">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1040">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1041">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="ProtFree6merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_103">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_157" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4284" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_143">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1045">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1046">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1047">
              <SourceParameter reference="Metabolite_157"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="ProtFree7merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_104">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_159" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4283" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_144">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1051">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1052">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1053">
              <SourceParameter reference="Metabolite_159"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="ProtFree8merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_105">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_161" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4282" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_145">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1057">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1058">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1059">
              <SourceParameter reference="Metabolite_161"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="ProtFree9merWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_106">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_163" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4281" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_146">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1063">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1064">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1065">
              <SourceParameter reference="Metabolite_163"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="ProtFree3merDopWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_107">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_165" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4280" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_147">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1069">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1070">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1071">
              <SourceParameter reference="Metabolite_165"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="ProtFree4merDopWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_108">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_167" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4279" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_148">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1075">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1076">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1077">
              <SourceParameter reference="Metabolite_167"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="ProtFree5merDopWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_109">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_169" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4278" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_149">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1081">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1082">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1083">
              <SourceParameter reference="Metabolite_169"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="ProtFree6merDopWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_110">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_171" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4277" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_150">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1087">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1088">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1089">
              <SourceParameter reference="Metabolite_171"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="ProtFree7merDopWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_111">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_173" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4276" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_151">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1093">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1094">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1095">
              <SourceParameter reference="Metabolite_173"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="ProtFree8merDopWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_112">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_175" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4275" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_152">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1099">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1100">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1101">
              <SourceParameter reference="Metabolite_175"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="ProtFree9merDopWT" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_113">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0010498"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_177" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4274" name="k_ProtOligDegr" value="0.000370096"/>
        </ListOfConstants>
        <KineticLaw function="Function_153">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1105">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1106">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1107">
              <SourceParameter reference="Metabolite_177"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="WTasynHigherPSCprotInh" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_114">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:1901799"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070628"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_179" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4273" name="k_ProteasomeBind" value="3.42469e-09"/>
        </ListOfConstants>
        <KineticLaw function="Function_154">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1112">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1113">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1114">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1115">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="DopMod9merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_115">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4272" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_155">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_671">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1120">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1121">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="DopMod8merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_116">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_131" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4271" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_156">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1125">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1126">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1127">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="DopMod7merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_117">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4270" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_157">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1131">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1132">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1133">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="DopMod6merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_118">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_105" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4269" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_158">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1137">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1138">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1139">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="DopMod4merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_119">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_111" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_107" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4268" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_159">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1143">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1144">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1145">
              <SourceParameter reference="Metabolite_107"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="DopMod5merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_120">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_107" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_105" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4267" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_160">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1149">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1150">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1151">
              <SourceParameter reference="Metabolite_105"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="DopMod3merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_121">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_113" stoichiometry="1"/>
          <Product metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_111" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4266" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_161">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1155">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1156">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1157">
              <SourceParameter reference="Metabolite_111"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="DopMod2merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_122">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_115" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_113" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4265" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_162">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1161">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1162">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1163">
              <SourceParameter reference="Metabolite_113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="9merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_123">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4264" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_163">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1167">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1168">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1169">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="8merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_124">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4263" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_164">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1173">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1174">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1175">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="7merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_125">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4262" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_165">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1179">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1180">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1181">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="6merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_126">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4261" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_166">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1185">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1186">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1187">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="5merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_127">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4260" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_167">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1191">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1192">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1193">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="4merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_128">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4259" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_168">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1197">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1198">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1199">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="3merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_129">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_119" stoichiometry="1"/>
          <Product metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4258" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_169">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1203">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1204">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1205">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="2merDis" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_130">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0043241"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_117" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4257" name="k_DisRate" value="4.99953e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_170">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1209">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1210">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1211">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="AggregGrowth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_131">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0070841"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4256" name="k1" value="4.90556e-07"/>
        </ListOfConstants>
        <KineticLaw function="Function_171">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1216">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1217">
              <SourceParameter reference="Parameter_4256"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1218">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1219">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="AutophagosomeUptakeWTasyn" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_132">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_117" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4255" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_172">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_948">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1224">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1225">
              <SourceParameter reference="Metabolite_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="M/autophagyWTasyn1Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_133">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_99" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4254" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_173">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1229">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1230">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1231">
              <SourceParameter reference="Metabolite_99"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="DopModAutophagosomeUptake" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_134">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_115" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4253" name="k_OligAutophagUptake" value="2.39034e-08"/>
        </ListOfConstants>
        <KineticLaw function="Function_174">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1235">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1236">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1237">
              <SourceParameter reference="Metabolite_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="M/autophagyDopModWTasyn1Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_135">
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0016236"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_101" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4252" name="k_M_autophagyDegr" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_175">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_1241">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1242">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_1243">
              <SourceParameter reference="Metabolite_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[default]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[Lamp2a]" value="200" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyndegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn2degr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn2merCMADegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasynCMADegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[DopModWTasyn2merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[DopModWTasyn3merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[DopModWTasyn4merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[DopModWTasyn7merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[DopModWTasyn6merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[DopModWTasyn5merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[DopModWTasyn8merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[DopModWTasyn9merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn3merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn4merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn5merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn6merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn7merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn8merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[WTasyn9merOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[DopModWTasynOnLamp]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn2merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn3merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn4merM/Adegrr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn5merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn6merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn7merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn8merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn2merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn3merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn4merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn6merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn8merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn7]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn7merM/Adegr]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn7]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[WTasyn]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[M/autophagy&amp;OtherLysDegrPath],Vector=Metabolites[DopModWTasyn2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn5]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn4]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[SOURCE]" value="1" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn3]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn]" value="953" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn]" value="1650" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn2]" value="22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn3]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn6]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[Dopamine]" value="750" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn5]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn4]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn7]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn8]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[DopModWTasyn9]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn9]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn8]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn7]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[WTasyn6]" value="8" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[HigherWTasynSPC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[Proteasome]" value="1500" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[Dopamine_degraded]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtWTasyn3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtWTasyn4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtWTasyn5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtWTasyn6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtWTasyn7]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtWTasyn8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtWTasyn9]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtDopModWTasyn3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtDopModWTasyn4]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtDopModWTasyn5]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtDopModWTasyn6]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtDopModWTasyn7]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtDopModWTasyn8]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtDopModWTasyn9]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[ProtWTasynHigherSPC]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate]" value="4.999533748e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_2merForm]" value="1.462941015e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DopModWTasynLampBind]" value="7.671599700000001e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_LampFreeWTasyn]" value="0.0003044571674" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake]" value="2.39034347e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm]" value="3.350497192e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind]" value="3.424693672e-09" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr]" value="0.000370096" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTasyn1_2merBindOnLamp]" value="6.865455081e-07" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTOligBindOnLamp]" value="4e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[Total_Cytosolic_WTASYN_Oligomers]" value="112" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[Total_Cytosolic_WTASYN_Monomer]" value="2603" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[Total_Cytosolic_WTASYN_Dimer]" value="22" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr]" value="0.1" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynSynthesis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynSynthesis],ParameterGroup=Parameters,Parameter=k1" value="0.0294219" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopProduction]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopProduction],ParameterGroup=Parameters,Parameter=k1" value="0.0791823" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[2merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[2merForm],ParameterGroup=Parameters,Parameter=k_2merForm" value="1.462941015e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_2merForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynDopModification]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynDopModification],ParameterGroup=Parameters,Parameter=k1" value="6.747680000000001e-07" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynLampBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynLampBind],ParameterGroup=Parameters,Parameter=k_WTasyn1_2merBindOnLamp" value="6.865455081e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTasyn1_2merBindOnLamp],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn2mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn2mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[3merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[3merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn2LampBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn2LampBind],ParameterGroup=Parameters,Parameter=k_WTasyn1_2merBindOnLamp" value="6.865455081e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTasyn1_2merBindOnLamp],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn3mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn3mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[4merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[4merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[3merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[3merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn4mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn4mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[5merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[5merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[4merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[4merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn5mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn5mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[6merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[6merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[5merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[5merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn5merBindOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn5merBindOnLamp],ParameterGroup=Parameters,Parameter=k_WTOligBindOnLamp" value="4e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTOligBindOnLamp],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn6mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn6mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[7merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[7merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[6merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[6merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn7mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn7mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[8merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[8merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[7merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[7merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn7merBindOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn7merBindOnLamp],ParameterGroup=Parameters,Parameter=k_WTOligBindOnLamp" value="4e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTOligBindOnLamp],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn8mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn8mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[9merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[9merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[8merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[8merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[9merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[9merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn9merBindOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn9merBindOnLamp],ParameterGroup=Parameters,Parameter=k_WTOligBindOnLamp" value="4e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTOligBindOnLamp],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopamineDegr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopamineDegr],ParameterGroup=Parameters,Parameter=k1" value="0.00679501" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod2merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod2merForm],ParameterGroup=Parameters,Parameter=k_2merForm" value="1.462941015e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_2merForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn2merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn2merFormOnLamp],ParameterGroup=Parameters,Parameter=k_2merForm" value="1.462941015e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_2merForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn7merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn7merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn8merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn8merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn9merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn9merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynLysosUptake]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynLysosUptake],ParameterGroup=Parameters,Parameter=k1" value="0.00999558" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn2LysosUptake]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn2LysosUptake],ParameterGroup=Parameters,Parameter=k1" value="0.009953119999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn4Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn4Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn8Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn8Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn3Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn3Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn2Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn2Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn7Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn7Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn5Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn5Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn6Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn6Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AggregForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AggregForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake2mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake2mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod3merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod3merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake3mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake3mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod4merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod4merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod3merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod3merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake4mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake4mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod5merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod5merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod4merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod4merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake5mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake5mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod6merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod6merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod5merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod5merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake6mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake6mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod7merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod7merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod6merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod6merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake7mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake7mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod8merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod8merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod7merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod7merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake8mer]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake8mer],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod9merForm]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod9merForm],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod8merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod8merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod9merProtBind]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod9merProtBind],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn2merCMADegr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn2merCMADegr],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn1merCMADegr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn1merCMADegr],ParameterGroup=Parameters,Parameter=k1" value="0.1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree9merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree9merWT],ParameterGroup=Parameters,Parameter=k_LampFreeWTasyn" value="0.0003044571674" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_LampFreeWTasyn],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn3merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn3merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn4merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn4merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn5merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn5merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn6merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopWTasyn6merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree3merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree3merWT],ParameterGroup=Parameters,Parameter=k_LampFreeWTasyn" value="0.0003044571674" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_LampFreeWTasyn],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree4merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree4merWT],ParameterGroup=Parameters,Parameter=k_LampFreeWTasyn" value="0.0003044571674" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_LampFreeWTasyn],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree5merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree5merWT],ParameterGroup=Parameters,Parameter=k_LampFreeWTasyn" value="0.0003044571674" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_LampFreeWTasyn],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree6merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree6merWT],ParameterGroup=Parameters,Parameter=k_LampFreeWTasyn" value="0.0003044571674" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_LampFreeWTasyn],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree7merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree7merWT],ParameterGroup=Parameters,Parameter=k_LampFreeWTasyn" value="0.0003044571674" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_LampFreeWTasyn],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree8merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[LampFree8merWT],ParameterGroup=Parameters,Parameter=k_LampFreeWTasyn" value="0.0003044571674" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_LampFreeWTasyn],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn8merBindOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn8merBindOnLamp],ParameterGroup=Parameters,Parameter=k_WTOligBindOnLamp" value="4e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTOligBindOnLamp],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn3merBindOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn3merBindOnLamp],ParameterGroup=Parameters,Parameter=k_WTOligBindOnLamp" value="4e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTOligBindOnLamp],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn4merBindOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn4merBindOnLamp],ParameterGroup=Parameters,Parameter=k_WTOligBindOnLamp" value="4e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTOligBindOnLamp],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn6merBindOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn6merBindOnLamp],ParameterGroup=Parameters,Parameter=k_WTOligBindOnLamp" value="4e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_WTOligBindOnLamp],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModWTasynCMAInhibition]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModWTasynCMAInhibition],ParameterGroup=Parameters,Parameter=k_DopModWTasynLampBind" value="7.671599700000001e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DopModWTasynLampBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn4Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn4Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn3Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn3Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn2Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn2Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn5Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn5Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn6Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn6Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn7Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn7Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn8Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn8Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn2merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn2merFormOnLamp],ParameterGroup=Parameters,Parameter=k_2merForm" value="1.462941015e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_2merForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn3merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn3merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn4merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn4merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn5merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn5merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn6merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn6merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn7merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn7merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn8merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn8merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn9merFormOnLamp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasyn9merFormOnLamp],ParameterGroup=Parameters,Parameter=k_OligomerForm" value="3.350497192e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligomerForm],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree3merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree3merWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree4merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree4merWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree5merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree5merWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree6merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree6merWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree7merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree7merWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree8merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree8merWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree9merWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree9merWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree3merDopWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree3merDopWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree4merDopWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree4merDopWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree5merDopWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree5merDopWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree6merDopWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree6merDopWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree7merDopWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree7merDopWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree8merDopWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree8merDopWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree9merDopWT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[ProtFree9merDopWT],ParameterGroup=Parameters,Parameter=k_ProtOligDegr" value="0.000370096" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProtOligDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynHigherPSCprotInh]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[WTasynHigherPSCprotInh],ParameterGroup=Parameters,Parameter=k_ProteasomeBind" value="3.424693672e-09" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_ProteasomeBind],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod9merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod9merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod8merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod8merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod7merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod7merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod6merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod6merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod4merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod4merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod5merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod5merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod3merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod3merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod2merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopMod2merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[9merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[9merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[8merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[8merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[7merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[7merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[6merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[6merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[5merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[5merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[4merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[4merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[3merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[3merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[2merDis]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[2merDis],ParameterGroup=Parameters,Parameter=k_DisRate" value="4.999533748e-07" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_DisRate],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AggregGrowth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AggregGrowth],ParameterGroup=Parameters,Parameter=k1" value="4.90556e-07" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[AutophagosomeUptakeWTasyn],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn1Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyWTasyn1Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[DopModAutophagosomeUptake],ParameterGroup=Parameters,Parameter=k_OligAutophagUptake" value="2.39034347e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_OligAutophagUptake],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn1Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Reactions[M/autophagyDopModWTasyn1Degr],ParameterGroup=Parameters,Parameter=k_M_autophagyDegr" value="0.1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[k_M_autophagyDegr],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_161"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_171"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_159"/>
      <StateTemplateVariable objectReference="Metabolite_173"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_167"/>
      <StateTemplateVariable objectReference="Metabolite_163"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_175"/>
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_169"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_157"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_165"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_179"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_177"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
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
      <StateTemplateVariable objectReference="ModelValue_13"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1650 953 1500 200 8 8 8 8 8 8 8 8 8 8 22 8 8 8 0 0 0 0 750 0 0 0 0 0 0 0 0 0 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 112 2603 22 1 1 1 1 1 4.999533748e-07 1.462941015e-09 7.671599700000001e-09 0.0003044571674 2.39034347e-08 3.350497192e-08 3.424693672e-09 0.000370096 6.865455081e-07 4e-06 0.1 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="60"/>
        <Parameter name="Duration" type="float" value="600000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="1"/>
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
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
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
    <PlotSpecification name="Figure 7" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="HigherWTasynSPC.ParticleNumber|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Cytosol],Vector=Metabolites[HigherWTasynSPC],Reference=ParticleNumber"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Lamp2a.ParticleNumber|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Compartments[Lysosome],Vector=Metabolites[Lamp2a],Reference=ParticleNumber"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Total_Cytosolic_WTASYN_Dimer]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[Total_Cytosolic_WTASYN_Dimer],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Total_Cytosolic_WTASYN_Oligomers]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Ouzounoglou2014 - Modeling of alpha-synuclein effects on neuronal homeostasis,Vector=Values[Total_Cytosolic_WTASYN_Oligomers],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="../BIOMD0000000559_20141204163050.xml">
    <SBMLMap SBMLid="Total_Cytosolic_WTASYN_Dimer" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Total_Cytosolic_WTASYN_Monomer" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="Total_Cytosolic_WTASYN_Oligomers" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="c1" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="c2" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="c3" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="default" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="k_2merForm" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="k_DisRate" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="k_DopModWTasynLampBind" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="k_LampFreeWTasyn" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="k_M_autophagyDegr" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="k_OligAutophagUptake" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="k_OligomerForm" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="k_ProtOligDegr" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="k_ProteasomeBind" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="k_WTOligBindOnLamp" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="k_WTasyn1_2merBindOnLamp" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="re1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re10" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="re100" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="re101" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="re102" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="re103" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="re104" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="re105" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="re106" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="re107" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="re108" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="re109" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="re11" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re110" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="re111" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="re112" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="re113" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="re114" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="re115" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="re116" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="re117" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="re118" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="re119" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re120" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="re121" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="re122" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="re123" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="re124" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="re125" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="re126" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="re127" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="re128" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="re129" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="re13" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re130" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="re131" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="re132" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="re133" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="re134" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="re135" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="re136" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="re137" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="re14" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re16" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re17" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re18" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="re19" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="re2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="re21" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="re22" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="re23" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="re24" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="re25" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="re26" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="re27" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="re28" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="re29" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="re3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re30" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="re31" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="re32" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="re33" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="re34" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="re35" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="re36" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="re37" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="re38" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="re4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re40" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="re41" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="re42" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="re43" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="re44" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="re45" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="re46" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="re47" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="re48" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="re49" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="re5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re50" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="re51" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="re52" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="re53" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="re54" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="re55" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="re56" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="re57" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="re58" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="re59" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="re6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re60" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="re61" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="re62" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="re63" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="re64" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="re65" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="re66" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="re67" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="re68" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="re69" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="re7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="re70" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="re71" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="re72" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="re73" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="re74" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="re75" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="re76" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="re77" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="re78" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="re79" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="re8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re80" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="re81" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="re82" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="re83" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="re84" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="re85" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="re86" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="re87" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="re88" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="re89" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="re9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="re90" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="re91" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="re92" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="re93" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="re94" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="re95" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="re96" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="re97" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="re98" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="re99" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="s1" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="s107" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="s108" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="s109" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="s110" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="s111" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="s112" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="s113" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="s17" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="s18" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="s2" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="s20" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="s200" COPASIkey="Metabolite_149"/>
    <SBMLMap SBMLid="s21" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="s211" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="s213" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="s22" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="s23" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="s24" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="s25" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="s26" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="s27" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="s29" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="s3" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="s30" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="s31" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="s32" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="s33" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="s35" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="s381" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="s383" COPASIkey="Metabolite_153"/>
    <SBMLMap SBMLid="s385" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="s387" COPASIkey="Metabolite_157"/>
    <SBMLMap SBMLid="s389" COPASIkey="Metabolite_159"/>
    <SBMLMap SBMLid="s391" COPASIkey="Metabolite_161"/>
    <SBMLMap SBMLid="s393" COPASIkey="Metabolite_163"/>
    <SBMLMap SBMLid="s445" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="s446" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="s447" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="s448" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="s451" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="s473" COPASIkey="Metabolite_165"/>
    <SBMLMap SBMLid="s474" COPASIkey="Metabolite_167"/>
    <SBMLMap SBMLid="s475" COPASIkey="Metabolite_169"/>
    <SBMLMap SBMLid="s476" COPASIkey="Metabolite_171"/>
    <SBMLMap SBMLid="s477" COPASIkey="Metabolite_173"/>
    <SBMLMap SBMLid="s478" COPASIkey="Metabolite_175"/>
    <SBMLMap SBMLid="s479" COPASIkey="Metabolite_177"/>
    <SBMLMap SBMLid="s482" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="s483" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="s484" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="s489" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="s490" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="s491" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="s492" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="s493" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="s494" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="s495" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="s496" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="s498" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="s499" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="s5" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="s500" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="s501" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="s502" COPASIkey="Metabolite_179"/>
    <SBMLMap SBMLid="s51" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="s517" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="s518" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="s519" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="s52" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="s520" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="s521" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="s522" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="s523" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="s524" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="s525" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="s526" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="s527" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="s528" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="s529" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="s53" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="s530" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="s531" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="s533" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="s535" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="s536" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="s6" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="s7" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="s78" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="s85" COPASIkey="Metabolite_9"/>
  </SBMLReference>
</COPASI>
