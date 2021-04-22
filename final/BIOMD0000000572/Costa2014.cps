<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.14 (Build 89) (http://www.copasi.org) at 2015-03-26 16:31:44 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="14" versionDevel="89" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="function_4_PTS_Glc" type="UserDefined" reversible="false">
      <Expression>
        Pint/(Pint+kaPint_PTS_Glc)*(kiFBP_PTS_Glc/(FBP+kiFBP_PTS_Glc))*Vmax_PTS_Glc*(Glucose/kmGlucose_PTS_Glc)*(PEP/kmPEP_PTS_Glc)/((1+Glucose/kmGlucose_PTS_Glc)*(1+PEP/kmPEP_PTS_Glc)+(1+G6P/kmG6P_PTS_Glc)*(1+PYR/kmPYR_PTS_Glc)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="FBP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_271" name="G6P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_270" name="Glucose" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_269" name="PEP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_268" name="PYR" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_267" name="Pint" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_266" name="Vmax_PTS_Glc" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="kaPint_PTS_Glc" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="kiFBP_PTS_Glc" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="kmG6P_PTS_Glc" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="kmGlucose_PTS_Glc" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="kmPEP_PTS_Glc" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="kmPYR_PTS_Glc" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function_4_ATPase" type="UserDefined" reversible="false">
      <Expression>
        Vmax_ATPase*((ATP/kmATP_ATPase)^nATPase/((ATP/kmATP_ATPase)^nATPase+1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="ATP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="Vmax_ATPase" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="kmATP_ATPase" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="nATPase" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function_4_P_transp" type="UserDefined" reversible="false">
      <Expression>
        kiPint_Ptransport/(Pint+kiPint_Ptransport)*Vmax_Ptransport*(ATP/kmATP_Ptransport)*(Pext/kmPext_Ptransport)/((1+Pext/kmPext_Ptransport)*(1+ATP/kmATP_Ptransport)+(1+Pint/kmPint_Ptransport+(Pint/kmPint_Ptransport)^2)*(1+ADP/kmADP_Ptransport)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="ADP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_285" name="ATP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_284" name="Pext" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_283" name="Pint" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_282" name="Vmax_Ptransport" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="kiPint_Ptransport" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="kmADP_Ptransport" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="kmATP_Ptransport" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="kmPext_Ptransport" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="kmPint_Ptransport" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function_4_FBA" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-14T10:03:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vmax_FBA*(FBP/kmFBP_FBA)-Vmax_FBA/Keq_FBA*(G3P^2/kmFBP_FBA))/(1+FBP/kmFBP_FBA+G3P/kmG3P_FBA+(G3P/kmG3P_FBA)^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="FBP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_291" name="G3P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_290" name="Keq_FBA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="Vmax_FBA" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="kmFBP_FBA" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="kmG3P_FBA" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function_4_PGI" type="UserDefined" reversible="true">
      <Expression>
        (Vmax_PGI*(G6P/kmG6P_PGI)-Vmax_PGI/Keq_PGI*(F6P/kmG6P_PGI))/(1+G6P/kmG6P_PGI+F6P/kmF6P_PGI)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="F6P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_297" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_296" name="Keq_PGI" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="Vmax_PGI" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="kmF6P_PGI" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="kmG6P_PGI" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function_4_PFK" type="UserDefined" reversible="false">
      <Expression>
        Vmax_PFK*(F6P/kmF6P_PFK)*(ATP/kmATP_PFK)/((1+F6P/kmF6P_PFK)*(1+ATP/kmATP_PFK)+(1+FBP/kmFBP_PFK)*(1+ADP/kmADP_PFK)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="ADP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_306" name="ATP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_305" name="F6P" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_304" name="FBP" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_303" name="Vmax_PFK" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="kmADP_PFK" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_301" name="kmATP_PFK" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="kmF6P_PFK" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="kmFBP_PFK" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function_4_ENO" type="UserDefined" reversible="true">
      <Expression>
        (Vmax_ENO*(BPG/kmBPG_ENO)*(ADP/kmADP_ENO)-Vmax_ENO/Keq_ENO*(PEP/kmBPG_ENO)*(ATP/kmADP_ENO))/((1+BPG/kmBPG_ENO)*(1+ADP/kmADP_ENO)+(1+PEP/kmPEP_ENO)*(1+ATP/kmATP_ENO)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_316" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_315" name="BPG" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="Keq_ENO" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="PEP" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_312" name="Vmax_ENO" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="kmADP_ENO" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="kmATP_ENO" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="kmBPG_ENO" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="kmPEP_ENO" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function_4_GAPDH" type="UserDefined" reversible="true">
      <Expression>
        (Vmax_GAPDH*(G3P/kmG3P_GAPDH)*(NAD/kmNAD_GAPDH)*(Pint/kmPint_GAPDH)-Vmax_GAPDH/Keq_GAPDH*(BPG/kmG3P_GAPDH)*(NADH/kmNAD_GAPDH)*(1/kmPint_GAPDH))/((1+G3P/kmG3P_GAPDH)*(1+Pint/kmPint_GAPDH)*(1+NAD/kmNAD_GAPDH)+(1+BPG/kmBPG_GAPDH)*(1+NADH/kmNADH_GAPDH)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_329" name="BPG" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_328" name="G3P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="Keq_GAPDH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="NAD" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="NADH" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_324" name="Pint" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_323" name="Vmax_GAPDH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="kmBPG_GAPDH" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="kmG3P_GAPDH" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="kmNADH_GAPDH" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="kmNAD_GAPDH" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="kmPint_GAPDH" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function_4_LDH" type="UserDefined" reversible="false">
      <Expression>
        FBP/(FBP+kaFBP_LDH)*(kiPint_LDH/(Pint+kiPint_LDH))*Vmax_LDH*(PYR/kmPYR_LDH)*(NADH/kmNADH_LDH)/((1+PYR/kmPYR_LDH)*(1+NADH/kmNADH_LDH)+(1+Lactate/kmLactate_LDH)*(1+NAD/kmNAD_LDH)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_342" name="FBP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_341" name="Lactate" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_340" name="NAD" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_339" name="NADH" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_338" name="PYR" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="Pint" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_336" name="Vmax_LDH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="kaFBP_LDH" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="kiPint_LDH" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="kmLactate_LDH" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="kmNADH_LDH" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_331" name="kmNAD_LDH" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_330" name="kmPYR_LDH" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function_4_PYK" type="UserDefined" reversible="false">
      <Expression>
        FBP/(FBP+kaFBP_PYK)*(kiPint_PYK^nPYK/(Pint^nPYK+kiPint_PYK^nPYK))*Vmax_PYK*(ADP/kmADP_PYK)*(PEP/kmPEP_PYK)/((1+ADP/kmADP_PYK)*(1+PEP/kmPEP_PYK)+(1+ATP/kmATP_PYK)*(1+PYR/kmPYR_PYK)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_355" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_354" name="FBP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_353" name="PEP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_352" name="PYR" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_351" name="Pint" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_350" name="Vmax_PYK" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="kaFBP_PYK" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="kiPint_PYK" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="kmADP_PYK" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="kmATP_PYK" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="kmPEP_PYK" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="kmPYR_PYK" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="nPYK" order="13" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function_4_AE" type="UserDefined" reversible="false">
      <Expression>
        kiATP_AE/(ATP+kiATP_AE)*Vmax_AE*(AcetCoA/kmAcetCoA_AE)*(NADH/kmNADH_AE)^2/((1+NADH/kmNADH_AE+(NADH/kmNADH_AE)^2)*(1+AcetCoA/kmAcetCoA_AE)+(1+Ethanol/kmEthanol_AE)*(1+CoA/kmCoA_AE)*(1+NAD/kmNAD_AE+(NAD/kmNAD_AE)^2)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_369" name="ATP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_368" name="AcetCoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_367" name="CoA" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_366" name="Ethanol" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_365" name="NAD" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_364" name="NADH" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_363" name="Vmax_AE" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="kiATP_AE" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_361" name="kmAcetCoA_AE" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_360" name="kmCoA_AE" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="kmEthanol_AE" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="kmNADH_AE" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="kmNAD_AE" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_ALS" type="UserDefined" reversible="true">
      <Expression>
        (Vmax_ALS*(PYR/kmPYR_ALS)^2-Vmax_ALS/Keq_ALS*(Acetoin/kmPYR_ALS))/(1+PYR/kmPYR_ALS+(PYR/kmPYR_ALS)^2+1+Acetoin/kmAcetoin_ALS-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="Acetoin" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_374" name="Keq_ALS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="PYR" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_372" name="Vmax_ALS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="kmAcetoin_ALS" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="kmPYR_ALS" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_MPD" type="UserDefined" reversible="true">
      <Expression>
        kiF6P_MPD/(F6P+kiF6P_MPD)*(Vmax_MPD*(F6P/kmF6P_MPD)*(NADH/kmNADH_MPD)-Vmax_MPD/Keq_MPD*(Mannitol1Phosphate/kmF6P_MPD)*(NAD/kmNADH_MPD))/((1+F6P/kmF6P_MPD)*(1+NADH/kmNADH_MPD)+(1+Mannitol1Phosphate/kmMannitol1Phoshate_MPD)*(1+NAD/kmNAD_MPD)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_386" name="F6P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_385" name="Keq_MPD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="Mannitol1Phosphate" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_383" name="NAD" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_382" name="NADH" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_381" name="Vmax_MPD" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="kiF6P_MPD" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_379" name="kmF6P_MPD" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="kmMannitol1Phoshate_MPD" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="kmNADH_MPD" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="kmNAD_MPD" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_PFL" type="UserDefined" reversible="true">
      <Expression>
        kiG3P_PFL/(G3P+kiG3P_PFL)*(Vmax_PFL*(PYR/kmPYR_PFL)*(CoA/KmCoA_PFL)-Vmax_PFL/Keq_PFL*(AcetCoA/kmPYR_PFL)*(Formate/KmCoA_PFL))/((1+PYR/kmPYR_PFL)*(1+CoA/KmCoA_PFL)+(1+AcetCoA/kmAcetCoA_PFL)*(1+Formate/kmFormate_PFL)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_398" name="AcetCoA" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_397" name="CoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="Formate" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_395" name="G3P" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_394" name="Keq_PFL" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="KmCoA_PFL" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="PYR" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_391" name="Vmax_PFL" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="kiG3P_PFL" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="kmAcetCoA_PFL" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="kmFormate_PFL" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="kmPYR_PFL" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_ACK" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-16T17:34:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax_ACK*(AcetCoA/kmAcetCoA_ACK)*(ADP/kmADP_ACK)/((1+AcetCoA/kmAcetCoA_ACK)*(1+ADP/kmADP_ACK)+(1+Acetate/kmAcetate_ACK)*(1+ATP/kmATP_ACK)*(1+CoA/kmCoA_ACK)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_408" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_407" name="AcetCoA" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_406" name="Acetate" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_405" name="CoA" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_404" name="Vmax_ACK" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_403" name="kmADP_ACK" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_402" name="kmATP_ACK" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="kmAcetCoA_ACK" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="kmAcetate_ACK" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="kmCoA_ACK" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_PTS_Man" type="UserDefined" reversible="false">
      <Expression>
        Vmax_PTS_Man*(Mannitol_Ext/kmMannitolExt_PTS_Man)*(PEP/kmPEP_PTS_Man)/((1+Mannitol_Ext/kmMannitolExt_PTS_Man)*(1+PEP/kmPEP_PTS_Man)+(1+Mannitol1Phosphate/kmMannitol1Phosphate_PTS_Man)*(1+PYR/kmPYR_PTS_Man)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_418" name="Mannitol1Phosphate" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_417" name="Mannitol_Ext" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_416" name="PEP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_415" name="PYR" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_414" name="Vmax_PTS_Man" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="kmMannitol1Phosphate_PTS_Man" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="kmMannitolExt_PTS_Man" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="kmPEP_PTS_Man" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_410" name="kmPYR_PTS_Man" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_BDH" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-16T17:33:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vmax_BDH*(Acetoin/kmAcetoin_BDH)*(NADH/kmNADH_BDH)-Vmax_BDH/Keq_BDH*(Butanediol/kmAcetoin_BDH)*(NAD/kmNADH_BDH))/((1+Acetoin/kmAcetoin_BDH)*(1+NADH/kmNADH_BDH)+(1+Butanediol/kmButanediol_BDH)*(1+NAD/kmNAD_BDH)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_428" name="Acetoin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_427" name="Butanediol" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_426" name="Keq_BDH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="NAD" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_424" name="NADH" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="Vmax_BDH" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="kmAcetoin_BDH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="kmButanediol_BDH" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="kmNADH_BDH" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="kmNAD_BDH" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_Acetoin_transp" type="UserDefined" reversible="false">
      <Expression>
        Vmax_Acetoin_transp*(Acetoin/kmAcetoin_Acetoin_transp)/(1+Acetoin/kmAcetoin_Acetoin_transp+Acetoin_Ext/kmAcetoin_Ext_Acetoin_transp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_433" name="Acetoin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_432" name="Acetoin_Ext" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_431" name="Vmax_Acetoin_transp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="kmAcetoin_Acetoin_transp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="kmAcetoin_Ext_Acetoin_transp" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_Mannitol_transp" type="UserDefined" reversible="false">
      <Expression>
        Vmax_Mannitol_transp*(Mannitol/kmMannitol_Mannitol_transp)/(1+Mannitol/kmMannitol_Mannitol_transp+Mannitol_Ext/kmMannitol_Ext_Mannitol_transp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_438" name="Mannitol" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_437" name="Mannitol_Ext" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_436" name="Vmax_Mannitol_transp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="kmMannitol_Ext_Mannitol_transp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_434" name="kmMannitol_Mannitol_transp" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_MP" type="UserDefined" reversible="false">
      <Expression>
        Vmax_MP*(Mannitol1Phosphate/kmMannitol1Phosphate_MP)/(1+Mannitol1Phosphate/kmMannitol1Phosphate_MP+1+Mannitol/kmMannitol_MP-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_443" name="Mannitol" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_442" name="Mannitol1Phosphate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_441" name="Vmax_MP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="kmMannitol1Phosphate_MP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="kmMannitol_MP" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function_4_FBPase" type="UserDefined" reversible="false">
      <Expression>
        Vmax_FBPase*(FBP/kmFBP_FBPase)/(FBP/kmFBP_FBPase+(1+F6P/kmF6P_FBPase)*(1+Pint/kmPint_FBPase))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_450" name="F6P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_449" name="FBP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_448" name="Pint" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_447" name="Vmax_FBPase" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_446" name="kmF6P_FBPase" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="kmFBP_FBPase" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="kmPint_FBPase" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_4" name="Costa2014 - Computational Model of L. lactis Metabolism" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_4">
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:24413179"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-26T15:19:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:encodes>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:taxonomy:1358"/>
      </rdf:Bag>
    </CopasiMT:encodes>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:MODEL1503180000"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <p>
      <b>Computational Model of <i>L. lactis</i> Metabolism</b> created by Rafael Costa. INESC-ID, Lisboa, Portugal.</p>
  <p>Published in Rafael S. Costa, Andras Hartmann, Paula Gaspar, Ana R. Neves and Susana Vinga,
An extended dynamic model of <i>Lactococcus lactis</i> metabolism for mannitol and 2,3-butanediol production. <i>Molecular BioSystems</i> 10, 628-639 (2014) |
      <a href="http://pubs.rsc.org/en/content/articlelanding/2014/mb/c3mb70265k#!divAbstract">  doi:10.1039/C3MB70265K </a>
</p>
</body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Intracellular" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO%3A0005622"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_3" name="Extracellular" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:go:GO%3A0005576"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_1" name="G6P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A17665"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="ATP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A15422"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="ADP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A16761"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Pint" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A18367"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="F6P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A15946"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="FBP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A16905"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="G3P" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A17138"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="BPG" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A16001"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="PEP" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A18021"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="NAD" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A15846"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="NADH" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A16908"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="PYR" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A15361"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="AcetCoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-14T10:10:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Acetoin" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A15688"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="Mannitol" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A29864"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Mannitol1Phosphate" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A16298"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="CoA" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A15346"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Pext" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A18367"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="Lactate" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-16T17:01:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="Ethanol" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A16236"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="Acetate" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-14T10:10:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Butanediol" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A52684"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="Glucose" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-16T18:42:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="Acetoin_Ext" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A15688"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="Mannitol_Ext" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A29864"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="Formate" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:chebi:CHEBI%3A15740"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="PTS_Glc" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4543" name="Vmax_PTS_Glc" value="3.71082"/>
          <Constant key="Parameter_4544" name="kaPint_PTS_Glc" value="0.070909"/>
          <Constant key="Parameter_4545" name="kiFBP_PTS_Glc" value="1.16937"/>
          <Constant key="Parameter_4546" name="kmG6P_PTS_Glc" value="0.284871"/>
          <Constant key="Parameter_4547" name="kmGlucose_PTS_Glc" value="0.0485045"/>
          <Constant key="Parameter_4548" name="kmPEP_PTS_Glc" value="0.305604"/>
          <Constant key="Parameter_4549" name="kmPYR_PTS_Glc" value="1.95993"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4543"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4544"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Parameter_4545"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Parameter_4546"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Parameter_4547"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_4548"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4549"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="ATPase" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4550" name="Vmax_ATPase" value="3.2901"/>
          <Constant key="Parameter_4551" name="kmATP_ATPase" value="4.34159"/>
          <Constant key="Parameter_4552" name="nATPase" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4550"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_4551"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4552"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="P_transp" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="2"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4553" name="Vmax_Ptransport" value="3.59588"/>
          <Constant key="Parameter_4554" name="kiPint_Ptransport" value="0.561093"/>
          <Constant key="Parameter_4555" name="kmADP_Ptransport" value="0.192278"/>
          <Constant key="Parameter_4556" name="kmATP_Ptransport" value="0.523288"/>
          <Constant key="Parameter_4557" name="kmPext_Ptransport" value="0.749898"/>
          <Constant key="Parameter_4558" name="kmPint_Ptransport" value="0.30336"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_4553"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_4554"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_4555"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_4556"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_4557"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_4558"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="PGI" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4559" name="Keq_PGI" value="0.43"/>
          <Constant key="Parameter_4560" name="Vmax_PGI" value="21.681"/>
          <Constant key="Parameter_4561" name="kmF6P_PGI" value="3.13894"/>
          <Constant key="Parameter_4562" name="kmG6P_PGI" value="0.199409"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_4559"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_4560"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_4561"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_4562"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="PFK" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4563" name="Vmax_PFK" value="18.3577"/>
          <Constant key="Parameter_4564" name="kmADP_PFK" value="10.7357"/>
          <Constant key="Parameter_4565" name="kmATP_PFK" value="0.0616607"/>
          <Constant key="Parameter_4566" name="kmF6P_PFK" value="1.01973"/>
          <Constant key="Parameter_4567" name="kmFBP_PFK" value="86.8048"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Parameter_4563"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Parameter_4564"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Parameter_4565"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_4566"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_4567"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="FBA" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4568" name="Keq_FBA" value="0.056"/>
          <Constant key="Parameter_4569" name="Vmax_FBA" value="56.1311"/>
          <Constant key="Parameter_4570" name="kmFBP_FBA" value="0.300745"/>
          <Constant key="Parameter_4573" name="kmG3P_FBA" value="10.1058"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_4568"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_4569"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_4570"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_4573"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="GAPDH" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4572" name="Keq_GAPDH" value="0.0007"/>
          <Constant key="Parameter_4574" name="Vmax_GAPDH" value="30.0058"/>
          <Constant key="Parameter_4571" name="kmBPG_GAPDH" value="0.0481603"/>
          <Constant key="Parameter_4575" name="kmG3P_GAPDH" value="0.181788"/>
          <Constant key="Parameter_4576" name="kmNADH_GAPDH" value="0.643019"/>
          <Constant key="Parameter_4577" name="kmNAD_GAPDH" value="0.0477445"/>
          <Constant key="Parameter_4578" name="kmPint_GAPDH" value="6.75302"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Parameter_4572"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_4574"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_4571"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Parameter_4575"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Parameter_4576"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_4577"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Parameter_4578"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="ENO" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4579" name="Keq_ENO" value="27.55"/>
          <Constant key="Parameter_4580" name="Vmax_ENO" value="29.132"/>
          <Constant key="Parameter_4581" name="kmADP_ENO" value="0.413195"/>
          <Constant key="Parameter_4582" name="kmATP_ENO" value="0.748238"/>
          <Constant key="Parameter_4583" name="kmBPG_ENO" value="0.0241572"/>
          <Constant key="Parameter_4584" name="kmPEP_ENO" value="1.38899"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Parameter_4579"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_4580"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_4581"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Parameter_4582"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Parameter_4583"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Parameter_4584"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="PYK" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4585" name="Vmax_PYK" value="2.22404"/>
          <Constant key="Parameter_4586" name="kaFBP_PYK" value="0.0388651"/>
          <Constant key="Parameter_4587" name="kiPint_PYK" value="3.70071"/>
          <Constant key="Parameter_4588" name="kmADP_PYK" value="3.07711"/>
          <Constant key="Parameter_4589" name="kmATP_PYK" value="29.6028"/>
          <Constant key="Parameter_4590" name="kmPEP_PYK" value="0.330583"/>
          <Constant key="Parameter_4596" name="kmPYR_PYK" value="96.4227"/>
          <Constant key="Parameter_4595" name="nPYK" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Parameter_4585"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Parameter_4586"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Parameter_4587"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_4588"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Parameter_4589"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Parameter_4590"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Parameter_4596"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Parameter_4595"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="LDH" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4594" name="Vmax_LDH" value="566.598"/>
          <Constant key="Parameter_4591" name="kaFBP_LDH" value="0.0184011"/>
          <Constant key="Parameter_4592" name="kiPint_LDH" value="0.0676829"/>
          <Constant key="Parameter_4593" name="kmLactate_LDH" value="94.1203"/>
          <Constant key="Parameter_4597" name="kmNADH_LDH" value="0.144443"/>
          <Constant key="Parameter_4598" name="kmNAD_LDH" value="3.08447"/>
          <Constant key="Parameter_4601" name="kmPYR_LDH" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Parameter_4594"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_4591"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Parameter_4592"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_4593"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_4597"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Parameter_4598"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Parameter_4601"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="PDH" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4600" name="Keq_PFL" value="650"/>
          <Constant key="Parameter_4599" name="KmCoA_PFL" value="0.124066"/>
          <Constant key="Parameter_4602" name="Vmax_PFL" value="0.00230934"/>
          <Constant key="Parameter_4603" name="kiG3P_PFL" value="0.511288"/>
          <Constant key="Parameter_4604" name="kmAcetCoA_PFL" value="7.34319"/>
          <Constant key="Parameter_4605" name="kmFormate_PFL" value="54.2693"/>
          <Constant key="Parameter_4606" name="kmPYR_PFL" value="5.77662"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Parameter_4600"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Parameter_4599"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Parameter_4602"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Parameter_4603"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Parameter_4604"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Parameter_4605"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Parameter_4606"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="AE" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="2"/>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4607" name="Vmax_AE" value="2.11844"/>
          <Constant key="Parameter_4608" name="kiATP_AE" value="6.28119"/>
          <Constant key="Parameter_4609" name="kmAcetCoA_AE" value="7.38021"/>
          <Constant key="Parameter_4610" name="kmCoA_AE" value="0.091813"/>
          <Constant key="Parameter_4611" name="kmEthanol_AE" value="2.28106"/>
          <Constant key="Parameter_4612" name="kmNADH_AE" value="0.43127"/>
          <Constant key="Parameter_4613" name="kmNAD_AE" value="1.31442"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Parameter_4607"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Parameter_4608"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Parameter_4609"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_4610"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Parameter_4611"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Parameter_4612"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Parameter_4613"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="AC" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4614" name="Vmax_ACK" value="3.83918"/>
          <Constant key="Parameter_4615" name="kmADP_ACK" value="1.17242"/>
          <Constant key="Parameter_4616" name="kmATP_ACK" value="14.1556"/>
          <Constant key="Parameter_4617" name="kmAcetCoA_ACK" value="0.55824"/>
          <Constant key="Parameter_4618" name="kmAcetate_ACK" value="0.552221"/>
          <Constant key="Parameter_4619" name="kmCoA_ACK" value="0.173388"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Parameter_4614"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Parameter_4615"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Parameter_4616"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Parameter_4617"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Parameter_4618"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Parameter_4619"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="PA" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4620" name="Keq_ALS" value="900000"/>
          <Constant key="Parameter_4621" name="Vmax_ALS" value="0.354581"/>
          <Constant key="Parameter_4622" name="kmAcetoin_ALS" value="0.0495418"/>
          <Constant key="Parameter_4623" name="kmPYR_ALS" value="0.262819"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Parameter_4620"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Parameter_4621"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Parameter_4622"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_4623"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="AB" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4624" name="Keq_BDH" value="1400"/>
          <Constant key="Parameter_4637" name="Vmax_BDH" value="2.28578"/>
          <Constant key="Parameter_4638" name="kmAcetoin_BDH" value="5.62373"/>
          <Constant key="Parameter_4639" name="kmButanediol_BDH" value="1.80684"/>
          <Constant key="Parameter_4640" name="kmNADH_BDH" value="3.54858"/>
          <Constant key="Parameter_4641" name="kmNAD_BDH" value="1.29567"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Parameter_4624"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Parameter_4637"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Parameter_4638"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Parameter_4639"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Parameter_4640"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Parameter_4641"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="MPD" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4642" name="Keq_MPD" value="200"/>
          <Constant key="Parameter_4643" name="Vmax_MPD" value="1.32695"/>
          <Constant key="Parameter_4644" name="kiF6P_MPD" value="22.0284"/>
          <Constant key="Parameter_4531" name="kmF6P_MPD" value="0.321372"/>
          <Constant key="Parameter_4532" name="kmMannitol1Phoshate_MPD" value="0.0891203"/>
          <Constant key="Parameter_4533" name="kmNADH_MPD" value="0.0303446"/>
          <Constant key="Parameter_4534" name="kmNAD_MPD" value="0.373149"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Parameter_4642"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Parameter_4643"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Parameter_4644"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Parameter_4531"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_4532"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Parameter_4533"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Parameter_4534"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="MP" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4535" name="Vmax_MP" value="3.48563"/>
          <Constant key="Parameter_4536" name="kmMannitol1Phosphate_MP" value="3.51571"/>
          <Constant key="Parameter_4537" name="kmMannitol_MP" value="0.238849"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Parameter_4535"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Parameter_4536"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Parameter_4537"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="PTS_Man" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4538" name="Vmax_PTS_Man" value="4.44903"/>
          <Constant key="Parameter_4539" name="kmMannitol1Phosphate_PTS_Man" value="0.362571"/>
          <Constant key="Parameter_4540" name="kmMannitolExt_PTS_Man" value="0.0127321"/>
          <Constant key="Parameter_4541" name="kmPEP_PTS_Man" value="2.20816"/>
          <Constant key="Parameter_4645" name="kmPYR_PTS_Man" value="0.344134"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Parameter_4538"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Parameter_4539"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_4540"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Parameter_4541"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Parameter_4645"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Acetoin_transp" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4646" name="Vmax_Acetoin_transp" value="1.60066"/>
          <Constant key="Parameter_4426" name="kmAcetoin_Acetoin_transp" value="1.89255"/>
          <Constant key="Parameter_4425" name="kmAcetoin_Ext_Acetoin_transp" value="7.05248"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Parameter_4646"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Parameter_4426"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Parameter_4425"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Mannitol_transp" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4424" name="Vmax_Mannitol_transp" value="1.62459"/>
          <Constant key="Parameter_4423" name="kmMannitol_Ext_Mannitol_transp" value="0.940662"/>
          <Constant key="Parameter_4422" name="kmMannitol_Mannitol_transp" value="0.0223502"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Parameter_4424"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Parameter_4423"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Parameter_4422"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="FBPase" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4421" name="Vmax_FBPase" value="0.0970486"/>
          <Constant key="Parameter_4420" name="kmF6P_FBPase" value="1.90796"/>
          <Constant key="Parameter_4419" name="kmFBP_FBPase" value="0.412307"/>
          <Constant key="Parameter_4418" name="kmPint_FBPase" value="0.0109675"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Parameter_4421"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Parameter_4420"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_4419"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Parameter_4418"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]" value="0.047" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[G6P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[ATP]" value="1.383028698287318e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[ADP]" value="5.769979386595314e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Pint]" value="1.08291358096138e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[F6P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[FBP]" value="4.330522161189001e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[G3P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[BPG]" value="3.576177219534769e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[PEP]" value="7.016628328690636e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[NAD]" value="1.3217999014871e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[NADH]" value="57552905377637.09" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[PYR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[AcetCoA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Acetoin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Mannitol]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Mannitol1Phosphate]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[CoA]" value="2.8304066413e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Pext]" value="3.011070895000002e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Lactate]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Ethanol]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Acetate]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Butanediol]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Glucose]" value="4.817713432e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Acetoin_Ext]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Mannitol_Ext]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Formate]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=Vmax_PTS_Glc" value="3.71082" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kaPint_PTS_Glc" value="0.070909" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kiFBP_PTS_Glc" value="1.16937" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kmG6P_PTS_Glc" value="0.284871" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kmGlucose_PTS_Glc" value="0.0485045" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kmPEP_PTS_Glc" value="0.305604" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kmPYR_PTS_Glc" value="1.95993" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ATPase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ATPase],ParameterGroup=Parameters,Parameter=Vmax_ATPase" value="3.2901" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ATPase],ParameterGroup=Parameters,Parameter=kmATP_ATPase" value="4.34159" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ATPase],ParameterGroup=Parameters,Parameter=nATPase" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=Vmax_Ptransport" value="3.59588" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kiPint_Ptransport" value="0.561093" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kmADP_Ptransport" value="0.192278" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kmATP_Ptransport" value="0.523288" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kmPext_Ptransport" value="0.749898" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kmPint_Ptransport" value="0.30336" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Keq_PGI" value="0.43" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Vmax_PGI" value="21.681" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=kmF6P_PGI" value="3.13894" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=kmG6P_PGI" value="0.199409" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Vmax_PFK" value="18.3577" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=kmADP_PFK" value="10.7357" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=kmATP_PFK" value="0.0616607" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=kmF6P_PFK" value="1.01973" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=kmFBP_PFK" value="86.8048" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Keq_FBA" value="0.056" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Vmax_FBA" value="56.1311" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=kmFBP_FBA" value="0.300745" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=kmG3P_FBA" value="10.1058" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Keq_GAPDH" value="0.0007" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Vmax_GAPDH" value="30.0058" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmBPG_GAPDH" value="0.0481603" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmG3P_GAPDH" value="0.181788" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmNADH_GAPDH" value="0.643019" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmNAD_GAPDH" value="0.0477445" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmPint_GAPDH" value="6.75302" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Keq_ENO" value="27.55" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Vmax_ENO" value="29.132" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=kmADP_ENO" value="0.413195" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=kmATP_ENO" value="0.748238" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=kmBPG_ENO" value="0.0241572" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=kmPEP_ENO" value="1.38899" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Vmax_PYK" value="2.22404" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kaFBP_PYK" value="0.0388651" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kiPint_PYK" value="3.70071" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kmADP_PYK" value="3.07711" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kmATP_PYK" value="29.6028" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kmPEP_PYK" value="0.330583" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kmPYR_PYK" value="96.42270000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=nPYK" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=Vmax_LDH" value="566.598" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kaFBP_LDH" value="0.0184011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kiPint_LDH" value="0.0676829" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kmLactate_LDH" value="94.1203" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kmNADH_LDH" value="0.144443" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kmNAD_LDH" value="3.08447" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kmPYR_LDH" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=Keq_PFL" value="650" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=KmCoA_PFL" value="0.124066" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=Vmax_PFL" value="0.00230934" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=kiG3P_PFL" value="0.511288" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=kmAcetCoA_PFL" value="7.34319" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=kmFormate_PFL" value="54.2693" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=kmPYR_PFL" value="5.77662" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=Vmax_AE" value="2.11844" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kiATP_AE" value="6.28119" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmAcetCoA_AE" value="7.38021" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmCoA_AE" value="0.09181300000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmEthanol_AE" value="2.28106" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmNADH_AE" value="0.43127" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmNAD_AE" value="1.31442" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=Vmax_ACK" value="3.83918" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmADP_ACK" value="1.17242" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmATP_ACK" value="14.1556" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmAcetCoA_ACK" value="0.55824" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmAcetate_ACK" value="0.552221" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmCoA_ACK" value="0.173388" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA],ParameterGroup=Parameters,Parameter=Keq_ALS" value="900000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA],ParameterGroup=Parameters,Parameter=Vmax_ALS" value="0.354581" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA],ParameterGroup=Parameters,Parameter=kmAcetoin_ALS" value="0.0495418" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA],ParameterGroup=Parameters,Parameter=kmPYR_ALS" value="0.262819" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=Keq_BDH" value="1400" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=Vmax_BDH" value="2.28578" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=kmAcetoin_BDH" value="5.62373" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=kmButanediol_BDH" value="1.80684" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=kmNADH_BDH" value="3.54858" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=kmNAD_BDH" value="1.29567" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=Keq_MPD" value="200" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=Vmax_MPD" value="1.32695" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kiF6P_MPD" value="22.0284" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kmF6P_MPD" value="0.321372" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kmMannitol1Phoshate_MPD" value="0.0891203" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kmNADH_MPD" value="0.0303446" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kmNAD_MPD" value="0.373149" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MP],ParameterGroup=Parameters,Parameter=Vmax_MP" value="3.48563" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MP],ParameterGroup=Parameters,Parameter=kmMannitol1Phosphate_MP" value="3.51571" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MP],ParameterGroup=Parameters,Parameter=kmMannitol_MP" value="0.238849" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=Vmax_PTS_Man" value="4.44903" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=kmMannitol1Phosphate_PTS_Man" value="0.362571" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=kmMannitolExt_PTS_Man" value="0.0127321" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=kmPEP_PTS_Man" value="2.20816" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=kmPYR_PTS_Man" value="0.344134" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Acetoin_transp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Acetoin_transp],ParameterGroup=Parameters,Parameter=Vmax_Acetoin_transp" value="1.60066" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Acetoin_transp],ParameterGroup=Parameters,Parameter=kmAcetoin_Acetoin_transp" value="1.89255" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Acetoin_transp],ParameterGroup=Parameters,Parameter=kmAcetoin_Ext_Acetoin_transp" value="7.05248" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Mannitol_transp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Mannitol_transp],ParameterGroup=Parameters,Parameter=Vmax_Mannitol_transp" value="1.62459" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Mannitol_transp],ParameterGroup=Parameters,Parameter=kmMannitol_Ext_Mannitol_transp" value="0.940662" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Mannitol_transp],ParameterGroup=Parameters,Parameter=kmMannitol_Mannitol_transp" value="0.0223502" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase],ParameterGroup=Parameters,Parameter=Vmax_FBPase" value="0.0970486" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase],ParameterGroup=Parameters,Parameter=kmF6P_FBPase" value="1.90796" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase],ParameterGroup=Parameters,Parameter=kmFBP_FBPase" value="0.412307" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase],ParameterGroup=Parameters,Parameter=kmPint_FBPase" value="0.0109675" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_4"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 1.3217999014871e+20 1.08291358096138e+21 0 5.769979386595314e+20 0 7.016628328690636e+19 0 0 0 0 0 4.330522161189001e+20 0 0 0 3.011070895000002e+22 4.817713432e+22 0 3.576177219534769e+19 0 57552905377637.09 2.8304066413e+19 0 1.383028698287318e+20 0 0.047 1 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="7800"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="7800"/>
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
    <PlotSpecification name="Figure 2" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[ATP]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[ATP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NADH]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[NADH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PEP]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[PEP],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="../../../Costa2014.xml">
    <SBMLMap SBMLid="ADP" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="ATP" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="AcetCoA" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="Acetate" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="Acetoin" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="Acetoin_Ext" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="BPG" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Butanediol" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="CoA" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="Ethanol" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="F6P" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="FBP" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="Formate" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="G3P" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="G6P" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Glucose" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="Lactate" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="Mannitol" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="Mannitol1Phosphate" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="Mannitol_Ext" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="NAD" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="NADH" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="PEP" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="PYR" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="Pext" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="Pint" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="compartment_1" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="compartment_2" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="function_4_ACK" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="function_4_AE" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="function_4_ALS" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="function_4_ATPase" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_4_Acetoin_transp" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="function_4_BDH" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="function_4_ENO" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_4_FBA" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_4_FBPase" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="function_4_GAPDH" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_4_LDH" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_4_MP" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="function_4_MPD" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_4_Mannitol_transp" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="function_4_PFK" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="function_4_PFL" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_4_PGI" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_4_PTS_Glc" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_4_PTS_Man" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="function_4_PYK" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_4_P_transp" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re13" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re14" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re16" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re17" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re18" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re21" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="re22" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="re23" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re24" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re25" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re26" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re27" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re28" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re29" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re30" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="re31" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="re32" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="re33" COPASIkey="Reaction_20"/>
  </SBMLReference>
</COPASI>
