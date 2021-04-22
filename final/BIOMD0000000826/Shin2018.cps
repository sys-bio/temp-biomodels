<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2019-09-27 12:38:45 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Stattic" type="UserDefined" reversible="unspecified">
      <Expression>
        Stattictot-STAT3uStattic
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="Stattictot" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_263" name="STAT3uStattic" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="STAT3" type="UserDefined" reversible="unspecified">
      <Expression>
        STAT3tot-pSTAT3-STAT3uStattic
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_261" name="STAT3tot" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_262" name="pSTAT3" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_250" name="STAT3uStattic" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for v16" type="UserDefined" reversible="false">
      <Expression>
        (kdeg16+kc16*pCbl*rootCompartment)*cMET*rootCompartment/(Km16+cMET*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="Km16" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="cMET" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_265" name="kc16" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="kdeg16" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="pCbl" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_270" name="rootCompartment" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="PYK2tot" type="UserDefined" reversible="unspecified">
      <Expression>
        PYK2+pPYK2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="PYK2" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_275" name="pPYK2" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for v9" type="UserDefined" reversible="false">
      <Expression>
        (kc9a*pEGFR*rootCompartment+kc9b*pcMET*rootCompartment/(1+EMD/Ki9))*PYK2*rootCompartment/(Km9+PYK2*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="EMD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="Ki9" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="Km9" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="PYK2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_277" name="kc9a" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="kc9b" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="pEGFR" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="pcMET" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_281" name="rootCompartment" order="8" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for v5" type="UserDefined" reversible="false">
      <Expression>
        (Vs5+Vmax5*pSTAT3*rootCompartment/(Km5+pSTAT3*rootCompartment))/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_290" name="Km5" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="Vmax5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="Vs5" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="pSTAT3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_286" name="rootCompartment" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for v13" type="UserDefined" reversible="false">
      <Expression>
        (Vs13+Vmax13*pSTAT3*rootCompartment/(Km13+pSTAT3*rootCompartment))/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Km13" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="Vmax13" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="Vs13" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="pSTAT3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_285" name="rootCompartment" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="ERK" type="UserDefined" reversible="unspecified">
      <Expression>
        ERKtot-pERK
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="ERKtot" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_295" name="pERK" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for v2" type="UserDefined" reversible="false">
      <Expression>
        (Vmax2+kc2*aPTP*rootCompartment)*pEGFR*rootCompartment/(Km2+pEGFR*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="Km2" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="Vmax2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="aPTP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="kc2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="pEGFR" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_299" name="rootCompartment" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for v6" type="UserDefined" reversible="false">
      <Expression>
        kdeg6*PYK2m*rootCompartment/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="PYK2m" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="kdeg6" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="rootCompartment" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for v17" type="UserDefined" reversible="false">
      <Expression>
        (kc17*HGF+caHGF)*cMET*rootCompartment/(Km17+cMET*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_300" name="HGF" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="Km17" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="cMET" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="caHGF" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="kc17" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="rootCompartment" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="EGFR" type="UserDefined" reversible="unspecified">
      <Expression>
        EGFRtot-pEGFR-EGFRub
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="EGFRtot" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_313" name="pEGFR" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_312" name="EGFRub" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for v22" type="UserDefined" reversible="false">
      <Expression>
        Vmax22*aPTP*rootCompartment/(Km22+aPTP*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_309" name="Km22" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="Vmax22" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="aPTP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_315" name="rootCompartment" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for v18" type="UserDefined" reversible="false">
      <Expression>
        Vmax18*pcMET*rootCompartment/(Km18+pcMET*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="Km18" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="Vmax18" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="pcMET" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="rootCompartment" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for v20" type="UserDefined" reversible="false">
      <Expression>
        (Vmax20+kc20*aPTP*rootCompartment)*pCbl*rootCompartment/(Km20+pCbl*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="Km20" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="Vmax20" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="aPTP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_320" name="kc20" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="pCbl" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="rootCompartment" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for v15" type="UserDefined" reversible="false">
      <Expression>
        Vmax15*cMETm*rootCompartment/(Km15+cMETm*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="Km15" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="Vmax15" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_329" name="cMETm" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_328" name="rootCompartment" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Cbl" type="UserDefined" reversible="unspecified">
      <Expression>
        Cbltot-pCbl
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="Cbltot" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_332" name="pCbl" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for v7" type="UserDefined" reversible="false">
      <Expression>
        Vmax7*PYK2m*rootCompartment/(Km7+PYK2m*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_327" name="Km7" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="PYK2m" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_334" name="Vmax7" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="rootCompartment" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="PTP" type="UserDefined" reversible="unspecified">
      <Expression>
        PTPtot-aPTP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="PTPtot" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_338" name="aPTP" order="1" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for v4" type="UserDefined" reversible="false">
      <Expression>
        Vmax4*EGFRub*rootCompartment/(Km4+EGFRub*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="EGFRub" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="Km4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="Vmax4" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="rootCompartment" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for v12" type="UserDefined" reversible="false">
      <Expression>
        (Vmax12+kc12*aPTP*rootCompartment)*pSTAT3*rootCompartment/(Km12+pSTAT3*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_345" name="Km12" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="Vmax12" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="aPTP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_342" name="kc12" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="pSTAT3" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="rootCompartment" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for v14" type="UserDefined" reversible="false">
      <Expression>
        kdeg14*cMETm*rootCompartment/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_353" name="cMETm" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="kdeg14" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_351" name="rootCompartment" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for v24" type="UserDefined" reversible="false">
      <Expression>
        Vmax24*pERK*rootCompartment/(Km24+pERK*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_348" name="Km24" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="Vmax24" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_350" name="pERK" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_354" name="rootCompartment" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for v8" type="UserDefined" reversible="false">
      <Expression>
        kdeg8*PYK2*rootCompartment/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_358" name="PYK2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_357" name="kdeg8" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="rootCompartment" order="2" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for v10" type="UserDefined" reversible="false">
      <Expression>
        (Vmax10+kc10*aPTP*rootCompartment)*pPYK2*rootCompartment/(Km10+pPYK2*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_360" name="Km10" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="Vmax10" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="aPTP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_361" name="kc10" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="pPYK2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_363" name="rootCompartment" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for v3" type="UserDefined" reversible="false">
      <Expression>
        (Vmax3+kc3*pCbl*rootCompartment)*EGFR(EGFRtot,pEGFR*rootCompartment,EGFRub*rootCompartment)/(Km3+EGFR(EGFRtot,pEGFR*rootCompartment,EGFRub*rootCompartment))*Ki3a/(Ki3a+PYK2tot(PYK2*rootCompartment,pPYK2*rootCompartment)/(1+PF396/Ki3b))/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_369" name="EGFRtot" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="EGFRub" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_367" name="Ki3a" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="Ki3b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_365" name="Km3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="PF396" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="PYK2" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_371" name="Vmax3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="kc3" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="pCbl" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_374" name="pEGFR" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_375" name="pPYK2" order="11" role="modifier"/>
        <ParameterDescription key="FunctionParameter_376" name="rootCompartment" order="12" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for v1" type="UserDefined" reversible="false">
      <Expression>
        kc1*(EGF/(1+Gefitinib/Ki1)+caEGF)*EGFR(EGFRtot,pEGFR*rootCompartment,EGFRub*rootCompartment)/(Km1+EGFR(EGFRtot,pEGFR*rootCompartment,EGFRub*rootCompartment))/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_389" name="EGF" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="EGFRtot" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="EGFRub" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_386" name="Gefitinib" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="Ki1" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="Km1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="caEGF" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="kc1" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="pEGFR" order="8" role="product"/>
        <ParameterDescription key="FunctionParameter_380" name="rootCompartment" order="9" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for v25" type="UserDefined" reversible="false">
      <Expression>
        (ka25*STAT3(STAT3tot,pSTAT3*rootCompartment,STAT3uStattic*rootCompartment)*Stattic(Stattictot,STAT3uStattic*rootCompartment)-kd25*STAT3uStattic*rootCompartment)/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_396" name="STAT3tot" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="STAT3uStattic" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_394" name="Stattictot" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="ka25" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="kd25" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="pSTAT3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_390" name="rootCompartment" order="6" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for v21" type="UserDefined" reversible="false">
      <Expression>
        kc21*pEGFR*rootCompartment*PTP(PTPtot,aPTP*rootCompartment)/(Km21+PTP(PTPtot,aPTP*rootCompartment))/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_400" name="Km21" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="PTPtot" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="aPTP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_397" name="kc21" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="pEGFR" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_378" name="rootCompartment" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for v11" type="UserDefined" reversible="false">
      <Expression>
        kc11*(pPYK2*rootCompartment/(1+PF396/Ki3b))*STAT3(STAT3tot,pSTAT3*rootCompartment,STAT3uStattic*rootCompartment)/(Km11+STAT3(STAT3tot,pSTAT3*rootCompartment,STAT3uStattic*rootCompartment))/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_405" name="Ki3b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="Km11" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="PF396" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="STAT3tot" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="STAT3uStattic" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_377" name="kc11" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="pPYK2" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_407" name="pSTAT3" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_408" name="rootCompartment" order="8" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for v23" type="UserDefined" reversible="false">
      <Expression>
        (kc23a*pcMET*rootCompartment/(1+EMD/Ki23)+kc23b*pEGFR*rootCompartment)*ERK(ERKtot,pERK*rootCompartment)/(Km23+ERK(ERKtot,pERK*rootCompartment))/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_417" name="EMD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_416" name="ERKtot" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="Ki23" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="Km23" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="kc23a" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="kc23b" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="pEGFR" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_410" name="pERK" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_409" name="pcMET" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_418" name="rootCompartment" order="9" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for v19" type="UserDefined" reversible="false">
      <Expression>
        kc19*pEGFR*rootCompartment*Cbl(Cbltot,pCbl*rootCompartment)/(Km19+Cbl(Cbltot,pCbl*rootCompartment))/rootCompartment
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_428" name="Cbltot" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="Km19" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="kc19" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="pCbl" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_424" name="pEGFR" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_423" name="rootCompartment" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Shin_2018_EGFR-PYK2-c-Met interaction network_model" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:mamo:MAMO_0000046"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C71732"/>
    <bqbiol:hasTaxon rdf:resource="urn:miriam:taxonomy:9606"/>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:29920512"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-06T17:03:47Z</dcterms:W3CDTF>
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
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lan.k.nguyen@monash.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Nguyen</vCard:Family>
                <vCard:Given>Lan K</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Monash University</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>sungyoung.shin@monash.edu</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Shin</vCard:Family>
                <vCard:Given>Sungyoung</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Monash University</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-06T17:03:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      Systems modelling of the EGFR-PYK2-c-Met interaction network predicted and prioritized synergistic drug combinations for Triple-negative breast cancer
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="rootCompartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-03-06T17:12:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:cl:CL:0000000"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="pEGFR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:40:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000006933"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="EGFRub" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <bqbiol:hasProperty rdf:resource="urn:miriam:pato:PATO:0002216"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-27T11:20:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000006933"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="PYK2m" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:33699"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:ncit:C17020"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:54:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="PYK2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:54:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17020"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="pPYK2" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-27T11:14:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17020"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="pSTAT3" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-27T11:16:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000002089"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="cMETm" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:33699"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:P08581"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-27T11:05:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="cMET" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:33:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:P08581"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="pcMET" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-27T11:09:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:P08581"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="pCbl" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-27T11:20:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18547"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="aPTP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:54:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C17444"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="pERK" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:41:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:pr:PR:000000019"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="STAT3uStattic" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <bqbiol:hasProperty rdf:resource="urn:miriam:chebi:CHEBI:86989"/>
    <bqbiol:hasProperty rdf:resource="urn:miriam:pr:PR:000002089"/>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:40:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="EGF" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="HGF" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="caSTAT3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="kc1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:05:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="Km1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="kc2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Km2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Vmax3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Km3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Ki3a" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Vmax4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="kc3" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Km4" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Vs5" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="Vmax5" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Km5" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="kdeg6" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="Vmax7" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="Km7" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="kc9a" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="kc9b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="Km9" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="Vmax10" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="Km10" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="kdeg8" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="kc11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="Km11" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="kc12" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="Km12" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Vs13" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Vmax13" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="Km13" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="kdeg14" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Vmax15" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Km15" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="kc17" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Km17" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="Vmax18" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="Km18" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="kdeg16" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="kc16" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Km16" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="kc19" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Km19" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="kc20" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Km20" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="kc21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Km21" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Vmax22" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Km22" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Vmax2" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="Vmax12" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="Vmax20" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="kc23a" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="kc23b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="Km23" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="Vmax24" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="Km24" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="kc10" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="Ki9" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="Ki23" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="ka25" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="kd25" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="kalEMD1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="caEGF" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:31:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_65" name="caHGF" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="EGFRtot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:40:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_67" name="STAT3tot" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="Cbltot" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="PTPtot" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="ERKtot" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="Ki1" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="Ki3b" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="Gefitinib" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:35:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_74" name="EMD" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="PF396" simulationType="fixed" addNoise="false">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="Stattictot" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T13:40:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_77" name="pSTAT3_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:05:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_78" name="pERK_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:08:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_79" name="c_Met_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:08:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_80" name="PYK2_max" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:08:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_81" name="pSTAT3_norm" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:09:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[pSTAT3],Reference=Concentration>/&lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[pSTAT3_max],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_82" name="pERK_norm" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_82">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:09:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[pERK],Reference=Concentration>/&lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[pERK_max],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_83" name="c-Met_norm" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:10:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[cMET],Reference=Concentration>/&lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[c_Met_max],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_84" name="PYK2_norm" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_84">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-26T14:10:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[PYK2],Reference=Concentration>/&lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[PYK2_max],Reference=InitialValue>
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
        <dcterms:W3CDTF>2019-09-27T11:24:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18496"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5023" name="EGF" value="10"/>
          <Constant key="Parameter_5022" name="EGFRtot" value="398.107"/>
          <Constant key="Parameter_5021" name="Gefitinib" value="0"/>
          <Constant key="Parameter_5020" name="Ki1" value="1"/>
          <Constant key="Parameter_5019" name="Km1" value="248.886"/>
          <Constant key="Parameter_5018" name="caEGF" value="0.0891251"/>
          <Constant key="Parameter_5017" name="kc1" value="413.048"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:55:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C21018"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5016" name="Km2" value="3.80189"/>
          <Constant key="Parameter_5015" name="Vmax2" value="112.202"/>
          <Constant key="Parameter_5014" name="kc2" value="1406.05"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T12:20:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000224"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5013" name="EGFRtot" value="398.107"/>
          <Constant key="Parameter_5012" name="Ki3a" value="0.0835603"/>
          <Constant key="Parameter_5011" name="Ki3b" value="1"/>
          <Constant key="Parameter_5010" name="Km3" value="2.2856"/>
          <Constant key="Parameter_5009" name="PF396" value="0"/>
          <Constant key="Parameter_5008" name="Vmax3" value="0.000103753"/>
          <Constant key="Parameter_5007" name="kc3" value="10.7895"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:58:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0016579"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5006" name="Km4" value="90.7821"/>
          <Constant key="Parameter_5005" name="Vmax4" value="11.1173"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T12:19:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5004" name="Km5" value="4.74242"/>
          <Constant key="Parameter_5003" name="Vmax5" value="34.0408"/>
          <Constant key="Parameter_5002" name="Vs5" value="26.5461"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="ModelValue_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T12:06:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="kdeg6" value="53.5797"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="v7" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-27T12:19:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000184"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5000" name="Km7" value="3.33426"/>
          <Constant key="Parameter_4999" name="Vmax7" value="3.34965"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T12:08:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4998" name="kdeg8" value="0.0566239"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-26T13:43:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18496"/>
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
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4997" name="EMD" value="0"/>
          <Constant key="Parameter_4996" name="Ki9" value="1.65577"/>
          <Constant key="Parameter_4995" name="Km9" value="34.914"/>
          <Constant key="Parameter_4994" name="kc9a" value="0.463447"/>
          <Constant key="Parameter_4993" name="kc9b" value="0.988553"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="v10" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-27T11:56:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C21018"/>
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
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4992" name="Km10" value="9.14113"/>
          <Constant key="Parameter_4991" name="Vmax10" value="0.530884"/>
          <Constant key="Parameter_4990" name="kc10" value="0.00610942"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:49:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18496"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4989" name="Ki3b" value="1"/>
          <Constant key="Parameter_4988" name="Km11" value="20.6063"/>
          <Constant key="Parameter_4987" name="PF396" value="0"/>
          <Constant key="Parameter_4986" name="STAT3tot" value="144.212"/>
          <Constant key="Parameter_4985" name="kc11" value="0.321366"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="v12" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2019-09-27T11:56:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C21018"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4984" name="Km12" value="11.5878"/>
          <Constant key="Parameter_4983" name="Vmax12" value="7.63836"/>
          <Constant key="Parameter_4982" name="kc12" value="0.000289734"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T12:18:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000183"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4981" name="Km13" value="38.7258"/>
          <Constant key="Parameter_4980" name="Vmax13" value="0.354813"/>
          <Constant key="Parameter_4979" name="Vs13" value="0.0937562"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T12:08:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4978" name="kdeg14" value="4.56037"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T12:19:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:sbo:SBO:0000184"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4977" name="Km15" value="6.45654"/>
          <Constant key="Parameter_4976" name="Vmax15" value="91.4113"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T12:09:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:sbo:SBO:0000179"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4975" name="Km16" value="528.445"/>
          <Constant key="Parameter_4974" name="kc16" value="1.1749"/>
          <Constant key="Parameter_4973" name="kdeg16" value="24.4906"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:50:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18496"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4972" name="HGF" value="0"/>
          <Constant key="Parameter_4971" name="Km17" value="9.81748"/>
          <Constant key="Parameter_4970" name="caHGF" value="0.0090365"/>
          <Constant key="Parameter_4969" name="kc17" value="0.000810961"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="ModelValue_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:57:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C21018"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4968" name="Km18" value="9.95405"/>
          <Constant key="Parameter_4967" name="Vmax18" value="0.0606736"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:49:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18496"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4966" name="Cbltot" value="174.985"/>
          <Constant key="Parameter_4965" name="Km19" value="13.3045"/>
          <Constant key="Parameter_4964" name="kc19" value="52.723"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:57:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C21018"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4963" name="Km20" value="24.322"/>
          <Constant key="Parameter_4962" name="Vmax20" value="0.0483059"/>
          <Constant key="Parameter_4961" name="kc20" value="35.6451"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:54:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C16983"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C64382"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4960" name="Km21" value="52.723"/>
          <Constant key="Parameter_4959" name="PTPtot" value="296.483"/>
          <Constant key="Parameter_4958" name="kc21" value="0.00397192"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:57:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C21018"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4957" name="Km22" value="46.4515"/>
          <Constant key="Parameter_4956" name="Vmax22" value="0.034914"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:48:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C18496"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4955" name="EMD" value="0"/>
          <Constant key="Parameter_4954" name="ERKtot" value="166.725"/>
          <Constant key="Parameter_4950" name="Ki23" value="13.4896"/>
          <Constant key="Parameter_4952" name="Km23" value="2.83139"/>
          <Constant key="Parameter_4949" name="kc23a" value="7.03072e+09"/>
          <Constant key="Parameter_4953" name="kc23b" value="8.43335e+08"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-27T11:57:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:ncit:C21018"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4951" name="Km24" value="0.156675"/>
          <Constant key="Parameter_4948" name="Vmax24" value="4.39542e+09"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Compartment_0"/>
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
        <dcterms:W3CDTF>2019-09-26T14:11:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:hasPart rdf:resource="urn:miriam:chebi:CHEBI:86989"/>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:go:GO:0008144"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4947" name="STAT3tot" value="144.212"/>
          <Constant key="Parameter_4946" name="Stattictot" value="0"/>
          <Constant key="Parameter_4945" name="ka25" value="127.35"/>
          <Constant key="Parameter_4944" name="kd25" value="11.749"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[pEGFR]" value="65649766338499.797" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[EGFRub]" value="4179311555490287" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[PYK2m]" value="374516939896830" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[PYK2]" value="5600121270023154" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[pPYK2]" value="1511653709360712" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[pSTAT3]" value="709667145011451" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[cMETm]" value="13764566471210.621" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[cMET]" value="2813327411319548" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[pcMET]" value="302378316784912.69" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[pCbl]" value="6308614097567490" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[aPTP]" value="297602156871226" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[pERK]" value="402907118538985.13" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Compartments[rootCompartment],Vector=Metabolites[STAT3uStattic]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[EGF]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[HGF]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[caSTAT3]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc1]" value="413.048" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km1]" value="248.886" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc2]" value="1406.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km2]" value="3.8018900000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax3]" value="0.00010375299999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km3]" value="2.2856000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki3a]" value="0.083560300000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax4]" value="11.1173" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc3]" value="10.7895" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km4]" value="90.7821" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vs5]" value="26.546099999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax5]" value="34.040799999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km5]" value="4.7424200000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kdeg6]" value="53.579700000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax7]" value="3.34965" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km7]" value="3.33426" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc9a]" value="0.463447" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc9b]" value="0.98855300000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km9]" value="34.914000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax10]" value="0.53088400000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km10]" value="9.1411300000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kdeg8]" value="0.056623899999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc11]" value="0.32136599999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km11]" value="20.606300000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc12]" value="0.00028973399999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km12]" value="11.5878" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vs13]" value="0.093756199999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax13]" value="0.35481299999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km13]" value="38.7258" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kdeg14]" value="4.5603699999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax15]" value="91.411299999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km15]" value="6.4565400000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc17]" value="0.00081096100000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km17]" value="9.8174799999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax18]" value="0.060673600000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km18]" value="9.9540500000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kdeg16]" value="24.490600000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc16]" value="1.1749000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km16]" value="528.44500000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc19]" value="52.722999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km19]" value="13.304500000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc20]" value="35.645099999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km20]" value="24.321999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc21]" value="0.0039719200000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km21]" value="52.722999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax22]" value="0.034914000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km22]" value="46.451500000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax2]" value="112.202" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax12]" value="7.6383599999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax20]" value="0.048305899999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc23a]" value="7030720000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc23b]" value="843335000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km23]" value="2.8313899999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax24]" value="4395420000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km24]" value="0.15667500000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc10]" value="0.00610942" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki9]" value="1.65577" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki23]" value="13.489599999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[ka25]" value="127.34999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kd25]" value="11.749000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kalEMD1]" value="9311.0799999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[caEGF]" value="0.089125099999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[caHGF]" value="0.0090364999999999994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[EGFRtot]" value="398.10700000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[STAT3tot]" value="144.21199999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Cbltot]" value="174.98500000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[PTPtot]" value="296.483" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[ERKtot]" value="166.72499999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki3b]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Gefitinib]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[EMD]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[PF396]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Stattictot]" value="0" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[pSTAT3_max]" value="128" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[pERK_max]" value="163.59999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[c_Met_max]" value="16.699999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[PYK2_max]" value="14.58" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[pSTAT3_norm]" value="0.0092064843750000007" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[pERK_norm]" value="0.0040895048899755506" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[c-Met_norm]" value="0.27973892215568863" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[PYK2_norm]" value="0.63780658436213988" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=EGF" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[EGF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=EGFRtot" value="398.10700000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[EGFRtot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=Gefitinib" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Gefitinib],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=Ki1" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=Km1" value="248.886" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=caEGF" value="0.089125099999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[caEGF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v1],ParameterGroup=Parameters,Parameter=kc1" value="413.048" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v2],ParameterGroup=Parameters,Parameter=Km2" value="3.8018900000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v2],ParameterGroup=Parameters,Parameter=Vmax2" value="112.202" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v2],ParameterGroup=Parameters,Parameter=kc2" value="1406.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=EGFRtot" value="398.10700000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[EGFRtot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=Ki3a" value="0.083560300000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki3a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=Ki3b" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki3b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=Km3" value="2.2856000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=PF396" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[PF396],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=Vmax3" value="0.00010375299999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v3],ParameterGroup=Parameters,Parameter=kc3" value="10.7895" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=Km4" value="90.7821" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v4],ParameterGroup=Parameters,Parameter=Vmax4" value="11.1173" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax4],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=Km5" value="4.7424200000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=Vmax5" value="34.040799999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v5],ParameterGroup=Parameters,Parameter=Vs5" value="26.546099999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vs5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v6],ParameterGroup=Parameters,Parameter=kdeg6" value="53.579700000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kdeg6],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v7],ParameterGroup=Parameters,Parameter=Km7" value="3.33426" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v7],ParameterGroup=Parameters,Parameter=Vmax7" value="3.34965" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax7],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v8],ParameterGroup=Parameters,Parameter=kdeg8" value="0.056623899999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kdeg8],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=EMD" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[EMD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=Ki9" value="1.65577" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=Km9" value="34.914000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km9],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=kc9a" value="0.463447" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc9a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v9],ParameterGroup=Parameters,Parameter=kc9b" value="0.98855300000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc9b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=Km10" value="9.1411300000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=Vmax10" value="0.53088400000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v10],ParameterGroup=Parameters,Parameter=kc10" value="0.00610942" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc10],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=Ki3b" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki3b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=Km11" value="20.606300000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=PF396" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[PF396],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=STAT3tot" value="144.21199999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[STAT3tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v11],ParameterGroup=Parameters,Parameter=kc11" value="0.32136599999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc11],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=Km12" value="11.5878" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=Vmax12" value="7.6383599999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v12],ParameterGroup=Parameters,Parameter=kc12" value="0.00028973399999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc12],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v13],ParameterGroup=Parameters,Parameter=Km13" value="38.7258" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v13],ParameterGroup=Parameters,Parameter=Vmax13" value="0.35481299999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v13],ParameterGroup=Parameters,Parameter=Vs13" value="0.093756199999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vs13],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v14],ParameterGroup=Parameters,Parameter=kdeg14" value="4.5603699999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kdeg14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v15],ParameterGroup=Parameters,Parameter=Km15" value="6.4565400000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v15],ParameterGroup=Parameters,Parameter=Vmax15" value="91.411299999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v16],ParameterGroup=Parameters,Parameter=Km16" value="528.44500000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v16],ParameterGroup=Parameters,Parameter=kc16" value="1.1749000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v16],ParameterGroup=Parameters,Parameter=kdeg16" value="24.490600000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kdeg16],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v17],ParameterGroup=Parameters,Parameter=HGF" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[HGF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v17],ParameterGroup=Parameters,Parameter=Km17" value="9.8174799999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v17],ParameterGroup=Parameters,Parameter=caHGF" value="0.0090364999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[caHGF],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v17],ParameterGroup=Parameters,Parameter=kc17" value="0.00081096100000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc17],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v18],ParameterGroup=Parameters,Parameter=Km18" value="9.9540500000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v18],ParameterGroup=Parameters,Parameter=Vmax18" value="0.060673600000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax18],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v19],ParameterGroup=Parameters,Parameter=Cbltot" value="174.98500000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Cbltot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v19],ParameterGroup=Parameters,Parameter=Km19" value="13.304500000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v19],ParameterGroup=Parameters,Parameter=kc19" value="52.722999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc19],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v20],ParameterGroup=Parameters,Parameter=Km20" value="24.321999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v20],ParameterGroup=Parameters,Parameter=Vmax20" value="0.048305899999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v20],ParameterGroup=Parameters,Parameter=kc20" value="35.645099999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v21],ParameterGroup=Parameters,Parameter=Km21" value="52.722999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v21],ParameterGroup=Parameters,Parameter=PTPtot" value="296.483" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[PTPtot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v21],ParameterGroup=Parameters,Parameter=kc21" value="0.0039719200000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc21],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=Km22" value="46.451500000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v22],ParameterGroup=Parameters,Parameter=Vmax22" value="0.034914000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax22],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v23],ParameterGroup=Parameters,Parameter=EMD" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[EMD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v23],ParameterGroup=Parameters,Parameter=ERKtot" value="166.72499999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[ERKtot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v23],ParameterGroup=Parameters,Parameter=Ki23" value="13.489599999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Ki23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v23],ParameterGroup=Parameters,Parameter=Km23" value="2.8313899999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km23],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v23],ParameterGroup=Parameters,Parameter=kc23a" value="7030720000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc23a],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v23],ParameterGroup=Parameters,Parameter=kc23b" value="843335000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kc23b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v24],ParameterGroup=Parameters,Parameter=Km24" value="0.15667500000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Km24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v24],ParameterGroup=Parameters,Parameter=Vmax24" value="4395420000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Vmax24],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v25],ParameterGroup=Parameters,Parameter=STAT3tot" value="144.21199999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[STAT3tot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v25],ParameterGroup=Parameters,Parameter=Stattictot" value="0" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[Stattictot],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v25],ParameterGroup=Parameters,Parameter=ka25" value="127.34999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[ka25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Reactions[v25],ParameterGroup=Parameters,Parameter=kd25" value="11.749000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[kd25],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 5600121270023154 2813327411319548 374516939896830 65649766338499.797 709667145011451 13764566471210.621 4179311555490287 6308614097567490 297602156871226 402907118538985.13 302378316784912.69 1511653709360712 0 0.0092064843750000007 0.0040895048899755506 0.27973892215568863 0.63780658436213988 1 10 0 0 413.048 248.886 1406.05 3.8018900000000002 0.00010375299999999999 2.2856000000000001 0.083560300000000004 11.1173 10.7895 90.7821 26.546099999999999 34.040799999999997 4.7424200000000001 53.579700000000003 3.34965 3.33426 0.463447 0.98855300000000002 34.914000000000001 0.53088400000000002 9.1411300000000004 0.056623899999999998 0.32136599999999999 20.606300000000001 0.00028973399999999999 11.5878 0.093756199999999998 0.35481299999999999 38.7258 4.5603699999999998 91.411299999999997 6.4565400000000004 0.00081096100000000002 9.8174799999999998 0.060673600000000001 9.9540500000000005 24.490600000000001 1.1749000000000001 528.44500000000005 52.722999999999999 13.304500000000001 35.645099999999999 24.321999999999999 0.0039719200000000003 52.722999999999999 0.034914000000000001 46.451500000000003 112.202 7.6383599999999996 0.048305899999999999 7030720000 843335000 2.8313899999999999 4395420000 0.15667500000000001 0.00610942 1.65577 13.489599999999999 127.34999999999999 11.749000000000001 9311.0799999999999 0.089125099999999999 0.0090364999999999994 398.10700000000003 144.21199999999999 174.98500000000001 296.483 166.72499999999999 1 1 0 0 0 0 128 163.59999999999999 16.699999999999999 14.58 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="60000"/>
        <Parameter name="StepSize" type="float" value="0.024"/>
        <Parameter name="Duration" type="float" value="1440"/>
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
    <PlotSpecification name="Shin2018_Figure_1_K" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[pSTAT3_norm]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[pSTAT3_norm],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Shin2018_Figure_1_L" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[pERK_norm]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[pERK_norm],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Shin2018_Figure_1_M" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[c-Met_norm]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[c-Met_norm],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Shin2018_Figure_1_N" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[PYK2_norm]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Shin_2018_EGFR-PYK2-c-Met interaction network_model,Vector=Values[PYK2_norm],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Shin2018 v0.0.xml">
    <SBMLMap SBMLid="Cbl" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Cbltot" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="EGF" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="EGFR" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="EGFRtot" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="EGFRub" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="EMD" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="ERK" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="ERKtot" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="Function_for_v1" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_v10" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_v11" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_for_v12" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_v13" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_v14" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_v15" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_v16" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_v17" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_v18" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_v19" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_for_v2" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Function_for_v20" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_v21" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_v22" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_v23" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_for_v24" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_v25" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_v3" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_v4" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_v5" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_v6" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_v7" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_v8" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_v9" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Gefitinib" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="HGF" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Ki1" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="Ki23" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="Ki3a" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="Ki3b" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="Ki9" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="Km1" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Km10" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="Km11" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="Km12" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Km13" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="Km15" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Km16" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Km17" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Km18" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="Km19" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="Km2" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="Km20" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Km21" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Km22" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Km23" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="Km24" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="Km3" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="Km4" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="Km5" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="Km7" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="Km9" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="PF396" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="PTP" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="PTPtot" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="PYK2" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="PYK2m" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="PYK2tot" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="STAT3" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="STAT3tot" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="STAT3uStattic" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Stattic" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Stattictot" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="Vmax10" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="Vmax12" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="Vmax13" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="Vmax15" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Vmax18" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="Vmax2" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="Vmax20" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="Vmax22" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="Vmax24" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="Vmax3" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Vmax4" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="Vmax5" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="Vmax7" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="Vs13" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Vs5" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="aPTP" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="cMET" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="cMETm" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="caEGF" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="caHGF" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="caSTAT3" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="ka25" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="kalEMD1" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="kc1" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="kc10" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="kc11" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="kc12" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="kc16" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kc17" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="kc19" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="kc2" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="kc20" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="kc21" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="kc23a" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="kc23b" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="kc3" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="kc9a" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="kc9b" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="kd25" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="kdeg14" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="kdeg16" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="kdeg6" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="kdeg8" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="pCbl" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="pEGFR" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="pERK" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="pPYK2" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="pSTAT3" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="pcMET" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="rootCompartment" COPASIkey="Compartment_0"/>
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
