<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.14 (Build 89) (http://www.copasi.org) at 2015-03-19 15:49:46 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="14" versionDevel="89" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="Function for reaction_1" type="UserDefined" reversible="false">
      <Expression>
        ks_c4*tf/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_254" name="cell" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_264" name="ks_c4" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_258" name="tf" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for reaction_2" type="UserDefined" reversible="false">
      <Expression>
        (ks_c2myc*tf+ks_c2e2f*(S14+S16))/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="S14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_265" name="S16" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_273" name="ks_c2e2f" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="ks_c2myc" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="tf" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for reaction_3" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_c2+kdeg_c2gsk3b*gsk3b)*S3/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_270" name="S3" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_274" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_266" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="kdeg_c2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="kdeg_c2gsk3b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for reaction_4" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_c2+kdeg_c2gsk3b*gsk3b)*S4/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_246" name="S4" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_278" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_272" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_282" name="kdeg_c2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="kdeg_c2gsk3b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for reaction_5" type="UserDefined" reversible="false">
      <Expression>
        (ks_p21p53+ks_p21e2f*S14)*tfp21/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_285" name="S14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_283" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_279" name="ks_p21e2f" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="ks_p21p53" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="tfp21" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for reaction_6" type="UserDefined" reversible="false">
      <Expression>
        kd_p21c2*S3/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_288" name="S3" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_284" name="kd_p21c2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for reaction_7" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_p21erkskp2*erk+kdeg_p21c2skp2*S18+kdeg_p21skp2)*S14*S3/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="S14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="S18" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_291" name="S3" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_301" name="erk" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="kdeg_p21c2skp2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="kdeg_p21erkskp2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="kdeg_p21skp2" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for reaction_8" type="UserDefined" reversible="false">
      <Expression>
        (ks_rb+ks_rbe2f*S14)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_298" name="S14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_302" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_290" name="ks_rb" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="ks_rbe2f" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for reaction_9" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbfree*S1/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="S1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_303" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_296" name="kdeg_rbfree" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for reaction_10" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbbound*S2/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_304" name="S2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_292" name="kdeg_rbbound" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for reaction_11" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbp21*S11*S1/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_307" name="S1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_311" name="S11" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_309" name="kdeg_rbp21" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for reaction_12" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbp21*S11*S2/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_312" name="S11" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="S2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_313" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_308" name="kdeg_rbp21" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for reaction_13" type="UserDefined" reversible="false">
      <Expression>
        (ks_e2fe2f*S14+ks_e2fmyc)*tf/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="S14" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_317" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_316" name="ks_e2fe2f" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="ks_e2fmyc" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="tf" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for reaction_14" type="UserDefined" reversible="false">
      <Expression>
        kdeg_e2fbound*S2/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_322" name="S2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_318" name="kdeg_e2fbound" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for reaction_15" type="UserDefined" reversible="false">
      <Expression>
        kd_rbe2f*S2/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="S2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_325" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_320" name="kd_rbe2f" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for reaction_16" type="UserDefined" reversible="false">
      <Expression>
        kcatp_rbc4*S24*S1^nrb/(Km_prb^nrb+S1^nrb)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="Km_prb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="S1" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_334" name="S24" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_310" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_328" name="kcatp_rbc4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="nrb" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for reaction_17" type="UserDefined" reversible="false">
      <Expression>
        kcatp_rbc4*S24*S2^nrb/(Km_prb^nrb+S2^nrb)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="Km_prb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="S2" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_340" name="S24" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_327" name="kcatp_rbc4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="nrb" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for reaction_18" type="UserDefined" reversible="false">
      <Expression>
        k_dna*S18*S14*S5/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_341" name="S14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_344" name="S18" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_342" name="S5" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_329" name="k_dna" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for reaction_19" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_c4+kdeg_c4gsk3b*gsk3b)*S10/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="S10" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_345" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_339" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="kdeg_c4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="kdeg_c4gsk3b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for reaction_20" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_c2+kdeg_c2gsk3b*gsk3b)*S13/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_346" name="S13" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_343" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_354" name="kdeg_c2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="kdeg_c2gsk3b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for reaction_21" type="UserDefined" reversible="false">
      <Expression>
        kp_c2cak*S13/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="S13" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_348" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_351" name="kp_c2cak" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for reaction_22" type="UserDefined" reversible="false">
      <Expression>
        kb_p21c4*S10*S12/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_356" name="S10" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_360" name="S12" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_358" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_353" name="kb_p21c4" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for reaction_23" type="UserDefined" reversible="false">
      <Expression>
        kb_p21c2*S4*S12/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="S12" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_364" name="S4" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_357" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_362" name="kb_p21c2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for reaction_24" type="UserDefined" reversible="false">
      <Expression>
        kb_p21c2*S11*S13/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="S11" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_368" name="S13" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_366" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_324" name="kb_p21c2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for reaction_25" type="UserDefined" reversible="false">
      <Expression>
        kimport/Vratio*S12/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_369" name="S12" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_372" name="Vratio" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_370" name="kimport" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for reaction_26" type="UserDefined" reversible="true">
      <Expression>
        kimport*(1-1/Vratio)*S12/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_373" name="S12" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_376" name="Vratio" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_374" name="kimport" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for reaction_27" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_p21gsk3b*gsk3b+kdeg_p21erk*erk)*S11/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_377" name="S11" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_378" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_367" name="erk" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_380" name="gsk3b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="kdeg_p21erk" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_382" name="kdeg_p21gsk3b" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for reaction_28" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_p21gsk3b*gsk3b+kdeg_p21erk*erk)*S12/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_385" name="S12" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_371" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_381" name="erk" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="gsk3b" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="kdeg_p21erk" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="kdeg_p21gsk3b" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for reaction_29" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbfree*S15/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_391" name="S15" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_379" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_387" name="kdeg_rbfree" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for reaction_30" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbbound*S16/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_383" name="S16" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_393" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_389" name="kdeg_rbbound" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for reaction_31" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbp21*S11*S15/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="S11" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_398" name="S15" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_396" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_375" name="kdeg_rbp21" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for reaction_32" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbp21*S11*S16/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_399" name="S11" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_402" name="S16" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_400" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_395" name="kdeg_rbp21" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for reaction_33" type="UserDefined" reversible="false">
      <Expression>
        kdeg_e2ffree*S14/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="S14" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_404" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_392" name="kdeg_e2ffree" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for reaction_34" type="UserDefined" reversible="false">
      <Expression>
        kdeg_e2fbound*S16/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_405" name="S16" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_407" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_401" name="kdeg_e2fbound" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for reaction_35" type="UserDefined" reversible="false">
      <Expression>
        kb_rbe2f*S1*S14/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_408" name="S1" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_412" name="S14" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_397" name="kb_rbe2f" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for reaction_36" type="UserDefined" reversible="false">
      <Expression>
        kb_rbpe2f*S14*S15/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_413" name="S14" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_416" name="S15" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_409" name="kb_rbpe2f" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for reaction_37" type="UserDefined" reversible="false">
      <Expression>
        kd_rbpe2f*S16/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_417" name="S16" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_418" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_406" name="kd_rbpe2f" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for reaction_38" type="UserDefined" reversible="false">
      <Expression>
        kcatp_rbc2*S18*S15^nrb/(Km_prb^nrb+S15^nrb)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_423" name="Km_prb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="S15" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_427" name="S18" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_415" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_421" name="kcatp_rbc2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="nrb" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for reaction_39" type="UserDefined" reversible="false">
      <Expression>
        kcatp_rbc2*S18*S16^nrb/(Km_prb^nrb+S16^nrb)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_429" name="Km_prb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_428" name="S16" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_433" name="S18" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_424" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_420" name="kcatp_rbc2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="nrb" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for reaction_40" type="UserDefined" reversible="false">
      <Expression>
        kcatdp_rbc4*S15^nrb/(Km_dprb^nrb+S15^nrb)*1/(1+kinh_pp1*S18)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_422" name="Km_dprb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="S15" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_434" name="S18" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_441" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_439" name="kcatdp_rbc4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="kinh_pp1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="nrb" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for reaction_41" type="UserDefined" reversible="false">
      <Expression>
        kcatdp_rbc4*S16^nrb/(Km_dprb^nrb+S16^nrb)*1/(1+kinh_pp1*S18)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_426" name="Km_dprb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="S16" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_442" name="S18" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_448" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_446" name="kcatdp_rbc4" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="kinh_pp1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_432" name="nrb" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for reaction_42" type="UserDefined" reversible="false">
      <Expression>
        k_delay*S17/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_449" name="S17" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_411" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_445" name="k_delay" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for reaction_43" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_c4+kdeg_c4gsk3b*gsk3b)*S19/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_447" name="S19" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_436" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_450" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_454" name="kdeg_c4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="kdeg_c4gsk3b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for reaction_44" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_c2+kdeg_c2gsk3b*gsk3b)*S18/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_451" name="S18" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_455" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_443" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="kdeg_c2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_457" name="kdeg_c2gsk3b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for reaction_45" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_c2+kdeg_c2gsk3b*gsk3b)*S20/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="S20" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_460" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_453" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="kdeg_c2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_462" name="kdeg_c2gsk3b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for reaction_46" type="UserDefined" reversible="false">
      <Expression>
        kdeg_c2c2gsk3b*gsk3b*S18/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_465" name="S18" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_461" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_467" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="kdeg_c2c2gsk3b" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for reaction_47" type="UserDefined" reversible="false">
      <Expression>
        kdp_c2cak*S18/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_468" name="S18" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_469" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_440" name="kdp_c2cak" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for reaction_48" type="UserDefined" reversible="false">
      <Expression>
        kd_p21c4*S19/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_470" name="S19" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_472" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_466" name="kd_p21c4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for reaction_49" type="UserDefined" reversible="false">
      <Expression>
        kb_p21c2*S11*S18/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_473" name="S11" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_477" name="S18" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_475" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_463" name="kb_p21c2" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for reaction_50" type="UserDefined" reversible="false">
      <Expression>
        kd_p21c2*S20/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_478" name="S20" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_479" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_474" name="kd_p21c2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for reaction_51" type="UserDefined" reversible="false">
      <Expression>
        kimport/Vratio*S19/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_480" name="S19" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_484" name="Vratio" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_482" name="kimport" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="Function for reaction_52" type="UserDefined" reversible="false">
      <Expression>
        kimport/Vratio*S20/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_485" name="S20" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_488" name="Vratio" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_481" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_486" name="kimport" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="Function for reaction_53" type="UserDefined" reversible="true">
      <Expression>
        kimport*(1-1/Vratio)*S19/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_489" name="S19" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_492" name="Vratio" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_471" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_490" name="kimport" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="Function for reaction_54" type="UserDefined" reversible="true">
      <Expression>
        kimport*(1-1/Vratio)*S20/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_493" name="S20" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_496" name="Vratio" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_483" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_494" name="kimport" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="Function for reaction_55" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbfree*S21/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_497" name="S21" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_498" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_487" name="kdeg_rbfree" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="Function for reaction_56" type="UserDefined" reversible="false">
      <Expression>
        kdeg_rbp21*S11*S21/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_499" name="S11" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_503" name="S21" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_501" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_495" name="kdeg_rbp21" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="Function for reaction_57" type="UserDefined" reversible="false">
      <Expression>
        kcatdp_rbc2*S21^nrb/(Km_dprb^nrb+S21^nrb)*1/(1+kinh_pp1*S18)/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_505" name="Km_dprb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="S18" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_504" name="S21" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_513" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_500" name="kcatdp_rbc2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_511" name="kinh_pp1" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_507" name="nrb" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="Function for reaction_58" type="UserDefined" reversible="false">
      <Expression>
        k_delay*S22/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_514" name="S22" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_506" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_510" name="k_delay" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="Function for reaction_59" type="UserDefined" reversible="false">
      <Expression>
        kdeg_c4*S24/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_491" name="S24" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_515" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_512" name="kdeg_c4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="Function for reaction_60" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_c2+kdeg_c2gsk3b*gsk3b)*S23/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_508" name="S23" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_516" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_518" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_522" name="kdeg_c2" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_520" name="kdeg_c2gsk3b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="Function for reaction_61" type="UserDefined" reversible="false">
      <Expression>
        kd_p21c4*S24/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_523" name="S24" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_502" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_519" name="kd_p21c4" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="Function for reaction_62" type="UserDefined" reversible="false">
      <Expression>
        kd_p21c2*S23/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_524" name="S23" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_526" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_521" name="kd_p21c2" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="Function for reaction_63" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_p21erkskp2*erk+kdeg_p21c2skp2*S18+kdeg_p21skp2)*S14*S23/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_533" name="S14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_527" name="S18" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_529" name="S23" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_517" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_539" name="erk" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_537" name="kdeg_p21c2skp2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_531" name="kdeg_p21erkskp2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_535" name="kdeg_p21skp2" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="Function for reaction_64" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_p21erkskp2*erk+kdeg_p21c2skp2*S18+kdeg_p21skp2)*S14*S24/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_541" name="S14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_540" name="S18" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_532" name="S24" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_536" name="cell" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_547" name="erk" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_545" name="kdeg_p21c2skp2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="kdeg_p21erkskp2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="kdeg_p21skp2" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="Function for reaction_65" type="UserDefined" reversible="false">
      <Expression>
        k_delay*S25/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_548" name="S25" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_525" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_544" name="k_delay" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="Function for reaction_66" type="UserDefined" reversible="false">
      <Expression>
        (kdeg_c4+kdeg_c4gsk3b*gsk3b)*S26/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_546" name="S26" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_530" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_538" name="gsk3b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_552" name="kdeg_c4" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="kdeg_c4gsk3b" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="Function for reaction_67" type="UserDefined" reversible="false">
      <Expression>
        kb_p21c4*S11*S26/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_553" name="S11" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_555" name="S26" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_542" name="cell" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_549" name="kb_p21c4" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="Function for reaction_68" type="UserDefined" reversible="false">
      <Expression>
        k_delay*S27/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_556" name="S27" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_557" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_534" name="k_delay" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_108" name="Function for reaction_69" type="UserDefined" reversible="false">
      <Expression>
        k_delay*S28/cell
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_558" name="S28" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_560" name="cell" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_554" name="k_delay" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_5" name="Mueller2015 - Hepatocyte proliferation, T160 phosphorylation of CDK2" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="nmol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T11:40:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Mueller</vCard:Family>
                <vCard:Given>Stephanie</vCard:Given>
              </rdf:Description>
            </vCard:N>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T11:40:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1502090000"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_5" name="Cytoplasm" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_7" name="Nucleus" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_79" name="@cyto::C2E(T160~U,b)" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin E:CDK2 complex - T160 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="@cyto::C4D1(b)" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:33:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin D1:CDK4 complex</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_83" name="@cyto::p21(b)" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_83">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:34:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>p21 - Cyclin-dependent kinase inhibitor 1</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_85" name="@cyto::C4D1(b!1).p21(b!1)" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_85">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin D1:CDK4:p21 complex</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_87" name="@cyto::C2E(T160~U,b!1).p21(b!1)" simulationType="reactions" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_87">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T11:49:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin E:CDK2:p21 complex - T160 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_89" name="HGF" simulationType="assignment" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_89">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T13:57:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Hepatocyte Growth Factor</pre>
  </body>

        </Comment>
        <Expression>
          if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt -1,0,if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt 24,0,1))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_91" name="inhp53" simulationType="assignment" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_91">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:43:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>p53 tumor suppressor</pre>
  </body>

        </Comment>
        <Expression>
          if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt -1,0,if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt 0,0,0))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_93" name="inhERK" simulationType="assignment" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_93">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:23:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Extracellular-signal-regulated Kinases</pre>
  </body>

        </Comment>
        <Expression>
          if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt -1,0,if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt 0,0,0))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_95" name="inhAKT" simulationType="assignment" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_95">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:08:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Protein kinase B</pre>
  </body>

        </Comment>
        <Expression>
          if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt -1,0,if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt 0,0,0))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_97" name="inhc4d1" simulationType="assignment" compartment="Compartment_5">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_97">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:43:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin D1:CDK4 complex</pre>
  </body>

        </Comment>
        <Expression>
          if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt -1,0,if(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time&gt; lt 0,0,0))
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_99" name="TotCycECDK2" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:26:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin E:CDK2 complex</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotcycECDK2],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~U\,b!1).p21(b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~U\,b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~P\,b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~P\,b!1).p21(b!1)],Reference=Concentration&gt;)+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C2E(T160~U\,b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C2E(T160~U\,b!1).p21(b!1)],Reference=Concentration&gt;))/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_101" name="TotCDK2T160" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_101">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:27:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>CDK2 T160-phosphorylated (Thr160 site)</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotCDK2T160],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~P\,b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~P\,b!1).p21(b!1)],Reference=Concentration&gt;)/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_103" name="TotCycDCDK4" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_103">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:11:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin D1:CDK4 complex</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotcycDCDK4],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C4D1(b!1).p21(b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C4D1(b!1).p21(b!1)],Reference=Concentration&gt;)/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_105" name="TotP21" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_105">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:36:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>p21 - Cyclin-dependent kinase inhibitor 1</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_Totp21],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~U\,b!1).p21(b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::p21(b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~P\,b!1).p21(b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C4D1(b!1).p21(b!1)],Reference=Concentration&gt;)+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::p21(b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C4D1(b!1).p21(b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C2E(T160~U\,b!1).p21(b!1)],Reference=Concentration&gt;))/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_107" name="CDK2P21" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_107">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:27:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>p21:CDK2 complex</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_Totp21CDK2],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~U\,b!1).p21(b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~P\,b!1).p21(b!1)],Reference=Concentration&gt;)+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C2E(T160~U\,b!1).p21(b!1)],Reference=Concentration&gt;)/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_109" name="TotE2F" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_109">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:38:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>E2F-1 - E2F transcription factor</pre>
  </body>

        </Comment>
        <Expression>
          (&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotE2F],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotRb],Reference=Value&gt;)*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::e2f(b!1).rb(S788~U\,S800~U\,b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::e2f(b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::e2f(b!1).rb(S788~P\,S800~U\,b!1)],Reference=Concentration&gt;)/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_111" name="TotRb" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_111">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:31:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Retinoblastoma Protein</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotRb],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::rb(S788~U\,S800~U\,b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::e2f(b!1).rb(S788~U\,S800~U\,b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::rb(S788~P\,S800~U\,b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::e2f(b!1).rb(S788~P\,S800~U\,b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::rb(S788~P\,S800~P\,b)],Reference=Concentration&gt;)/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_113" name="PhosRbS788" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_113">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:40:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rb S788-phosphorylated (serine 788 site)</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_PhosRbS788],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::rb(S788~P\,S800~U\,b)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::e2f(b!1).rb(S788~P\,S800~U\,b!1)],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::rb(S788~P\,S800~P\,b)],Reference=Concentration&gt;)/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_115" name="PhosRbS800" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_115">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:41:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Rb S800/S804-phosphorylated (serine 800 and 804 sites)</pre>
  </body>

        </Comment>
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_PhosRbS800],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::rb(S788~P\,S800~P\,b)],Reference=Concentration&gt;/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_117" name="DNAContent" simulationType="assignment" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_117">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:42:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>DNA content</pre>
  </body>

        </Comment>
        <Expression>
          2-(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre()],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre1()],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre2()],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre3()],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre4()],Reference=Concentration&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre5()],Reference=Concentration&gt;)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_119" name="@nuc::C2E(T160~P,b!1).p21(b!1)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_119">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin E:CDK2:p21 complex - T160 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_121" name="@nuc::C2E(T160~P,b)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_121">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin E:CDK2 complex - T160 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_123" name="@nuc::C2E(T160~U,b!1).p21(b!1)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_123">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin E:CDK2:p21 complex - T160 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_125" name="@nuc::C2E(T160~U,b)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_125">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin E:CDK2 complex - T160 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_127" name="@nuc::C4D1(b!1).p21(b!1)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_127">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin D1:CDK4:p21 complex</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_129" name="@nuc::C4D1(b)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_129">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:33:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Cyclin D1:CDK4 complex</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_131" name="@nuc::dnapre()" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_131">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Genes contributing to the formation of prereplication complexes.</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_133" name="@nuc::dnapre1()" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_133">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Genes contributing to the formation of prereplication complexes.</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_135" name="@nuc::dnapre2()" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_135">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Genes contributing to the formation of prereplication complexes.</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_137" name="@nuc::dnapre3()" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_137">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Genes contributing to the formation of prereplication complexes.</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_139" name="@nuc::dnapre4()" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_139">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:35:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Genes contributing to the formation of prereplication complexes.</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_141" name="@nuc::e2f(b!1).rb(S788~P,S800~U,b!1)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_141">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>E2F-1: Retinoblastoma Protein complex - S788 and S800 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_143" name="@nuc::e2f(b!1).rb(S788~U,S800~U,b!1)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_143">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>E2F-1: Retinoblastoma Protein complex - S788 and S800 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_145" name="@nuc::e2f(b)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_145">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>E2F-1 - E2F transcription factor</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_147" name="@nuc::p21(b)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_147">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>p21 - Cyclin-dependent kinase inhibitor 1</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_149" name="@nuc::rb(S788~P,S800~P,b)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_149">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Retinoblastoma Protein - S788 and S800 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_151" name="@nuc::rb(S788~P,S800~U,b)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_151">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Retinoblastoma Protein - S788 and S800 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_153" name="@nuc::rb(S788~U,S800~U,b)" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_153">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Retinoblastoma Protein - S788 and S800 phosphorylation</pre>
  </body>

        </Comment>
      </Metabolite>
      <Metabolite key="Metabolite_155" name="@nuc::dnapre5()" simulationType="reactions" compartment="Compartment_7">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_155">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:36:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          
  <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Genes contributing to the formation of prereplication complexes.</pre>
  </body>

        </Comment>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_79" name="Vnuc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="Vcyto" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="perk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="nerk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="pakt" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="nakt" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="aerk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="aakt" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="atf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="ks_c4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="kdeg_c4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="kdeg_c4gsk3b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="ks_c2myc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="ks_c2e2f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="kdeg_c2c2gsk3b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="kdeg_c2gsk3b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="kdeg_c2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="kdp_c2cak" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="kc2cak" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="ks_p21p53" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="ks_p21e2f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="kdeg_p21erkskp2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="kdeg_p21c2skp2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="kdeg_p21skp2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="kdeg_p21gsk3b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="kdeg_p21erk" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="Kd_p21c4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="kb_p21c4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="Kd_p21c2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="kb_p21c2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="ki" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="kinh_p21akt" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="ks_e2fe2f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="ks_e2fmyc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="kdege2fplus" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="kdeg_e2fbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="ks_rb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="ks_rbe2f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="kdeg_rbp21" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="kdeg_rbbound" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="kdegrbplus" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="kb_rbe2f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="Kd_rb_e2f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="kb_rbpe2f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_123" name="Kd_rbp_e2f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="kcatprbc4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_125" name="kcatp_rbc2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_126" name="kcatdp_rbc2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_127" name="kcatdp_rbc4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_128" name="kinh_pp1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_129" name="Km_dprb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_130" name="Km_prb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_131" name="nrb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_132" name="k_dna" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="k_delay" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="Vratio" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc],Reference=Value&gt;/&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_135" name="erk" simulationType="assignment">
        <Expression>
          (1-&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[inhERK],Reference=Concentration&gt;)*((1-&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[aerk],Reference=Value&gt;)*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[perk],Reference=Value&gt;^&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nerk],Reference=Value&gt;+1)*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[HGF],Reference=Concentration&gt;^&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nerk],Reference=Value&gt;/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[HGF],Reference=Concentration&gt;^&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nerk],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[perk],Reference=Value&gt;^&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nerk],Reference=Value&gt;)+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[aerk],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_136" name="akt" simulationType="assignment">
        <Expression>
          (1-&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[inhAKT],Reference=Concentration&gt;)*((1-&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[aakt],Reference=Value&gt;)*(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[pakt],Reference=Value&gt;^&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nakt],Reference=Value&gt;+1)*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[HGF],Reference=Concentration&gt;^&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nakt],Reference=Value&gt;/(&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[HGF],Reference=Concentration&gt;^&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nakt],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[pakt],Reference=Value&gt;^&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nakt],Reference=Value&gt;)+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[aakt],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_137" name="gsk3b" simulationType="assignment">
        <Expression>
          1-&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[akt],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_138" name="tf" simulationType="assignment">
        <Expression>
          (1-&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[atf],Reference=Value&gt;)*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[erk],Reference=Value&gt;*(1-&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=Value&gt;)+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[atf],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_139" name="tfp21" simulationType="assignment">
        <Expression>
          (1-&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[inhp53],Reference=Concentration&gt;)*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[tf],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_140" name="kp_c2cak" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdp_c2cak],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kc2cak],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_141" name="kd_p21c4" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Kd_p21c4],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_p21c4],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_142" name="kd_p21c2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Kd_p21c2],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_p21c2],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_143" name="kimport" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ki],Reference=Value&gt;/(1+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kinh_p21akt],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[akt],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_144" name="kdeg_e2ffree" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_e2fbound],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdege2fplus],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_145" name="kdeg_rbfree" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbbound],Reference=Value&gt;+&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdegrbplus],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_146" name="kd_rbe2f" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_rbe2f],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Kd_rb_e2f],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_147" name="kd_rbpe2f" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_rbpe2f],Reference=Value&gt;*&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Kd_rbp_e2f],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_148" name="kcatp_rbc4" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatprbc4],Reference=Value&gt;*(1-&lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[inhc4d1],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_149" name="scale_TotcycDCDK4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_150" name="scale_TotcycECDK2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_151" name="scale_Totp21CDK2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_152" name="scale_TotCDK2T160" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_153" name="scale_TotRb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_154" name="scale_PhosRbS788" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_155" name="scale_PhosRbS800" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_156" name="scale_Totp21" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_157" name="scale_TotE2F" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_69" name="reaction_1" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T11:49:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_3975" name="ks_c4" value="14298.7"/>
          <Constant key="Parameter_3976" name="tf" value="0.635099"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="reaction_2" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3651" name="ks_c2e2f" value="2.19945"/>
          <Constant key="Parameter_3652" name="ks_c2myc" value="0.157512"/>
          <Constant key="Parameter_3653" name="tf" value="0.635099"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="reaction_3" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3654" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3655" name="kdeg_c2" value="0.225747"/>
          <Constant key="Parameter_3656" name="kdeg_c2gsk3b" value="1.5509e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="reaction_4" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3657" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3658" name="kdeg_c2" value="0.225747"/>
          <Constant key="Parameter_3659" name="kdeg_c2gsk3b" value="1.5509e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_73" name="reaction_5" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3660" name="ks_p21e2f" value="0.811617"/>
          <Constant key="Parameter_3661" name="ks_p21p53" value="3.84136e-06"/>
          <Constant key="Parameter_3662" name="tfp21" value="0.635099"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_74" name="reaction_6" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3663" name="kd_p21c2" value="9.9818"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_75" name="reaction_7" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3664" name="erk" value="0.16"/>
          <Constant key="Parameter_3665" name="kdeg_p21c2skp2" value="0.040108"/>
          <Constant key="Parameter_3666" name="kdeg_p21erkskp2" value="0.000282976"/>
          <Constant key="Parameter_3667" name="kdeg_p21skp2" value="0.750575"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_76" name="reaction_8" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3668" name="ks_rb" value="72.5245"/>
          <Constant key="Parameter_3669" name="ks_rbe2f" value="20.013"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_77" name="reaction_9" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T15:34:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3670" name="kdeg_rbfree" value="0.34676"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_78" name="reaction_10" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3671" name="kdeg_rbbound" value="0.0889964"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_79" name="reaction_11" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3672" name="kdeg_rbp21" value="0.863571"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_80" name="reaction_12" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3673" name="kdeg_rbp21" value="0.863571"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_81" name="reaction_13" reversible="false" fast="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3674" name="ks_e2fe2f" value="0.459602"/>
          <Constant key="Parameter_3675" name="ks_e2fmyc" value="2.49175e-06"/>
          <Constant key="Parameter_3676" name="tf" value="0.635099"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_82" name="reaction_14" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3677" name="kdeg_e2fbound" value="0.0999954"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_83" name="reaction_15" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3678" name="kd_rbe2f" value="11499.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_146"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_84" name="reaction_16" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3679" name="Km_prb" value="2.03459"/>
          <Constant key="Parameter_3680" name="kcatp_rbc4" value="2797.82"/>
          <Constant key="Parameter_3681" name="nrb" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="ModelValue_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_85" name="reaction_17" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3682" name="Km_prb" value="2.03459"/>
          <Constant key="Parameter_3683" name="kcatp_rbc4" value="2797.82"/>
          <Constant key="Parameter_3684" name="nrb" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_86" name="reaction_18" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_131" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3685" name="k_dna" value="0.00949791"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Metabolite_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_87" name="reaction_19" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3686" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3687" name="kdeg_c4" value="1.01433"/>
          <Constant key="Parameter_3688" name="kdeg_c4gsk3b" value="0.107637"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_88" name="reaction_20" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3689" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3690" name="kdeg_c2" value="0.225747"/>
          <Constant key="Parameter_3691" name="kdeg_c2gsk3b" value="1.5509e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_89" name="reaction_21" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3692" name="kp_c2cak" value="101.599"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_90" name="reaction_22" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_81" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3693" name="kb_p21c4" value="14.3083"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_91" name="reaction_23" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_79" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3694" name="kb_p21c2" value="997.938"/>
        </ListOfConstants>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_92" name="reaction_24" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3695" name="kb_p21c2" value="997.938"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_93" name="reaction_25" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3696" name="Vratio" value="0.0197316"/>
          <Constant key="Parameter_3697" name="kimport" value="0.0744778"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_94" name="reaction_26" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3698" name="Vratio" value="0.0197316"/>
          <Constant key="Parameter_3699" name="kimport" value="0.0744778"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_95" name="reaction_27" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3700" name="erk" value="0.16"/>
          <Constant key="Parameter_3701" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3702" name="kdeg_p21erk" value="0.736489"/>
          <Constant key="Parameter_3703" name="kdeg_p21gsk3b" value="0.00464011"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_96" name="reaction_28" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3704" name="erk" value="0.16"/>
          <Constant key="Parameter_3705" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3706" name="kdeg_p21erk" value="0.736489"/>
          <Constant key="Parameter_3707" name="kdeg_p21gsk3b" value="0.00464011"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_97" name="reaction_29" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3708" name="kdeg_rbfree" value="0.34676"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_98" name="reaction_30" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3709" name="kdeg_rbbound" value="0.0889964"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_99" name="reaction_31" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_99">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-18T14:25:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3710" name="kdeg_rbp21" value="0.863571"/>
        </ListOfConstants>
        <KineticLaw function="Function_70">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_100" name="reaction_32" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3711" name="kdeg_rbp21" value="0.863571"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_101" name="reaction_33" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3712" name="kdeg_e2ffree" value="0.100037"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_102" name="reaction_34" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3713" name="kdeg_e2fbound" value="0.0999954"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_103" name="reaction_35" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_153" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_153" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3714" name="kb_rbe2f" value="229.976"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_104" name="reaction_36" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_145" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3715" name="kb_rbpe2f" value="182.218"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_105" name="reaction_37" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3716" name="kd_rbpe2f" value="87735.4"/>
        </ListOfConstants>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_147"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_106" name="reaction_38" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3717" name="Km_prb" value="2.03459"/>
          <Constant key="Parameter_3718" name="kcatp_rbc2" value="7.14231e+06"/>
          <Constant key="Parameter_3719" name="nrb" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_107" name="reaction_39" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_145" stoichiometry="1"/>
          <Product metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3720" name="Km_prb" value="2.03459"/>
          <Constant key="Parameter_3721" name="kcatp_rbc2" value="7.14231e+06"/>
          <Constant key="Parameter_3722" name="nrb" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_108" name="reaction_40" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_153" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3723" name="Km_dprb" value="0.118988"/>
          <Constant key="Parameter_3724" name="kcatdp_rbc4" value="2892.02"/>
          <Constant key="Parameter_3725" name="kinh_pp1" value="16634.9"/>
          <Constant key="Parameter_3726" name="nrb" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_109" name="reaction_41" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_143" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_141" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3727" name="Km_dprb" value="0.118988"/>
          <Constant key="Parameter_3728" name="kcatdp_rbc4" value="2892.02"/>
          <Constant key="Parameter_3729" name="kinh_pp1" value="16634.9"/>
          <Constant key="Parameter_3730" name="nrb" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_110" name="reaction_42" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_133" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3731" name="k_delay" value="23.6659"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_111" name="reaction_43" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3732" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3733" name="kdeg_c4" value="1.01433"/>
          <Constant key="Parameter_3734" name="kdeg_c4gsk3b" value="0.107637"/>
        </ListOfConstants>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_112" name="reaction_44" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3735" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3736" name="kdeg_c2" value="0.225747"/>
          <Constant key="Parameter_3737" name="kdeg_c2gsk3b" value="1.5509e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_113" name="reaction_45" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3738" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3739" name="kdeg_c2" value="0.225747"/>
          <Constant key="Parameter_3740" name="kdeg_c2gsk3b" value="1.5509e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_114" name="reaction_46" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3741" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3742" name="kdeg_c2c2gsk3b" value="5.58836"/>
        </ListOfConstants>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_115" name="reaction_47" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_125" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3743" name="kdp_c2cak" value="101.282"/>
        </ListOfConstants>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_116" name="reaction_48" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3744" name="kd_p21c4" value="1430.78"/>
        </ListOfConstants>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_117" name="reaction_49" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3745" name="kb_p21c2" value="997.938"/>
        </ListOfConstants>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_118" name="reaction_50" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_79" stoichiometry="1"/>
          <Product metabolite="Metabolite_83" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3746" name="kd_p21c2" value="9.9818"/>
        </ListOfConstants>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_119" name="reaction_51" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3747" name="Vratio" value="0.0197316"/>
          <Constant key="Parameter_3748" name="kimport" value="0.0744778"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_120" name="reaction_52" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_123" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3749" name="Vratio" value="0.0197316"/>
          <Constant key="Parameter_3750" name="kimport" value="0.0744778"/>
        </ListOfConstants>
        <KineticLaw function="Function_91">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_121" name="reaction_53" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_85" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3751" name="Vratio" value="0.0197316"/>
          <Constant key="Parameter_3752" name="kimport" value="0.0744778"/>
        </ListOfConstants>
        <KineticLaw function="Function_92">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="Metabolite_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_122" name="reaction_54" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_87" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3753" name="Vratio" value="0.0197316"/>
          <Constant key="Parameter_3754" name="kimport" value="0.0744778"/>
        </ListOfConstants>
        <KineticLaw function="Function_93">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Metabolite_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_123" name="reaction_55" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3755" name="kdeg_rbfree" value="0.34676"/>
        </ListOfConstants>
        <KineticLaw function="Function_94">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_124" name="reaction_56" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3756" name="kdeg_rbp21" value="0.863571"/>
        </ListOfConstants>
        <KineticLaw function="Function_95">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_125" name="reaction_57" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_151" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_149" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3757" name="Km_dprb" value="0.118988"/>
          <Constant key="Parameter_3758" name="kcatdp_rbc2" value="0.00313842"/>
          <Constant key="Parameter_3759" name="kinh_pp1" value="16634.9"/>
          <Constant key="Parameter_3760" name="nrb" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_96">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="Metabolite_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_126" name="reaction_58" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_135" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3761" name="k_delay" value="23.6659"/>
        </ListOfConstants>
        <KineticLaw function="Function_97">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="Metabolite_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_127" name="reaction_59" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3762" name="kdeg_c4" value="1.01433"/>
        </ListOfConstants>
        <KineticLaw function="Function_98">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_128" name="reaction_60" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3763" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3764" name="kdeg_c2" value="0.225747"/>
          <Constant key="Parameter_3765" name="kdeg_c2gsk3b" value="1.5509e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_99">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_129" name="reaction_61" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3766" name="kd_p21c4" value="1430.78"/>
        </ListOfConstants>
        <KineticLaw function="Function_100">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_130" name="reaction_62" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_147" stoichiometry="1"/>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3767" name="kd_p21c2" value="9.9818"/>
        </ListOfConstants>
        <KineticLaw function="Function_101">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_131" name="reaction_63" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_121" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_119" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3768" name="erk" value="0.16"/>
          <Constant key="Parameter_3769" name="kdeg_p21c2skp2" value="0.040108"/>
          <Constant key="Parameter_3770" name="kdeg_p21erkskp2" value="0.000282976"/>
          <Constant key="Parameter_3771" name="kdeg_p21skp2" value="0.750575"/>
        </ListOfConstants>
        <KineticLaw function="Function_102">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Metabolite_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_132" name="reaction_64" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_121" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_145" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3772" name="erk" value="0.16"/>
          <Constant key="Parameter_3773" name="kdeg_p21c2skp2" value="0.040108"/>
          <Constant key="Parameter_3774" name="kdeg_p21erkskp2" value="0.000282976"/>
          <Constant key="Parameter_3775" name="kdeg_p21skp2" value="0.750575"/>
        </ListOfConstants>
        <KineticLaw function="Function_103">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Metabolite_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_133" name="reaction_65" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_137" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3776" name="k_delay" value="23.6659"/>
        </ListOfConstants>
        <KineticLaw function="Function_104">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_134" name="reaction_66" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3777" name="gsk3b" value="0.47"/>
          <Constant key="Parameter_3778" name="kdeg_c4" value="1.01433"/>
          <Constant key="Parameter_3779" name="kdeg_c4gsk3b" value="0.107637"/>
        </ListOfConstants>
        <KineticLaw function="Function_105">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_135" name="reaction_67" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_147" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_127" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_147" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_129" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3780" name="kb_p21c4" value="14.3083"/>
        </ListOfConstants>
        <KineticLaw function="Function_106">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="Metabolite_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Metabolite_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_136" name="reaction_68" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_139" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3781" name="k_delay" value="23.6659"/>
        </ListOfConstants>
        <KineticLaw function="Function_107">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Metabolite_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_137" name="reaction_69" reversible="false" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_155" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_3782" name="k_delay" value="23.6659"/>
        </ListOfConstants>
        <KineticLaw function="Function_108">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="Metabolite_155"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_1">
      <ModelParameterSet key="ModelParameterSet_1" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C2E(T160~U\,b)]" value="249918884285000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C4D1(b)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::p21(b)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C4D1(b!1).p21(b!1)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[@cyto::C2E(T160~U\,b!1).p21(b!1)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[HGF]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[inhp53]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[inhERK]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[inhAKT]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Cytoplasm],Vector=Metabolites[inhc4d1]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotCycECDK2]" value="59992733241482.87" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotCDK2T160]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotCycDCDK4]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotP21]" value="12529194640467.61" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[CDK2P21]" value="24637175959092.35" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotE2F]" value="20311190724556.18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotRb]" value="77866197209503.08" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[PhosRbS788]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[PhosRbS800]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[DNAContent]" value="602214179000000" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~P\,b!1).p21(b!1)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~P\,b)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~U\,b!1).p21(b!1)]" value="3747157285991700" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C2E(T160~U\,b)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C4D1(b!1).p21(b!1)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::C4D1(b)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre()]" value="602214179000000" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre1()]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre2()]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre3()]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre4()]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::e2f(b!1).rb(S788~P\,S800~U\,b!1)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::e2f(b!1).rb(S788~U\,S800~U\,b!1)]" value="36193072157900" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::e2f(b)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::p21(b)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::rb(S788~P\,S800~P\,b)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::rb(S788~P\,S800~U\,b)]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::rb(S788~U\,S800~U\,b)]" value="1.54115039404606e+16" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[@nuc::dnapre5()]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vnuc]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vcyto]" value="12.67" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[perk]" value="0.008573141381040461" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nerk]" value="1.14663416967514" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[pakt]" value="0.0348" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nakt]" value="1.0957" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[aerk]" value="0.16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[aakt]" value="0.53" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[atf]" value="0.6012882038466359" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_c4]" value="14298.6715905912" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c4]" value="1.01433121526038" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c4gsk3b]" value="0.107637073030656" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_c2myc]" value="0.157511710670132" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_c2e2f]" value="2.19944932286058" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2c2gsk3b]" value="5.58835572681068" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2gsk3b]" value="1.55090179808215e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2]" value="0.225746618767114" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdp_c2cak]" value="101.282119534273" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kc2cak]" value="0.316993285134466" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_p21p53]" value="3.84136205729286e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_p21e2f]" value="0.811617200647839" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21erkskp2]" value="0.000282976267377082" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21c2skp2]" value="0.040108041739907" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21skp2]" value="0.750574831653576" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21gsk3b]" value="0.00464010657330714" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21erk]" value="0.736488746268804" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Kd_p21c4]" value="99.9965429570432" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_p21c4]" value="14.3083360067931" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Kd_p21c2]" value="0.0100024233821379" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_p21c2]" value="997.938141166465" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ki]" value="0.09183265750003219" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kinh_p21akt]" value="0.439662894183616" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_e2fe2f]" value="0.459601740303536" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_e2fmyc]" value="2.49174531457788e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdege2fplus]" value="4.18153340918872e-05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_e2fbound]" value="0.0999954023364359" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_rb]" value="72.5245257602228" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_rbe2f]" value="20.0129834334888" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbp21]" value="0.863570809432207" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbbound]" value="0.0889964132806627" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdegrbplus]" value="0.257763482477731" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_rbe2f]" value="229.976400323907" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Kd_rb_e2f]" value="50.002528361226" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_rbpe2f]" value="182.218452288549" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Kd_rbp_e2f]" value="481.484530572552" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatprbc4]" value="2797.82326282727" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatp_rbc2]" value="7142308.07232621" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatdp_rbc2]" value="0.00313841707547858" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatdp_rbc4]" value="2892.0219338341" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kinh_pp1]" value="16634.9400020267" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Km_dprb]" value="0.118988383643671" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Km_prb]" value="2.03458881189349" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nrb]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[k_dna]" value="0.00949790539669408" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[k_delay]" value="23.6658781343201" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vratio]" value="0.01973164956590371" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[erk]" value="0.16" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[akt]" value="0.53" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b]" value="0.47" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[tf]" value="0.6350989641604412" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[tfp21]" value="0.6350989641604412" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kp_c2cak]" value="101.5991128194075" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_p21c4]" value="1430.784136147094" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_p21c2]" value="9.981799797130682" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kimport]" value="0.07447775230966951" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_e2ffree]" value="0.1000372176705278" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbfree]" value="0.3467598957583937" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_rbe2f]" value="11499.40147960882" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_rbpe2f]" value="87735.36596180897" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatp_rbc4]" value="2797.82326282727" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotcycDCDK4]" value="0.5651" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotcycECDK2]" value="0.1889" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_Totp21CDK2]" value="0.339790715037712" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotCDK2T160]" value="2.728395741944" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotRb]" value="0.2605" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_PhosRbS788]" value="0.673907327042472" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_PhosRbS800]" value="0.82377467648995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_Totp21]" value="0.1728" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[scale_TotE2F]" value="28.7418" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_1]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_1],ParameterGroup=Parameters,Parameter=ks_c4" value="14298.6715905912" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_c4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_1],ParameterGroup=Parameters,Parameter=tf" value="0.6350989641604412" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[tf],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_2]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_2],ParameterGroup=Parameters,Parameter=ks_c2e2f" value="2.19944932286058" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_c2e2f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_2],ParameterGroup=Parameters,Parameter=ks_c2myc" value="0.157511710670132" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_c2myc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_2],ParameterGroup=Parameters,Parameter=tf" value="0.6350989641604412" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[tf],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_3]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_3],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_3],ParameterGroup=Parameters,Parameter=kdeg_c2" value="0.225746618767114" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_3],ParameterGroup=Parameters,Parameter=kdeg_c2gsk3b" value="1.55090179808215e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_4]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_4],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_4],ParameterGroup=Parameters,Parameter=kdeg_c2" value="0.225746618767114" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_4],ParameterGroup=Parameters,Parameter=kdeg_c2gsk3b" value="1.55090179808215e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_5]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_5],ParameterGroup=Parameters,Parameter=ks_p21e2f" value="0.811617200647839" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_p21e2f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_5],ParameterGroup=Parameters,Parameter=ks_p21p53" value="3.84136205729286e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_p21p53],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_5],ParameterGroup=Parameters,Parameter=tfp21" value="0.6350989641604412" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[tfp21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_6]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_6],ParameterGroup=Parameters,Parameter=kd_p21c2" value="9.981799797130682" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_p21c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_7]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_7],ParameterGroup=Parameters,Parameter=erk" value="0.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[erk],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_7],ParameterGroup=Parameters,Parameter=kdeg_p21c2skp2" value="0.040108041739907" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21c2skp2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_7],ParameterGroup=Parameters,Parameter=kdeg_p21erkskp2" value="0.000282976267377082" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21erkskp2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_7],ParameterGroup=Parameters,Parameter=kdeg_p21skp2" value="0.750574831653576" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21skp2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_8]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_8],ParameterGroup=Parameters,Parameter=ks_rb" value="72.5245257602228" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_rb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_8],ParameterGroup=Parameters,Parameter=ks_rbe2f" value="20.0129834334888" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_rbe2f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_9]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_9],ParameterGroup=Parameters,Parameter=kdeg_rbfree" value="0.3467598957583937" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbfree],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_10]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_10],ParameterGroup=Parameters,Parameter=kdeg_rbbound" value="0.0889964132806627" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbbound],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_11]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_11],ParameterGroup=Parameters,Parameter=kdeg_rbp21" value="0.863570809432207" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbp21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_12]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_12],ParameterGroup=Parameters,Parameter=kdeg_rbp21" value="0.863570809432207" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbp21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_13]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_13],ParameterGroup=Parameters,Parameter=ks_e2fe2f" value="0.459601740303536" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_e2fe2f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_13],ParameterGroup=Parameters,Parameter=ks_e2fmyc" value="2.49174531457788e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[ks_e2fmyc],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_13],ParameterGroup=Parameters,Parameter=tf" value="0.6350989641604412" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[tf],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_14]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_14],ParameterGroup=Parameters,Parameter=kdeg_e2fbound" value="0.0999954023364359" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_e2fbound],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_15]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_15],ParameterGroup=Parameters,Parameter=kd_rbe2f" value="11499.40147960882" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_rbe2f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_16]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_16],ParameterGroup=Parameters,Parameter=Km_prb" value="2.03458881189349" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Km_prb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_16],ParameterGroup=Parameters,Parameter=kcatp_rbc4" value="2797.82326282727" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatp_rbc4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_16],ParameterGroup=Parameters,Parameter=nrb" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nrb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_17]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_17],ParameterGroup=Parameters,Parameter=Km_prb" value="2.03458881189349" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Km_prb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_17],ParameterGroup=Parameters,Parameter=kcatp_rbc4" value="2797.82326282727" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatp_rbc4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_17],ParameterGroup=Parameters,Parameter=nrb" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nrb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_18]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_18],ParameterGroup=Parameters,Parameter=k_dna" value="0.00949790539669408" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[k_dna],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_19]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_19],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_19],ParameterGroup=Parameters,Parameter=kdeg_c4" value="1.01433121526038" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_19],ParameterGroup=Parameters,Parameter=kdeg_c4gsk3b" value="0.107637073030656" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c4gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_20]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_20],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_20],ParameterGroup=Parameters,Parameter=kdeg_c2" value="0.225746618767114" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_20],ParameterGroup=Parameters,Parameter=kdeg_c2gsk3b" value="1.55090179808215e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_21]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_21],ParameterGroup=Parameters,Parameter=kp_c2cak" value="101.5991128194075" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kp_c2cak],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_22]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_22],ParameterGroup=Parameters,Parameter=kb_p21c4" value="14.3083360067931" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_p21c4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_23]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_23],ParameterGroup=Parameters,Parameter=kb_p21c2" value="997.938141166465" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_p21c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_24]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_24],ParameterGroup=Parameters,Parameter=kb_p21c2" value="997.938141166465" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_p21c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_25]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_25],ParameterGroup=Parameters,Parameter=Vratio" value="0.01973164956590371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vratio],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_25],ParameterGroup=Parameters,Parameter=kimport" value="0.07447775230966951" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kimport],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_26]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_26],ParameterGroup=Parameters,Parameter=Vratio" value="0.01973164956590371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vratio],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_26],ParameterGroup=Parameters,Parameter=kimport" value="0.07447775230966951" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kimport],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_27]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_27],ParameterGroup=Parameters,Parameter=erk" value="0.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[erk],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_27],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_27],ParameterGroup=Parameters,Parameter=kdeg_p21erk" value="0.736488746268804" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21erk],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_27],ParameterGroup=Parameters,Parameter=kdeg_p21gsk3b" value="0.00464010657330714" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_28]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_28],ParameterGroup=Parameters,Parameter=erk" value="0.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[erk],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_28],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_28],ParameterGroup=Parameters,Parameter=kdeg_p21erk" value="0.736488746268804" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21erk],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_28],ParameterGroup=Parameters,Parameter=kdeg_p21gsk3b" value="0.00464010657330714" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_29]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_29],ParameterGroup=Parameters,Parameter=kdeg_rbfree" value="0.3467598957583937" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbfree],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_30]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_30],ParameterGroup=Parameters,Parameter=kdeg_rbbound" value="0.0889964132806627" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbbound],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_31]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_31],ParameterGroup=Parameters,Parameter=kdeg_rbp21" value="0.863570809432207" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbp21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_32]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_32],ParameterGroup=Parameters,Parameter=kdeg_rbp21" value="0.863570809432207" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbp21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_33]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_33],ParameterGroup=Parameters,Parameter=kdeg_e2ffree" value="0.1000372176705278" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_e2ffree],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_34]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_34],ParameterGroup=Parameters,Parameter=kdeg_e2fbound" value="0.0999954023364359" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_e2fbound],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_35]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_35],ParameterGroup=Parameters,Parameter=kb_rbe2f" value="229.976400323907" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_rbe2f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_36]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_36],ParameterGroup=Parameters,Parameter=kb_rbpe2f" value="182.218452288549" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_rbpe2f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_37]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_37],ParameterGroup=Parameters,Parameter=kd_rbpe2f" value="87735.36596180897" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_rbpe2f],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_38]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_38],ParameterGroup=Parameters,Parameter=Km_prb" value="2.03458881189349" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Km_prb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_38],ParameterGroup=Parameters,Parameter=kcatp_rbc2" value="7142308.07232621" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatp_rbc2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_38],ParameterGroup=Parameters,Parameter=nrb" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nrb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_39]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_39],ParameterGroup=Parameters,Parameter=Km_prb" value="2.03458881189349" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Km_prb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_39],ParameterGroup=Parameters,Parameter=kcatp_rbc2" value="7142308.07232621" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatp_rbc2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_39],ParameterGroup=Parameters,Parameter=nrb" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nrb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_40]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_40],ParameterGroup=Parameters,Parameter=Km_dprb" value="0.118988383643671" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Km_dprb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_40],ParameterGroup=Parameters,Parameter=kcatdp_rbc4" value="2892.0219338341" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatdp_rbc4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_40],ParameterGroup=Parameters,Parameter=kinh_pp1" value="16634.9400020267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kinh_pp1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_40],ParameterGroup=Parameters,Parameter=nrb" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nrb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_41]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_41],ParameterGroup=Parameters,Parameter=Km_dprb" value="0.118988383643671" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Km_dprb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_41],ParameterGroup=Parameters,Parameter=kcatdp_rbc4" value="2892.0219338341" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatdp_rbc4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_41],ParameterGroup=Parameters,Parameter=kinh_pp1" value="16634.9400020267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kinh_pp1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_41],ParameterGroup=Parameters,Parameter=nrb" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nrb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_42]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_42],ParameterGroup=Parameters,Parameter=k_delay" value="23.6658781343201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[k_delay],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_43]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_43],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_43],ParameterGroup=Parameters,Parameter=kdeg_c4" value="1.01433121526038" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_43],ParameterGroup=Parameters,Parameter=kdeg_c4gsk3b" value="0.107637073030656" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c4gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_44]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_44],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_44],ParameterGroup=Parameters,Parameter=kdeg_c2" value="0.225746618767114" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_44],ParameterGroup=Parameters,Parameter=kdeg_c2gsk3b" value="1.55090179808215e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_45]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_45],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_45],ParameterGroup=Parameters,Parameter=kdeg_c2" value="0.225746618767114" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_45],ParameterGroup=Parameters,Parameter=kdeg_c2gsk3b" value="1.55090179808215e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_46]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_46],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_46],ParameterGroup=Parameters,Parameter=kdeg_c2c2gsk3b" value="5.58835572681068" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2c2gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_47]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_47],ParameterGroup=Parameters,Parameter=kdp_c2cak" value="101.282119534273" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdp_c2cak],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_48]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_48],ParameterGroup=Parameters,Parameter=kd_p21c4" value="1430.784136147094" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_p21c4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_49]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_49],ParameterGroup=Parameters,Parameter=kb_p21c2" value="997.938141166465" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_p21c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_50]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_50],ParameterGroup=Parameters,Parameter=kd_p21c2" value="9.981799797130682" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_p21c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_51]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_51],ParameterGroup=Parameters,Parameter=Vratio" value="0.01973164956590371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vratio],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_51],ParameterGroup=Parameters,Parameter=kimport" value="0.07447775230966951" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kimport],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_52]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_52],ParameterGroup=Parameters,Parameter=Vratio" value="0.01973164956590371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vratio],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_52],ParameterGroup=Parameters,Parameter=kimport" value="0.07447775230966951" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kimport],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_53]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_53],ParameterGroup=Parameters,Parameter=Vratio" value="0.01973164956590371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vratio],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_53],ParameterGroup=Parameters,Parameter=kimport" value="0.07447775230966951" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kimport],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_54]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_54],ParameterGroup=Parameters,Parameter=Vratio" value="0.01973164956590371" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Vratio],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_54],ParameterGroup=Parameters,Parameter=kimport" value="0.07447775230966951" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kimport],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_55]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_55],ParameterGroup=Parameters,Parameter=kdeg_rbfree" value="0.3467598957583937" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbfree],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_56]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_56],ParameterGroup=Parameters,Parameter=kdeg_rbp21" value="0.863570809432207" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_rbp21],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_57]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_57],ParameterGroup=Parameters,Parameter=Km_dprb" value="0.118988383643671" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[Km_dprb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_57],ParameterGroup=Parameters,Parameter=kcatdp_rbc2" value="0.00313841707547858" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kcatdp_rbc2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_57],ParameterGroup=Parameters,Parameter=kinh_pp1" value="16634.9400020267" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kinh_pp1],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_57],ParameterGroup=Parameters,Parameter=nrb" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[nrb],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_58]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_58],ParameterGroup=Parameters,Parameter=k_delay" value="23.6658781343201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[k_delay],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_59]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_59],ParameterGroup=Parameters,Parameter=kdeg_c4" value="1.01433121526038" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_60]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_60],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_60],ParameterGroup=Parameters,Parameter=kdeg_c2" value="0.225746618767114" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_60],ParameterGroup=Parameters,Parameter=kdeg_c2gsk3b" value="1.55090179808215e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c2gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_61]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_61],ParameterGroup=Parameters,Parameter=kd_p21c4" value="1430.784136147094" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_p21c4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_62]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_62],ParameterGroup=Parameters,Parameter=kd_p21c2" value="9.981799797130682" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kd_p21c2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_63]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_63],ParameterGroup=Parameters,Parameter=erk" value="0.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[erk],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_63],ParameterGroup=Parameters,Parameter=kdeg_p21c2skp2" value="0.040108041739907" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21c2skp2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_63],ParameterGroup=Parameters,Parameter=kdeg_p21erkskp2" value="0.000282976267377082" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21erkskp2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_63],ParameterGroup=Parameters,Parameter=kdeg_p21skp2" value="0.750574831653576" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21skp2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_64]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_64],ParameterGroup=Parameters,Parameter=erk" value="0.16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[erk],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_64],ParameterGroup=Parameters,Parameter=kdeg_p21c2skp2" value="0.040108041739907" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21c2skp2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_64],ParameterGroup=Parameters,Parameter=kdeg_p21erkskp2" value="0.000282976267377082" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21erkskp2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_64],ParameterGroup=Parameters,Parameter=kdeg_p21skp2" value="0.750574831653576" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_p21skp2],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_65]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_65],ParameterGroup=Parameters,Parameter=k_delay" value="23.6658781343201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[k_delay],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_66]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_66],ParameterGroup=Parameters,Parameter=gsk3b" value="0.47" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_66],ParameterGroup=Parameters,Parameter=kdeg_c4" value="1.01433121526038" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_66],ParameterGroup=Parameters,Parameter=kdeg_c4gsk3b" value="0.107637073030656" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kdeg_c4gsk3b],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_67]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_67],ParameterGroup=Parameters,Parameter=kb_p21c4" value="14.3083360067931" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[kb_p21c4],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_68]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_68],ParameterGroup=Parameters,Parameter=k_delay" value="23.6658781343201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[k_delay],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_69]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Reactions[reaction_69],ParameterGroup=Parameters,Parameter=k_delay" value="23.6658781343201" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Values[k_delay],Reference=InitialValue&gt;
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_5"/>
      <StateTemplateVariable objectReference="Metabolite_145"/>
      <StateTemplateVariable objectReference="Metabolite_83"/>
      <StateTemplateVariable objectReference="Metabolite_147"/>
      <StateTemplateVariable objectReference="Metabolite_151"/>
      <StateTemplateVariable objectReference="Metabolite_153"/>
      <StateTemplateVariable objectReference="Metabolite_121"/>
      <StateTemplateVariable objectReference="Metabolite_141"/>
      <StateTemplateVariable objectReference="Metabolite_125"/>
      <StateTemplateVariable objectReference="Metabolite_127"/>
      <StateTemplateVariable objectReference="Metabolite_87"/>
      <StateTemplateVariable objectReference="Metabolite_149"/>
      <StateTemplateVariable objectReference="Metabolite_85"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_123"/>
      <StateTemplateVariable objectReference="Metabolite_143"/>
      <StateTemplateVariable objectReference="Metabolite_129"/>
      <StateTemplateVariable objectReference="Metabolite_139"/>
      <StateTemplateVariable objectReference="Metabolite_133"/>
      <StateTemplateVariable objectReference="Metabolite_119"/>
      <StateTemplateVariable objectReference="Metabolite_135"/>
      <StateTemplateVariable objectReference="Metabolite_155"/>
      <StateTemplateVariable objectReference="Metabolite_137"/>
      <StateTemplateVariable objectReference="Metabolite_131"/>
      <StateTemplateVariable objectReference="Metabolite_89"/>
      <StateTemplateVariable objectReference="Metabolite_91"/>
      <StateTemplateVariable objectReference="Metabolite_93"/>
      <StateTemplateVariable objectReference="Metabolite_95"/>
      <StateTemplateVariable objectReference="Metabolite_97"/>
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
      <StateTemplateVariable objectReference="Metabolite_99"/>
      <StateTemplateVariable objectReference="Metabolite_101"/>
      <StateTemplateVariable objectReference="Metabolite_103"/>
      <StateTemplateVariable objectReference="Metabolite_105"/>
      <StateTemplateVariable objectReference="Metabolite_107"/>
      <StateTemplateVariable objectReference="Metabolite_109"/>
      <StateTemplateVariable objectReference="Metabolite_111"/>
      <StateTemplateVariable objectReference="Metabolite_113"/>
      <StateTemplateVariable objectReference="Metabolite_115"/>
      <StateTemplateVariable objectReference="Metabolite_117"/>
      <StateTemplateVariable objectReference="Compartment_5"/>
      <StateTemplateVariable objectReference="Compartment_7"/>
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
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="ModelValue_151"/>
      <StateTemplateVariable objectReference="ModelValue_152"/>
      <StateTemplateVariable objectReference="ModelValue_153"/>
      <StateTemplateVariable objectReference="ModelValue_154"/>
      <StateTemplateVariable objectReference="ModelValue_155"/>
      <StateTemplateVariable objectReference="ModelValue_156"/>
      <StateTemplateVariable objectReference="ModelValue_157"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 0 0 0 1.54115039404606e+16 0 0 0 0 0 0 0 249918884285000 0 3747157285991700 36193072157900 0 0 0 0 0 0 0 602214179000000 0 0 0 0 0 0.01973164956590371 0.16 0.53 0.47 0.6350989641604412 0.6350989641604412 101.5991128194075 1430.784136147094 9.981799797130682 0.07447775230966951 0.1000372176705278 0.3467598957583937 11499.40147960882 87735.36596180897 2797.82326282727 59992733241482.87 0 0 12529194640467.61 24637175959092.35 20311190724556.18 77866197209503.08 0 0 602214179000000 1 1 0.25 12.67 0.008573141381040461 1.14663416967514 0.0348 1.0957 0.16 0.53 0.6012882038466359 14298.6715905912 1.01433121526038 0.107637073030656 0.157511710670132 2.19944932286058 5.58835572681068 1.55090179808215e-05 0.225746618767114 101.282119534273 0.316993285134466 3.84136205729286e-06 0.811617200647839 0.000282976267377082 0.040108041739907 0.750574831653576 0.00464010657330714 0.736488746268804 99.9965429570432 14.3083360067931 0.0100024233821379 997.938141166465 0.09183265750003219 0.439662894183616 0.459601740303536 2.49174531457788e-06 4.18153340918872e-05 0.0999954023364359 72.5245257602228 20.0129834334888 0.863570809432207 0.0889964132806627 0.257763482477731 229.976400323907 50.002528361226 182.218452288549 481.484530572552 2797.82326282727 7142308.07232621 0.00313841707547858 2892.0219338341 16634.9400020267 0.118988383643671 2.03458881189349 3 0.00949790539669408 23.6658781343201 0.5651 0.1889 0.339790715037712 2.728395741944 0.2605 0.673907327042472 0.82377467648995 0.1728 28.7418 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_26" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_25" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.72"/>
        <Parameter name="Duration" type="float" value="72"/>
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
    <Task key="Task_24" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_23" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_16" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_22" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_15" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_21" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_14" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_20" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_13" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1e-09"/>
      </Method>
    </Task>
    <Task key="Task_19" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_12" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_18" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_11" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_17" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_16" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_15" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_27" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_26"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_17" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_16" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_15" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_14" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_12" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_11" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_10" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_9" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="Figure 4" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[CDK2P21]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[CDK2P21],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[DNAContent]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[DNAContent],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PhosRbS788]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[PhosRbS788],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[PhosRbS800]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[PhosRbS800],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TotCDK2T160]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotCDK2T160],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TotCycDCDK4]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotCycDCDK4],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TotCycECDK2]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotCycECDK2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TotE2F]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotE2F],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TotP21]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotP21],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[TotRb]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Mueller2015 - Hepatocyte proliferation\, T160 phosphorylation of CDK2,Vector=Compartments[Nucleus],Vector=Metabolites[TotRb],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="Mueller2015.xml">
    <SBMLMap SBMLid="Function_for_reaction_10_0" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Function_for_reaction_11_0" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Function_for_reaction_12_0" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Function_for_reaction_13_0" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Function_for_reaction_14_0" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Function_for_reaction_15_0" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Function_for_reaction_16_0" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Function_for_reaction_17_0" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Function_for_reaction_18_0" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Function_for_reaction_19_0" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Function_for_reaction_1_0" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Function_for_reaction_20_0" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Function_for_reaction_21_0" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Function_for_reaction_22_0" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Function_for_reaction_23_0" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Function_for_reaction_24_0" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Function_for_reaction_25_0" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Function_for_reaction_26_0" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Function_for_reaction_27_0" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Function_for_reaction_28_0" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Function_for_reaction_29_0" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Function_for_reaction_2_0" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="Function_for_reaction_30_0" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Function_for_reaction_31_0" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Function_for_reaction_32_0" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Function_for_reaction_33_0" COPASIkey="Function_72"/>
    <SBMLMap SBMLid="Function_for_reaction_34_0" COPASIkey="Function_73"/>
    <SBMLMap SBMLid="Function_for_reaction_35_0" COPASIkey="Function_74"/>
    <SBMLMap SBMLid="Function_for_reaction_36_0" COPASIkey="Function_75"/>
    <SBMLMap SBMLid="Function_for_reaction_37_0" COPASIkey="Function_76"/>
    <SBMLMap SBMLid="Function_for_reaction_38_0" COPASIkey="Function_77"/>
    <SBMLMap SBMLid="Function_for_reaction_39_0" COPASIkey="Function_78"/>
    <SBMLMap SBMLid="Function_for_reaction_3_0" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Function_for_reaction_40_0" COPASIkey="Function_79"/>
    <SBMLMap SBMLid="Function_for_reaction_41_0" COPASIkey="Function_80"/>
    <SBMLMap SBMLid="Function_for_reaction_42_0" COPASIkey="Function_81"/>
    <SBMLMap SBMLid="Function_for_reaction_43_0" COPASIkey="Function_82"/>
    <SBMLMap SBMLid="Function_for_reaction_44_0" COPASIkey="Function_83"/>
    <SBMLMap SBMLid="Function_for_reaction_45_0" COPASIkey="Function_84"/>
    <SBMLMap SBMLid="Function_for_reaction_46_0" COPASIkey="Function_85"/>
    <SBMLMap SBMLid="Function_for_reaction_47_0" COPASIkey="Function_86"/>
    <SBMLMap SBMLid="Function_for_reaction_48_0" COPASIkey="Function_87"/>
    <SBMLMap SBMLid="Function_for_reaction_49_0" COPASIkey="Function_88"/>
    <SBMLMap SBMLid="Function_for_reaction_4_0" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Function_for_reaction_50_0" COPASIkey="Function_89"/>
    <SBMLMap SBMLid="Function_for_reaction_51_0" COPASIkey="Function_90"/>
    <SBMLMap SBMLid="Function_for_reaction_52_0" COPASIkey="Function_91"/>
    <SBMLMap SBMLid="Function_for_reaction_53_0" COPASIkey="Function_92"/>
    <SBMLMap SBMLid="Function_for_reaction_54_0" COPASIkey="Function_93"/>
    <SBMLMap SBMLid="Function_for_reaction_55_0" COPASIkey="Function_94"/>
    <SBMLMap SBMLid="Function_for_reaction_56_0" COPASIkey="Function_95"/>
    <SBMLMap SBMLid="Function_for_reaction_57_0" COPASIkey="Function_96"/>
    <SBMLMap SBMLid="Function_for_reaction_58_0" COPASIkey="Function_97"/>
    <SBMLMap SBMLid="Function_for_reaction_59_0" COPASIkey="Function_98"/>
    <SBMLMap SBMLid="Function_for_reaction_5_0" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Function_for_reaction_60_0" COPASIkey="Function_99"/>
    <SBMLMap SBMLid="Function_for_reaction_61_0" COPASIkey="Function_100"/>
    <SBMLMap SBMLid="Function_for_reaction_62_0" COPASIkey="Function_101"/>
    <SBMLMap SBMLid="Function_for_reaction_63_0" COPASIkey="Function_102"/>
    <SBMLMap SBMLid="Function_for_reaction_64_0" COPASIkey="Function_103"/>
    <SBMLMap SBMLid="Function_for_reaction_65_0" COPASIkey="Function_104"/>
    <SBMLMap SBMLid="Function_for_reaction_66_0" COPASIkey="Function_105"/>
    <SBMLMap SBMLid="Function_for_reaction_67_0" COPASIkey="Function_106"/>
    <SBMLMap SBMLid="Function_for_reaction_68_0" COPASIkey="Function_107"/>
    <SBMLMap SBMLid="Function_for_reaction_69_0" COPASIkey="Function_108"/>
    <SBMLMap SBMLid="Function_for_reaction_6_0" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Function_for_reaction_7_0" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Function_for_reaction_8_0" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Function_for_reaction_9_0" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Kd_p21c2" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="Kd_p21c4" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="Kd_rb_e2f" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="Kd_rbp_e2f" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="Km_dprb" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="Km_prb" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="Nucleus" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="ObsCDK2P21_obs" COPASIkey="Metabolite_107"/>
    <SBMLMap SBMLid="ObsDNAContent_obs" COPASIkey="Metabolite_117"/>
    <SBMLMap SBMLid="ObsPhosRbS788_obs" COPASIkey="Metabolite_113"/>
    <SBMLMap SBMLid="ObsPhosRbS800_obs" COPASIkey="Metabolite_115"/>
    <SBMLMap SBMLid="ObsTotCDK2T160_obs" COPASIkey="Metabolite_101"/>
    <SBMLMap SBMLid="ObsTotCycDCDK4_obs" COPASIkey="Metabolite_103"/>
    <SBMLMap SBMLid="ObsTotCycECDK2_obs" COPASIkey="Metabolite_99"/>
    <SBMLMap SBMLid="ObsTotE2F_obs" COPASIkey="Metabolite_109"/>
    <SBMLMap SBMLid="ObsTotP21_obs" COPASIkey="Metabolite_105"/>
    <SBMLMap SBMLid="ObsTotRb_obs" COPASIkey="Metabolite_111"/>
    <SBMLMap SBMLid="S1" COPASIkey="Metabolite_153"/>
    <SBMLMap SBMLid="S10" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="S11" COPASIkey="Metabolite_147"/>
    <SBMLMap SBMLid="S12" COPASIkey="Metabolite_83"/>
    <SBMLMap SBMLid="S13" COPASIkey="Metabolite_125"/>
    <SBMLMap SBMLid="S14" COPASIkey="Metabolite_145"/>
    <SBMLMap SBMLid="S15" COPASIkey="Metabolite_151"/>
    <SBMLMap SBMLid="S16" COPASIkey="Metabolite_141"/>
    <SBMLMap SBMLid="S17" COPASIkey="Metabolite_133"/>
    <SBMLMap SBMLid="S18" COPASIkey="Metabolite_121"/>
    <SBMLMap SBMLid="S19" COPASIkey="Metabolite_85"/>
    <SBMLMap SBMLid="S2" COPASIkey="Metabolite_143"/>
    <SBMLMap SBMLid="S20" COPASIkey="Metabolite_87"/>
    <SBMLMap SBMLid="S21" COPASIkey="Metabolite_149"/>
    <SBMLMap SBMLid="S22" COPASIkey="Metabolite_135"/>
    <SBMLMap SBMLid="S23" COPASIkey="Metabolite_119"/>
    <SBMLMap SBMLid="S24" COPASIkey="Metabolite_127"/>
    <SBMLMap SBMLid="S25" COPASIkey="Metabolite_137"/>
    <SBMLMap SBMLid="S26" COPASIkey="Metabolite_129"/>
    <SBMLMap SBMLid="S27" COPASIkey="Metabolite_139"/>
    <SBMLMap SBMLid="S28" COPASIkey="Metabolite_155"/>
    <SBMLMap SBMLid="S3" COPASIkey="Metabolite_123"/>
    <SBMLMap SBMLid="S4" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="S5" COPASIkey="Metabolite_131"/>
    <SBMLMap SBMLid="Vcyto" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="Vnuc" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="Vratio" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="aakt" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="aerk" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="akt" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="atf" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="erk" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="gsk3b" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="hgf" COPASIkey="Metabolite_89"/>
    <SBMLMap SBMLid="inhakt" COPASIkey="Metabolite_95"/>
    <SBMLMap SBMLid="inhc4d1" COPASIkey="Metabolite_97"/>
    <SBMLMap SBMLid="inherk" COPASIkey="Metabolite_93"/>
    <SBMLMap SBMLid="inhp53" COPASIkey="Metabolite_91"/>
    <SBMLMap SBMLid="k_delay" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="k_dna" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="kb_p21c2" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="kb_p21c4" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="kb_rbe2f" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="kb_rbpe2f" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="kc2cak" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="kcatdp_rbc2" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="kcatdp_rbc4" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="kcatp_rbc2" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="kcatp_rbc4" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="kcatprbc4" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="kd_p21c2" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="kd_p21c4" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="kd_rbe2f" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="kd_rbpe2f" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="kdeg_c2" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="kdeg_c2c2gsk3b" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="kdeg_c2gsk3b" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="kdeg_c4" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="kdeg_c4gsk3b" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="kdeg_e2fbound" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="kdeg_e2ffree" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="kdeg_p21c2skp2" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="kdeg_p21erk" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="kdeg_p21erkskp2" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="kdeg_p21gsk3b" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="kdeg_p21skp2" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="kdeg_rbbound" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="kdeg_rbfree" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="kdeg_rbp21" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="kdege2fplus" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="kdegrbplus" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="kdp_c2cak" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="ki" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="kimport" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="kinh_p21akt" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="kinh_pp1" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="kp_c2cak" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="ks_c2e2f" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="ks_c2myc" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="ks_c4" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="ks_e2fe2f" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="ks_e2fmyc" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="ks_p21e2f" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="ks_p21p53" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="ks_rb" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="ks_rbe2f" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="nakt" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="nerk" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="nrb" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="pakt" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="perk" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="reaction_10" COPASIkey="Reaction_78"/>
    <SBMLMap SBMLid="reaction_11" COPASIkey="Reaction_79"/>
    <SBMLMap SBMLid="reaction_12" COPASIkey="Reaction_80"/>
    <SBMLMap SBMLid="reaction_13" COPASIkey="Reaction_81"/>
    <SBMLMap SBMLid="reaction_14" COPASIkey="Reaction_82"/>
    <SBMLMap SBMLid="reaction_15" COPASIkey="Reaction_83"/>
    <SBMLMap SBMLid="reaction_16" COPASIkey="Reaction_84"/>
    <SBMLMap SBMLid="reaction_17" COPASIkey="Reaction_85"/>
    <SBMLMap SBMLid="reaction_18" COPASIkey="Reaction_86"/>
    <SBMLMap SBMLid="reaction_19" COPASIkey="Reaction_87"/>
    <SBMLMap SBMLid="reaction_2" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="reaction_20" COPASIkey="Reaction_88"/>
    <SBMLMap SBMLid="reaction_21" COPASIkey="Reaction_89"/>
    <SBMLMap SBMLid="reaction_22" COPASIkey="Reaction_90"/>
    <SBMLMap SBMLid="reaction_23" COPASIkey="Reaction_91"/>
    <SBMLMap SBMLid="reaction_24" COPASIkey="Reaction_92"/>
    <SBMLMap SBMLid="reaction_25" COPASIkey="Reaction_93"/>
    <SBMLMap SBMLid="reaction_26" COPASIkey="Reaction_94"/>
    <SBMLMap SBMLid="reaction_27" COPASIkey="Reaction_95"/>
    <SBMLMap SBMLid="reaction_28" COPASIkey="Reaction_96"/>
    <SBMLMap SBMLid="reaction_29" COPASIkey="Reaction_97"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="reaction_30" COPASIkey="Reaction_98"/>
    <SBMLMap SBMLid="reaction_31" COPASIkey="Reaction_99"/>
    <SBMLMap SBMLid="reaction_32" COPASIkey="Reaction_100"/>
    <SBMLMap SBMLid="reaction_33" COPASIkey="Reaction_101"/>
    <SBMLMap SBMLid="reaction_34" COPASIkey="Reaction_102"/>
    <SBMLMap SBMLid="reaction_35" COPASIkey="Reaction_103"/>
    <SBMLMap SBMLid="reaction_36" COPASIkey="Reaction_104"/>
    <SBMLMap SBMLid="reaction_37" COPASIkey="Reaction_105"/>
    <SBMLMap SBMLid="reaction_38" COPASIkey="Reaction_106"/>
    <SBMLMap SBMLid="reaction_39" COPASIkey="Reaction_107"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="reaction_40" COPASIkey="Reaction_108"/>
    <SBMLMap SBMLid="reaction_41" COPASIkey="Reaction_109"/>
    <SBMLMap SBMLid="reaction_42" COPASIkey="Reaction_110"/>
    <SBMLMap SBMLid="reaction_43" COPASIkey="Reaction_111"/>
    <SBMLMap SBMLid="reaction_44" COPASIkey="Reaction_112"/>
    <SBMLMap SBMLid="reaction_45" COPASIkey="Reaction_113"/>
    <SBMLMap SBMLid="reaction_46" COPASIkey="Reaction_114"/>
    <SBMLMap SBMLid="reaction_47" COPASIkey="Reaction_115"/>
    <SBMLMap SBMLid="reaction_48" COPASIkey="Reaction_116"/>
    <SBMLMap SBMLid="reaction_49" COPASIkey="Reaction_117"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_73"/>
    <SBMLMap SBMLid="reaction_50" COPASIkey="Reaction_118"/>
    <SBMLMap SBMLid="reaction_51" COPASIkey="Reaction_119"/>
    <SBMLMap SBMLid="reaction_52" COPASIkey="Reaction_120"/>
    <SBMLMap SBMLid="reaction_53" COPASIkey="Reaction_121"/>
    <SBMLMap SBMLid="reaction_54" COPASIkey="Reaction_122"/>
    <SBMLMap SBMLid="reaction_55" COPASIkey="Reaction_123"/>
    <SBMLMap SBMLid="reaction_56" COPASIkey="Reaction_124"/>
    <SBMLMap SBMLid="reaction_57" COPASIkey="Reaction_125"/>
    <SBMLMap SBMLid="reaction_58" COPASIkey="Reaction_126"/>
    <SBMLMap SBMLid="reaction_59" COPASIkey="Reaction_127"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_74"/>
    <SBMLMap SBMLid="reaction_60" COPASIkey="Reaction_128"/>
    <SBMLMap SBMLid="reaction_61" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="reaction_62" COPASIkey="Reaction_130"/>
    <SBMLMap SBMLid="reaction_63" COPASIkey="Reaction_131"/>
    <SBMLMap SBMLid="reaction_64" COPASIkey="Reaction_132"/>
    <SBMLMap SBMLid="reaction_65" COPASIkey="Reaction_133"/>
    <SBMLMap SBMLid="reaction_66" COPASIkey="Reaction_134"/>
    <SBMLMap SBMLid="reaction_67" COPASIkey="Reaction_135"/>
    <SBMLMap SBMLid="reaction_68" COPASIkey="Reaction_136"/>
    <SBMLMap SBMLid="reaction_69" COPASIkey="Reaction_137"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_75"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_76"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_77"/>
    <SBMLMap SBMLid="scale_PhosRbS788" COPASIkey="ModelValue_154"/>
    <SBMLMap SBMLid="scale_PhosRbS800" COPASIkey="ModelValue_155"/>
    <SBMLMap SBMLid="scale_TotCDK2T160" COPASIkey="ModelValue_152"/>
    <SBMLMap SBMLid="scale_TotE2F" COPASIkey="ModelValue_157"/>
    <SBMLMap SBMLid="scale_TotRb" COPASIkey="ModelValue_153"/>
    <SBMLMap SBMLid="scale_TotcycDCDK4" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="scale_TotcycECDK2" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="scale_Totp21" COPASIkey="ModelValue_156"/>
    <SBMLMap SBMLid="scale_Totp21CDK2" COPASIkey="ModelValue_151"/>
    <SBMLMap SBMLid="tf" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="tfp21" COPASIkey="ModelValue_139"/>
  </SBMLReference>
</COPASI>
