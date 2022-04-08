<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.10 (Build 55) (http://www.copasi.org) at 2013-10-04 10:29:09 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="10" versionDevel="55" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i&gt;
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Function for v1" type="UserDefined" reversible="false">
      <Expression>
        Vmax_PLA2*PLA2_Ca*PL/(Km_PLA2_APC+PL)-V_CoA*AA_b/(Km_CoA_AA+AA_b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="AA_b" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_268" name="Km_CoA_AA" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="Km_PLA2_APC" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="PL" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_271" name="PLA2_Ca" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="V_CoA" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="Vmax_PLA2" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Function for v2" type="UserDefined" reversible="false">
      <Expression>
        k_lo*AA_b*FLO3t_b/K_AA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_246" name="AA_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="FLO3t_b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="K_AA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="k_lo" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Function for v3" type="UserDefined" reversible="false">
      <Expression>
        (k_3*FLO5HP_b-k3*FLO3t_b*HPETE_b)*(1+AA_b/Ki_AA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_289" name="AA_b" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_290" name="FLO3t_b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="FLO5HP_b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="HPETE_b" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_293" name="Ki_AA" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="k3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="k_3" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Function for v4" type="UserDefined" reversible="false">
      <Expression>
        r1*(HPETE_b*FLO2_b-HETE_b*FLO3_b/Ke_ox)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_287" name="FLO2_b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="FLO3_b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="HETE_b" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_305" name="HPETE_b" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_306" name="Ke_ox" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="r1" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Function for v5" type="UserDefined" reversible="unspecified">
      <Expression>
        GPx*B_b/A_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="A_b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="B_b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="GPx" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Function for v6" type="UserDefined" reversible="false">
      <Expression>
        k_lta_syn*FLO5HP_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="FLO5HP_b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="k_lta_syn" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Function for v7" type="UserDefined" reversible="unspecified">
      <Expression>
        nom_LTCs_b/den_LTCs_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_320" name="den_LTCs_b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="nom_LTCs_b" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Function for v8" type="UserDefined" reversible="unspecified">
      <Expression>
        HEDH5*B_hedh_b/A_hedh_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_325" name="A_hedh_b" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="B_hedh_b" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="HEDH5" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Function for v10out" type="UserDefined" reversible="false">
      <Expression>
        Default*Kd50*LTC4_b*V_LTC_CB*10^6/Vd_LTC
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="Default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_338" name="Kd50" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_339" name="LTC4_b" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_340" name="V_LTC_CB" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="Vd_LTC" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Function for v11" type="UserDefined" reversible="false">
      <Expression>
        Vd_LTC*k_ggt*fup_LT*LTC4_b_out
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="LTC4_b_out" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_347" name="Vd_LTC" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_348" name="fup_LT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_349" name="k_ggt" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Function for v12" type="UserDefined" reversible="false">
      <Expression>
        Vd_LTD*k_dp*fup_LT*LTD4_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="LTD4_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_355" name="Vd_LTD" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_356" name="fup_LT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="k_dp" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Function for v13" type="UserDefined" reversible="false">
      <Expression>
        k_ltc_ltd_el*fup_LT*LTC4_b_out
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_333" name="LTC4_b_out" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_362" name="fup_LT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="k_ltc_ltd_el" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Function for v14" type="UserDefined" reversible="false">
      <Expression>
        k_ltc_ltd_el*fup_LT*LTD4_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_367" name="LTD4_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_368" name="fup_LT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="k_ltc_ltd_el" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Function for v15" type="UserDefined" reversible="false">
      <Expression>
        (k_lte_el+k_acet)*fup_LT*LTE4_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_374" name="LTE4_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_375" name="fup_LT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="k_acet" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="k_lte_el" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Function for v16" type="UserDefined" reversible="false">
      <Expression>
        ca*(ka*EO_b*OL_b^h_act/(EC50_act^h_act+OL_b^h_act))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_384" name="EC50_act" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="EO_b" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_386" name="OL_b" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="ca" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="h_act" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="ka" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Function for v17" type="UserDefined" reversible="false">
      <Expression>
        ca*k_EO_m*EO_i_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_373" name="EO_i_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_335" name="ca" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="k_EO_m" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Function for v18" type="UserDefined" reversible="false">
      <Expression>
        ca*kia*EO_a_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_399" name="EO_a_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_400" name="ca" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="kia" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Function for v21" type="UserDefined" reversible="false">
      <Expression>
        V_B*(k_EO_t_baw*EO_i_b*Rec_occup_migr^h_migr/(EC50_migr^h_migr+Rec_occup_migr^h_migr))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_412" name="EC50_migr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="EO_i_b" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_414" name="Rec_occup_migr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_415" name="V_B" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_416" name="h_migr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="k_EO_t_baw" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Function for v22" type="UserDefined" reversible="false">
      <Expression>
        V_B*(k_EO_t_baw*EO_a_b*Rec_occup_migr^h_migr/(EC50_migr^h_migr+Rec_occup_migr^h_migr))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_424" name="EC50_migr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="EO_a_b" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_426" name="Rec_occup_migr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="V_B" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_428" name="h_migr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_429" name="k_EO_t_baw" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Function for v23" type="UserDefined" reversible="false">
      <Expression>
        V_B*(k_EO_t_baw*EO_b*Rec_occup_migr^h_migr/(EC50_migr^h_migr+Rec_occup_migr^h_migr))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_436" name="EC50_migr" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="EO_b" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_438" name="Rec_occup_migr" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="V_B" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_440" name="h_migr" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_441" name="k_EO_t_baw" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Function for v24" type="UserDefined" reversible="false">
      <Expression>
        V_B*k_Hn_p*(EO_b+EO_i_b+EO_a_b)/Vd_Hn
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_448" name="EO_a_b" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_449" name="EO_b" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_450" name="EO_i_b" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_451" name="V_B" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_452" name="Vd_Hn" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_453" name="k_Hn_p" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Function for v25" type="UserDefined" reversible="false">
      <Expression>
        k_Hn_d*fup_Hn*Hn_b
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_409" name="Hn_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="fup_Hn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="k_Hn_d" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Function for v26" type="UserDefined" reversible="false">
      <Expression>
        V_B*k_IL_p*EO_a_b/Vd_IL5
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_464" name="EO_a_b" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_465" name="V_B" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_466" name="Vd_IL5" order="2" role="volume"/>
        <ParameterDescription key="FunctionParameter_467" name="k_IL_p" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Function for v28" type="UserDefined" reversible="false">
      <Expression>
        k_IL_t_bbm*(IL_b-IL_bm)-J_BM_lymfl*IL_bm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_474" name="IL_b" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_475" name="IL_bm" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_476" name="J_BM_lymfl" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_477" name="k_IL_t_bbm" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Function for v29" type="UserDefined" reversible="false">
      <Expression>
        k1*IL_bm^h_matur/(Km_1^h_matur+IL_bm^h_matur)+k1_min
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_483" name="IL_bm" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_484" name="Km_1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="h_matur" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_486" name="k1" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_487" name="k1_min" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Function for v30" type="UserDefined" reversible="false">
      <Expression>
        ca*V_BM*k_EO_t_bmb*EO_bm
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_473" name="EO_bm" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_493" name="V_BM" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_494" name="ca" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_495" name="k_EO_t_bmb" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Function for v31" type="UserDefined" reversible="false">
      <Expression>
        Vmax_PLA2*PLA2_Ca*PL/(Km_PLA2_APC+PL)-V_CoA*AA_aw/(Km_CoA_AA+AA_aw)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_503" name="AA_aw" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_504" name="Km_CoA_AA" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_505" name="Km_PLA2_APC" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_506" name="PL" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_507" name="PLA2_Ca" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_508" name="V_CoA" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="Vmax_PLA2" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Function for v32" type="UserDefined" reversible="false">
      <Expression>
        k_lo*AA_aw*FLO3t_aw/K_AA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_408" name="AA_aw" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_502" name="FLO3t_aw" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_501" name="K_AA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_517" name="k_lo" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Function for v33" type="UserDefined" reversible="false">
      <Expression>
        (k_3*FLO5HP_aw-k3*FLO3t_aw*HPETE_aw)*(1+AA_aw/Ki_AA)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_525" name="AA_aw" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_526" name="FLO3t_aw" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="FLO5HP_aw" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="HPETE_aw" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_529" name="Ki_AA" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_530" name="k3" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_531" name="k_3" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Function for v34" type="UserDefined" reversible="false">
      <Expression>
        r1*(HPETE_aw*FLO2_aw-HETE_aw*FLO3_aw/Ke_ox)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_523" name="FLO2_aw" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_539" name="FLO3_aw" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_540" name="HETE_aw" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_541" name="HPETE_aw" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_542" name="Ke_ox" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="r1" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Function for v35" type="UserDefined" reversible="unspecified">
      <Expression>
        GPx*B_aw/A_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_522" name="A_aw" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="B_aw" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_524" name="GPx" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Function for v36" type="UserDefined" reversible="false">
      <Expression>
        k_lta_syn*FLO5HP_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_482" name="FLO5HP_aw" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_553" name="k_lta_syn" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="Function for v37" type="UserDefined" reversible="unspecified">
      <Expression>
        nom_LTCs_aw/den_LTCs_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_556" name="den_LTCs_aw" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_557" name="nom_LTCs_aw" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="Function for v38" type="UserDefined" reversible="unspecified">
      <Expression>
        HEDH5*B_hedh_aw/A_hedh_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_561" name="A_hedh_aw" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_562" name="B_hedh_aw" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_563" name="HEDH5" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="Function for v40out" type="UserDefined" reversible="false">
      <Expression>
        Default*Kd50*LTC4_aw*V_LTC_CAW*10^6/Vd_AW_LTC
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_573" name="Default" order="0" role="volume"/>
        <ParameterDescription key="FunctionParameter_574" name="Kd50" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_575" name="LTC4_aw" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_576" name="V_LTC_CAW" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="Vd_AW_LTC" order="4" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="Function for v41" type="UserDefined" reversible="false">
      <Expression>
        Vd_AW_LTC*k_ggt*LTC4_aw_out
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_569" name="LTC4_aw_out" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_568" name="Vd_AW_LTC" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_583" name="k_ggt" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="Function for v42" type="UserDefined" reversible="false">
      <Expression>
        Vd_AW_LTD*k_dp*LTD4_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_587" name="LTD4_aw" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_588" name="Vd_AW_LTD" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_589" name="k_dp" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="Function for v43" type="UserDefined" reversible="false">
      <Expression>
        Q_AW_blf*R_LTE_B*(LTE4_aw*R_LTE_AW/Kp_LTE_AW-LTE4_b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_596" name="Kp_LTE_AW" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_597" name="LTE4_aw" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_598" name="LTE4_b" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_599" name="Q_AW_blf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_600" name="R_LTE_AW" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_601" name="R_LTE_B" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="Function for v44" type="UserDefined" reversible="false">
      <Expression>
        Q_AW_blf*R_LTD_B*(LTD4_aw*R_LTD_AW/Kp_LTD_AW-LTD4_b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_608" name="Kp_LTD_AW" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_609" name="LTD4_aw" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_610" name="LTD4_b" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_611" name="Q_AW_blf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_612" name="R_LTD_AW" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_613" name="R_LTD_B" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="Function for v45" type="UserDefined" reversible="false">
      <Expression>
        Q_AW_blf*R_LTC_B*(LTC4_aw_out*R_LTC_AW/Kp_LTC_AW-LTC4_b_out)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_620" name="Kp_LTC_AW" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_621" name="LTC4_aw_out" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_622" name="LTC4_b_out" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_623" name="Q_AW_blf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_624" name="R_LTC_AW" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_625" name="R_LTC_B" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="Function for v46" type="UserDefined" reversible="false">
      <Expression>
        ca*(ka*EO_aw*OL_aw^h_act/(EC50_act^h_act+OL_aw^h_act))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_632" name="EC50_act" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_633" name="EO_aw" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_634" name="OL_aw" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_635" name="ca" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_636" name="h_act" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_637" name="ka" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="Function for v47" type="UserDefined" reversible="false">
      <Expression>
        ca*k_EO_m*EO_i_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_570" name="EO_i_aw" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_593" name="ca" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_572" name="k_EO_m" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="Function for v48" type="UserDefined" reversible="false">
      <Expression>
        ca*kia*EO_a_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_647" name="EO_a_aw" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_648" name="ca" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_649" name="kia" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="Function for v51" type="UserDefined" reversible="false">
      <Expression>
        V_AW*k_Hn_p*(EO_a_aw+EO_i_aw+EO_aw)/Vd_AW_Hn
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_660" name="EO_a_aw" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_661" name="EO_aw" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_662" name="EO_i_aw" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_663" name="V_AW" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_664" name="Vd_AW_Hn" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_665" name="k_Hn_p" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="Function for v52" type="UserDefined" reversible="false">
      <Expression>
        Q_AW_blf*R_Hn_B*(Hn_aw*R_Hn_AW/Kp_Hn_AW-Hn_b)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_672" name="Hn_aw" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_673" name="Hn_b" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_674" name="Kp_Hn_AW" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_675" name="Q_AW_blf" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_676" name="R_Hn_AW" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_677" name="R_Hn_B" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="Function for v53" type="UserDefined" reversible="false">
      <Expression>
        k_IL_p*EO_a_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_655" name="EO_a_aw" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_658" name="k_IL_p" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="Function for v54" type="UserDefined" reversible="false">
      <Expression>
        k_IL_t_awb*(IL_aw-IL_b)+J_AW_lymfl*IL_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_686" name="IL_aw" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_687" name="IL_b" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_688" name="J_AW_lymfl" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_689" name="k_IL_t_awb" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="Function for v55" type="UserDefined" reversible="false">
      <Expression>
        (k_lte_el+k_acet)*LTE4_aw
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_657" name="LTE4_aw" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_694" name="k_acet" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_695" name="k_lte_el" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="Function for v60" type="UserDefined" reversible="false">
      <Expression>
        Default*k_abs_zf*(ZF_intes+oral*F_zf*(a*ft_zf+(1-a))*DOSE_zf*1000/M_ZF)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_713" name="DOSE_zf" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_714" name="Default" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_715" name="F_zf" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_716" name="M_ZF" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_717" name="ZF_intes" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_718" name="a" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_719" name="ft_zf" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_720" name="k_abs_zf" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_721" name="oral" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="Function for v61" type="UserDefined" reversible="false">
      <Expression>
        Q_AW_blf*R_ZF_B*(ZF_blood-ZF_airways*R_ZF_AW/Kp_ZF_AW)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_708" name="Kp_ZF_AW" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_704" name="Q_AW_blf" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_711" name="R_ZF_AW" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_731" name="R_ZF_B" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_732" name="ZF_airways" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_733" name="ZF_blood" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="Function for v63" type="UserDefined" reversible="false">
      <Expression>
        Default*k_abs_ml*(ML_intes+oral*F_ml*(a*ft_ml+(1-a))*DOSE_ml*1e+09/M_ML)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_745" name="DOSE_ml" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_746" name="Default" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_747" name="F_ml" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_748" name="ML_intes" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_749" name="M_ML" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_750" name="a" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_751" name="ft_ml" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_752" name="k_abs_ml" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_753" name="oral" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_1" name="Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.02214179e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-10-04T11:16:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
  <rdf:Description rdf:about="#f4425bc4_80db_4c1c_b889_aae600e0ce20">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="urn:miriam:biomodels.db:MODEL1309160000"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Default" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_1" name="Vd_LTC" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_2" name="Vd_LTD" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_3" name="Vd_LTE" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_4" name="V_B" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_5" name="V_AW" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_6" name="Vd_Hn" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_7" name="Vd_IL5" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_8" name="V_BM" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_9" name="Vd_AW_LTC" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_10" name="Vd_AW_LTD" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_11" name="Vd_AW_LTE" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_12" name="Vd_AW_Hn" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_13" name="Vd_ZF" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_14" name="Vd_AW_ZF" simulationType="fixed" dimensionality="3">
      </Compartment>
      <Compartment key="Compartment_15" name="Vd_ML" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="AA_b" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_1" name="HPETE_b" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_2" name="HETE_b" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_3" name="LTA4_b" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_4" name="LTC4_b" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_18" name="AA_aw" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_19" name="HPETE_aw" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_20" name="HETE_aw" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_21" name="LTA4_aw" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_22" name="LTC4_aw" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_28" name="ZF_intes" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_31" name="ML_intes" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_5" name="LTC4_b_out" simulationType="reactions" compartment="Compartment_1">
      </Metabolite>
      <Metabolite key="Metabolite_6" name="LTD4_b" simulationType="reactions" compartment="Compartment_2">
      </Metabolite>
      <Metabolite key="Metabolite_7" name="LTE4_b" simulationType="reactions" compartment="Compartment_3">
      </Metabolite>
      <Metabolite key="Metabolite_8" name="EO_b" simulationType="reactions" compartment="Compartment_4">
      </Metabolite>
      <Metabolite key="Metabolite_9" name="EO_i_b" simulationType="reactions" compartment="Compartment_4">
      </Metabolite>
      <Metabolite key="Metabolite_10" name="EO_a_b" simulationType="reactions" compartment="Compartment_4">
      </Metabolite>
      <Metabolite key="Metabolite_11" name="EO_i_aw" simulationType="reactions" compartment="Compartment_5">
      </Metabolite>
      <Metabolite key="Metabolite_12" name="EO_a_aw" simulationType="reactions" compartment="Compartment_5">
      </Metabolite>
      <Metabolite key="Metabolite_13" name="EO_aw" simulationType="reactions" compartment="Compartment_5">
      </Metabolite>
      <Metabolite key="Metabolite_27" name="IL_aw" simulationType="reactions" compartment="Compartment_5">
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Hn_b" simulationType="reactions" compartment="Compartment_6">
      </Metabolite>
      <Metabolite key="Metabolite_15" name="IL_b" simulationType="reactions" compartment="Compartment_7">
      </Metabolite>
      <Metabolite key="Metabolite_16" name="IL_bm" simulationType="reactions" compartment="Compartment_8">
      </Metabolite>
      <Metabolite key="Metabolite_17" name="EO_bm" simulationType="reactions" compartment="Compartment_8">
      </Metabolite>
      <Metabolite key="Metabolite_23" name="LTC4_aw_out" simulationType="reactions" compartment="Compartment_9">
      </Metabolite>
      <Metabolite key="Metabolite_24" name="LTD4_aw" simulationType="reactions" compartment="Compartment_10">
      </Metabolite>
      <Metabolite key="Metabolite_25" name="LTE4_aw" simulationType="reactions" compartment="Compartment_11">
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Hn_aw" simulationType="reactions" compartment="Compartment_12">
      </Metabolite>
      <Metabolite key="Metabolite_29" name="ZF_blood" simulationType="reactions" compartment="Compartment_13">
      </Metabolite>
      <Metabolite key="Metabolite_30" name="ZF_airways" simulationType="reactions" compartment="Compartment_14">
      </Metabolite>
      <Metabolite key="Metabolite_32" name="ML_blood" simulationType="reactions" compartment="Compartment_15">
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="Ca" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="Ca_FEV_ex" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="Cao_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="DOSE_ml" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-10-04T11:27:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="DOSE_zf" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2013-10-04T11:18:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="EC50_ML_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="EC50_act" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="EC50_migr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Et_LTCs" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="FLOa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="F_ml" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="F_zf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_12" name="GPx" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="GSH_aw" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="GSH_b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="GS_pool_aw" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="GS_pool_b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="HEDH5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="J_AW_lymfl" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="J_BM_lymfl" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="K_AA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="K_Ca2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="K_Ca3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="K_Ca_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="K_GSH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="K_LTA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="K_LTA_GSH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="K_LTC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="K_PLA2_Ca" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="Kd12" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="Kd50" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="KdZ" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Kd_Hn_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="Kd_IL_migr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="Kd_LT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Kd_LTE_migr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Kd_LTR1_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="Kd_LTR2_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="Kd_LT_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Kd_gpx_GSSG" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="Kd_gpx_HETE5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Kd_hedh_HETE5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Kd_hedh_NADP" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Kd_hedh_NADPH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="Kd_hedh_oxoETE5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="Ke_ox" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Ke_red" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Ki_AA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="Ki_HETE" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Ki_ML_EOa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Km_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="Km_CoA_AA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="Km_PLA2_APC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="Km_gpx_GSH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="Km_gpx_HPETE5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="Kp_Hn_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="Kp_LTC_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="Kp_LTD_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="Kp_LTE_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="Kp_ZF_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="Kp_ZF_IW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="LOH_aw" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="LOH_b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="LOOH_aw" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="LOOH_b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="MAX_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="ML_airways" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="ML_ex" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="M_Hn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="M_IL5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="M_LTC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="M_LTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="M_LTE" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="M_ML" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="M_ZF" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="NADP_aw" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="NADP_b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="NP_pool_aw" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="NP_pool_b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="N_A_pmole" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="OL_b_ex" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="PL" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="Q_AW_blf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="R1_portion_EOa" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="R1_portion_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="R2_portion_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="R_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="R_Hn_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="R_Hn_B" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="R_LTC_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="R_LTC_B" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="R_LTD_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="R_LTD_B" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="R_LTE_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="R_LTE_B" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="R_ZF_AW" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="R_ZF_B" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="R_in_relax_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="TSN_0" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="V_CoA" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="Vmax_PLA2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="a" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="al" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="ca" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="diam_EO" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="fup_Hn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="fup_LT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="fup_ML" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="fup_ZF" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="h_act" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="h_matur" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="h_migr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="k1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="k1_min" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="k3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="k_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="k_EO_a_d" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="k_EO_d" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="k_EO_m" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="k_EO_t_baw" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="k_EO_t_bmb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="k_Hn_d" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_123" name="k_Hn_p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="k_IL_d" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_125" name="k_IL_p" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_126" name="k_IL_t_awb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_127" name="k_IL_t_bbm" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_128" name="k_LTCs_back" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_129" name="k_LTCs_fow" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_130" name="k_abs_ml" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_131" name="k_abs_zf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_132" name="k_acet" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="k_dp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="k_elim_ml" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_135" name="k_elim_zf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_136" name="k_fev_eff" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_137" name="k_ggt" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_138" name="k_gpx_cat" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_139" name="k_hedh_1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_140" name="k_hedh_2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_141" name="k_hedh_3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_142" name="k_hedh_4" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_143" name="k_lo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_144" name="k_lta_syn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_145" name="k_ltc_ltd_el" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_146" name="k_lte_el" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_147" name="k_ox" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_148" name="k_ox2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_149" name="k_red" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_150" name="k_red2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_151" name="ka" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_152" name="ki" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_153" name="kia" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_154" name="n_FEV" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_155" name="naEO_LTCsyn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_156" name="npi" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_157" name="oral" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_158" name="oxoETE_aw" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_159" name="oxoETE_b" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_160" name="portion_migr" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_161" name="zf_inh" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_162" name="ft_zf" simulationType="assignment">
        <Expression>
          ceil(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[T],Reference=Value&gt;)+ceil((&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time&gt;-360)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[T],Reference=Value&gt;)+ceil((&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time&gt;-660)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[T],Reference=Value&gt;)+ceil((&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time&gt;-960)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[T],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_163" name="ft_ml" simulationType="assignment">
        <Expression>
          ceil(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[T],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_164" name="ZF_blood_conc" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_ZF],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_ZF],Vector=Metabolites[ZF_blood],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_165" name="ZF_airways_conc" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_ZF],Vector=Metabolites[ZF_airways],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_166" name="ML_blood_conc" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_ML],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_ML],Vector=Metabolites[ML_blood],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_167" name="ML_airways_conc" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_ML],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_ML],Vector=Metabolites[ML_blood],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_168" name="w_EO" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[npi],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[diam_EO],Reference=Value&gt;^3/6
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_169" name="V_CB" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_a_b],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_b],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_i_b],Reference=Concentration&gt;)*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_A_pmole],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[w_EO],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Reference=Volume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_170" name="V_aCB" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_a_b],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_A_pmole],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[w_EO],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Reference=Volume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_171" name="V_LTC_CB" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[naEO_LTCsyn],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_b],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_i_b],Reference=Concentration&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_a_b],Reference=Concentration&gt;)*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_A_pmole],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[w_EO],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Reference=Volume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_172" name="V_CAW" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_a_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_i_aw],Reference=Concentration&gt;)*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_A_pmole],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[w_EO],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Reference=Volume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_173" name="V_aCAW" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_a_aw],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_A_pmole],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[w_EO],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Reference=Volume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_174" name="V_LTC_CAW" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[naEO_LTCsyn],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_i_aw],Reference=Concentration&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_a_aw],Reference=Concentration&gt;)*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_A_pmole],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[w_EO],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Reference=Volume&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_175" name="GSSG_b" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GS_pool_b],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;)/2
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_176" name="NADPH_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NP_pool_b],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADP_b],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_177" name="PLA2_D" simulationType="assignment">
        <Expression>
          1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_PLA2_Ca],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_178" name="PLA2_Ca" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_PLA2_Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[PLA2_D],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_179" name="Ki_AA_AA" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_AA],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_180" name="K_AA_HETE" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_HETE],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_181" name="Ki_HPETE_AA" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_AA],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_182" name="OOH_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_b],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[LOOH_b],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_183" name="OH_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_b],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[LOH_b],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_184" name="r1" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_ox],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_ox2],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca2],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_185" name="r2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_red],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_red2],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca2],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_186" name="REDOX_b" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r2],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ke_red],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r1],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[OH_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ke_ox],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[al],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ki],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ZF_blood_conc],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[KdZ],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca3],Reference=Value&gt;))/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r2],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r1],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[OOH_b],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_187" name="RELFLO5_b" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_lo],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_AA],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_b],Reference=Concentration&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_AA],Reference=Value&gt;))/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_lta_syn],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_3],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_HPETE_AA],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_188" name="DFLOa_b" simulationType="assignment">
        <Expression>
          (1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca3],Reference=Value&gt;)*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[REDOX_b],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca2],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca3],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_AA],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_AA_AA],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_AA],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_AA_HETE],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[RELFLO5_b],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_HPETE_AA],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_HETE],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[al],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ZF_blood_conc],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[KdZ],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_189" name="FLO3_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLOa],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[DFLOa_b],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_190" name="FLO2_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLO3_b],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[REDOX_b],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_191" name="FLO3t_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLO3_b],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca3],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_192" name="FLO2t_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLO2_b],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca2],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_193" name="FLO5HP_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLO3t_b],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[RELFLO5_b],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_194" name="C_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_b],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_HPETE5],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_195" name="A_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;)*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSSG_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_gpx_GSSG],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_HPETE5],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_gpx_HETE5],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[C_b],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_196" name="B_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_gpx_cat],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_b],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_HPETE5],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_197" name="delta_LTCs_b" simulationType="assignment">
        <Expression>
          1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTA4_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_GSH],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTA4_b],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA_GSH],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTC4_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTC],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_198" name="nom_LTCs_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Et_LTCs],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTC],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_LTCs_fow],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTA4_b],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_b],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_LTCs_back],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTC4_b],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_199" name="den_LTCs_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[delta_LTCs_b],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTC],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_200" name="C_hedh_b" simulationType="assignment">
        <Expression>
          (1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_HETE5],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADPH_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADPH],Reference=Value&gt;)*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_3],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[oxoETE_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_oxoETE5],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_2],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADP_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADP],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_201" name="A_hedh_b" simulationType="assignment">
        <Expression>
          (1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADP_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADP],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[oxoETE_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_oxoETE5],Reference=Value&gt;)*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_1],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_HETE5],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_4],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADPH_b],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADPH],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[C_hedh_b],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_202" name="B_hedh_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_1],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_2],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_b],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADP_b],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_HETE5],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADP],Reference=Value&gt;)-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[oxoETE_b],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADPH_b],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_3],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_4],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_oxoETE5],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADPH],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_203" name="GSSG_aw" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GS_pool_aw],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;)/2
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_204" name="NADPH_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NP_pool_aw],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADP_aw],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_205" name="OOH_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[LOOH_aw],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_206" name="OH_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[LOH_aw],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_207" name="REDOX_aw" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r2],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ke_red],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r1],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[OH_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ke_ox],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[al],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ki],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ZF_airways_conc],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[KdZ],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca3],Reference=Value&gt;))/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r2],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r1],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[OOH_aw],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_208" name="RELFLO5_aw" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_lo],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_AA],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k3],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_aw],Reference=Concentration&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_AA],Reference=Value&gt;))/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_lta_syn],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_3],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_HPETE_AA],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_209" name="DFLOa_aw" simulationType="assignment">
        <Expression>
          (1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca3],Reference=Value&gt;)*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[REDOX_aw],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca2],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca3],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_AA],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_AA_AA],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_AA],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_AA_HETE],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[RELFLO5_aw],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[AA_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_HPETE_AA],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_HETE],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[al],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ZF_airways_conc],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[KdZ],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_210" name="FLO3_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLOa],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[DFLOa_aw],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_211" name="FLO2_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLO3_aw],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[REDOX_aw],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_212" name="FLO3t_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLO3_aw],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca3],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_213" name="FLO2t_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLO2_aw],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca2],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_214" name="FLO5HP_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FLO3t_aw],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[RELFLO5_aw],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_215" name="C_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_aw],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_HPETE5],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_216" name="A_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;)*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSSG_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_gpx_GSSG],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_HPETE5],Reference=Value&gt;*(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_gpx_HETE5],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[C_aw],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_217" name="B_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_gpx_cat],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HPETE_aw],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_HPETE5],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Km_gpx_GSH],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_218" name="delta_LTCs_aw" simulationType="assignment">
        <Expression>
          1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTA4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_GSH],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTA4_aw],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA_GSH],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTC4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTC],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_219" name="nom_LTCs_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Et_LTCs],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTC],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_LTCs_fow],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTA4_aw],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[GSH_aw],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_LTCs_back],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTC4_aw],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_220" name="den_LTCs_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[delta_LTCs_aw],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTA_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_GSH],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_LTC],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_221" name="C_hedh_aw" simulationType="assignment">
        <Expression>
          (1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_HETE5],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADPH_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADPH],Reference=Value&gt;)*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_3],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[oxoETE_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_oxoETE5],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_2],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADP_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADP],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_222" name="A_hedh_aw" simulationType="assignment">
        <Expression>
          (1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADP_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADP],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[oxoETE_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_oxoETE5],Reference=Value&gt;)*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_1],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_HETE5],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_4],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADPH_aw],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADPH],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[C_hedh_aw],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_223" name="B_hedh_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_1],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_2],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[HETE_aw],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADP_aw],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_HETE5],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADP],Reference=Value&gt;)-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[oxoETE_aw],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[NADPH_aw],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_3],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_hedh_4],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_oxoETE5],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_hedh_NADPH],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_224" name="OL_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_EOa],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_LTD],Vector=Metabolites[LTD4_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LT],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_LTD],Vector=Metabolites[LTD4_b],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LT],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ML_blood_conc],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_ML_EOa],Reference=Value&gt;)+(1-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_EOa],Reference=Value&gt;)*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_LTC],Vector=Metabolites[LTC4_b_out],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_LTD],Vector=Metabolites[LTD4_b],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LT_2],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_LTC],Vector=Metabolites[LTC4_b_out],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_LTD],Vector=Metabolites[LTD4_b],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LT_2],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_225" name="OL_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_EOa],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LT],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LT],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ML_airways_conc],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ki_ML_EOa],Reference=Value&gt;)+(1-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_EOa],Reference=Value&gt;)*((&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTC],Vector=Metabolites[LTC4_aw_out],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LT_2],Reference=Value&gt;)/(1+(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTC],Vector=Metabolites[LTC4_aw_out],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LT_2],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_226" name="Rec_occup_migr" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[portion_migr],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_LTE],Vector=Metabolites[LTE4_b],Reference=Concentration&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTE_migr],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_LTE],Vector=Metabolites[LTE4_b],Reference=Concentration&gt;)+(1-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[portion_migr],Reference=Value&gt;)*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_IL5],Vector=Metabolites[IL_b],Reference=Concentration&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_IL_migr],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_IL5],Vector=Metabolites[IL_b],Reference=Concentration&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_227" name="Ca_FEV" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Cao_FEV],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_fev_eff],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_FEV],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR1_FEV],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR1_FEV],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ML_airways_conc],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[EC50_ML_FEV],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R2_portion_FEV],Reference=Value&gt;*((&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTC],Vector=Metabolites[LTC4_aw_out],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR2_FEV],Reference=Value&gt;)/(1+(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTC],Vector=Metabolites[LTC4_aw_out],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR2_FEV],Reference=Value&gt;)+(1-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_FEV],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R2_portion_FEV],Reference=Value&gt;)*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_Hn],Vector=Metabolites[Hn_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_Hn_FEV],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_Hn],Vector=Metabolites[Hn_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_Hn_FEV],Reference=Value&gt;))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_228" name="r_out_FEV" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;-(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;-(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_in_relax_FEV],Reference=Value&gt;)^2)^(1/3))*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca_FEV],Reference=Value&gt;^&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[n_FEV],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca_FEV],Reference=Value&gt;^&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[n_FEV],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca_FEV],Reference=Value&gt;^&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[n_FEV],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_229" name="r_in_FEV" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r_out_FEV],Reference=Value&gt;-(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_in_relax_FEV],Reference=Value&gt;)*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r_out_FEV],Reference=Value&gt;)^0.5
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_230" name="FEV1" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[MAX_FEV],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[r_in_FEV],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_in_relax_FEV],Reference=Value&gt;)^2
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_231" name="TSN" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[TSN_0],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;-(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_in_relax_FEV],Reference=Value&gt;)^2)^(1/3))*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca_FEV_ex],Reference=Value&gt;^&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[n_FEV],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca_FEV],Reference=Value&gt;^&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[n_FEV],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca_FEV_ex],Reference=Value&gt;^&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[n_FEV],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_232" name="TSN_Hn" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[TSN_0],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;-(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_FEV],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R_in_relax_FEV],Reference=Value&gt;)^2)^(1/3))*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca_FEV],Reference=Value&gt;^&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[n_FEV],Reference=Value&gt;/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[K_Ca_FEV],Reference=Value&gt;^&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[n_FEV],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca_FEV],Reference=Value&gt;^&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[n_FEV],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_233" name="FEV1_percent" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FEV1],Reference=Value&gt;-3.528)/3.528*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_234" name="time_hour" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time&gt;/60
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_235" name="time_day" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time&gt;/1440
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_236" name="N_EO_bm" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_BM],Vector=Metabolites[EO_bm],Reference=Concentration&gt;*6.02*10^8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_237" name="N_EO_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_b],Reference=Concentration&gt;*6.02*10^8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_238" name="N_EO_i_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_i_b],Reference=Concentration&gt;*6.02*10^8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_239" name="N_EO_a_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_a_b],Reference=Concentration&gt;*6.02*10^8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_240" name="EO_b_tot" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_b],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_i_b],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_a_b],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_241" name="N_EO_b_tot" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_b],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_i_b],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Vector=Metabolites[EO_a_b],Reference=Concentration&gt;)*6.02*10^8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_242" name="N_EO_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_aw],Reference=Concentration&gt;*6.02*10^8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_243" name="N_EO_i_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_i_aw],Reference=Concentration&gt;*6.02*10^8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_244" name="N_EO_a_aw" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_a_aw],Reference=Concentration&gt;*6.02*10^8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_245" name="EO_aw_tot" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_i_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_a_aw],Reference=Concentration&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_246" name="N_EO_aw_tot" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_i_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Vector=Metabolites[EO_a_aw],Reference=Concentration&gt;)*6.02*10^8
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_247" name="EO_b_tot_per_ss" simulationType="assignment">
        <Expression>
          100*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[EO_b_tot],Reference=Value&gt;-0.000533)/0.000533
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_248" name="N_EO_aw_tot_perc" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_EO_aw_tot],Reference=Value&gt;/818735*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_249" name="N_EO_b_tot_perc" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_EO_b_tot],Reference=Value&gt;/4.26602e+06*100
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_250" name="N_EO" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_EO_b_tot],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Reference=Volume&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_EO_aw_tot],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Reference=Volume&gt;)/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Reference=Volume&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Reference=Volume&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_251" name="N_EO_a" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_EO_a_b],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Reference=Volume&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_EO_a_aw],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Reference=Volume&gt;)/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_B],Reference=Volume&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[V_AW],Reference=Volume&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_252" name="LTC4_b_pM" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Default],Vector=Metabolites[LTC4_b],Reference=Concentration&gt;*1e+06
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_253" name="LTs_aw_pg" simulationType="assignment">
        <Expression>
          (&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTC],Vector=Metabolites[LTC4_aw_out],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[M_LTC],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[M_LTD],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTE],Vector=Metabolites[LTE4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[M_LTE],Reference=Value&gt;)/1000
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_254" name="LTD4_b_free" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_LTD],Vector=Metabolites[LTD4_b],Reference=Concentration&gt;*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[fup_LT],Reference=Value&gt;
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_255" name="ML_uM" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_ML],Vector=Metabolites[ML_blood],Reference=Concentration&gt;/1e+06
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_256" name="LTD4_aw_pers" simulationType="assignment">
        <Expression>
          100*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/205.76
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_257" name="N_EO_perc" simulationType="assignment">
        <Expression>
          100*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_EO],Reference=Value&gt;/358758
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_258" name="Hn_aw_perc" simulationType="assignment">
        <Expression>
          100*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_Hn],Vector=Metabolites[Hn_aw],Reference=Concentration&gt;/14162
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_259" name="N_EO_aw_perc" simulationType="assignment">
        <Expression>
          100*&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_EO_aw_tot],Reference=Value&gt;/818735
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_260" name="Ca_FEV_LTR1" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_fev_eff],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_FEV],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR1_FEV],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR1_FEV],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ML_airways_conc],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[EC50_ML_FEV],Reference=Value&gt;))/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca_FEV],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Cao_FEV],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_261" name="Ca_FEV_LTR2" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[k_fev_eff],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R2_portion_FEV],Reference=Value&gt;*((&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTC],Vector=Metabolites[LTC4_aw_out],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR2_FEV],Reference=Value&gt;)/(1+(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTC],Vector=Metabolites[LTC4_aw_out],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR2_FEV],Reference=Value&gt;)+(1-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_FEV],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R2_portion_FEV],Reference=Value&gt;)*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_Hn],Vector=Metabolites[Hn_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_Hn_FEV],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_Hn],Vector=Metabolites[Hn_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_Hn_FEV],Reference=Value&gt;))/(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Ca_FEV],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Cao_FEV],Reference=Value&gt;)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_262" name="OL_ASM" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_FEV],Reference=Value&gt;*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR1_FEV],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR1_FEV],Reference=Value&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ML_airways_conc],Reference=Value&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[EC50_ML_FEV],Reference=Value&gt;)+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R2_portion_FEV],Reference=Value&gt;*((&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTC],Vector=Metabolites[LTC4_aw_out],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR2_FEV],Reference=Value&gt;)/(1+(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTD],Vector=Metabolites[LTD4_aw],Reference=Concentration&gt;+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_LTC],Vector=Metabolites[LTC4_aw_out],Reference=Concentration&gt;)/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_LTR2_FEV],Reference=Value&gt;)+(1-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R1_portion_FEV],Reference=Value&gt;-&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[R2_portion_FEV],Reference=Value&gt;)*(&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_Hn],Vector=Metabolites[Hn_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_Hn_FEV],Reference=Value&gt;)/(1+&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Compartments[Vd_AW_Hn],Vector=Metabolites[Hn_aw],Reference=Concentration&gt;/&lt;CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[Kd_Hn_FEV],Reference=Value&gt;)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="v1" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_753" name="Km_CoA_AA" value="1"/>
          <Constant key="Parameter_752" name="Km_PLA2_APC" value="1"/>
          <Constant key="Parameter_751" name="PL" value="1"/>
          <Constant key="Parameter_750" name="PLA2_Ca" value="1"/>
          <Constant key="Parameter_749" name="V_CoA" value="1"/>
          <Constant key="Parameter_748" name="Vmax_PLA2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_40">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="v2" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_747" name="FLO3t_b" value="1"/>
          <Constant key="Parameter_746" name="K_AA" value="1"/>
          <Constant key="Parameter_745" name="k_lo" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="v3" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_744" name="FLO3t_b" value="1"/>
          <Constant key="Parameter_743" name="FLO5HP_b" value="1"/>
          <Constant key="Parameter_742" name="Ki_AA" value="1"/>
          <Constant key="Parameter_741" name="k3" value="1"/>
          <Constant key="Parameter_740" name="k_3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_42">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_191"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="v4" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_739" name="FLO2_b" value="1"/>
          <Constant key="Parameter_738" name="FLO3_b" value="1"/>
          <Constant key="Parameter_737" name="Ke_ox" value="1"/>
          <Constant key="Parameter_736" name="r1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_190"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_189"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_184"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="v5" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_735" name="A_b" value="1"/>
          <Constant key="Parameter_734" name="B_b" value="1"/>
          <Constant key="Parameter_733" name="GPx" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_44">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_195"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_196"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="v6" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_732" name="FLO5HP_b" value="1"/>
          <Constant key="Parameter_731" name="k_lta_syn" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_45">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_193"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="v7" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_730" name="den_LTCs_b" value="1"/>
          <Constant key="Parameter_729" name="nom_LTCs_b" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_46">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="ModelValue_199"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_198"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="v8" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_728" name="A_hedh_b" value="1"/>
          <Constant key="Parameter_727" name="B_hedh_b" value="1"/>
          <Constant key="Parameter_726" name="HEDH5" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_47">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_201"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_202"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="v9" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_725" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="v10in" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_724" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="v10out" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_723" name="Kd50" value="1"/>
          <Constant key="Parameter_722" name="V_LTC_CB" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_48">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="v11" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_721" name="fup_LT" value="1"/>
          <Constant key="Parameter_720" name="k_ggt" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_49">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="v12" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_719" name="fup_LT" value="1"/>
          <Constant key="Parameter_718" name="k_dp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_50">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="v13" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_717" name="fup_LT" value="1"/>
          <Constant key="Parameter_716" name="k_ltc_ltd_el" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_51">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="v14" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_715" name="fup_LT" value="1"/>
          <Constant key="Parameter_714" name="k_ltc_ltd_el" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_52">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="v15" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_713" name="fup_LT" value="1"/>
          <Constant key="Parameter_712" name="k_acet" value="1"/>
          <Constant key="Parameter_711" name="k_lte_el" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_53">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_146"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="v16" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_710" name="EC50_act" value="1"/>
          <Constant key="Parameter_709" name="OL_b" value="1"/>
          <Constant key="Parameter_708" name="ca" value="1"/>
          <Constant key="Parameter_707" name="h_act" value="1"/>
          <Constant key="Parameter_706" name="ka" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_54">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_224"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_151"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="v17" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_705" name="ca" value="1"/>
          <Constant key="Parameter_704" name="k_EO_m" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_55">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="v18" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_703" name="ca" value="1"/>
          <Constant key="Parameter_702" name="kia" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_56">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_153"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="v19" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_701" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="v20" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_700" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="v21" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_699" name="EC50_migr" value="1"/>
          <Constant key="Parameter_698" name="Rec_occup_migr" value="1"/>
          <Constant key="Parameter_697" name="h_migr" value="1"/>
          <Constant key="Parameter_696" name="k_EO_t_baw" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_57">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="ModelValue_226"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="v22" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_695" name="EC50_migr" value="1"/>
          <Constant key="Parameter_694" name="Rec_occup_migr" value="1"/>
          <Constant key="Parameter_693" name="h_migr" value="1"/>
          <Constant key="Parameter_692" name="k_EO_t_baw" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_58">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="ModelValue_226"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="v23" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_691" name="EC50_migr" value="1"/>
          <Constant key="Parameter_690" name="Rec_occup_migr" value="1"/>
          <Constant key="Parameter_689" name="h_migr" value="1"/>
          <Constant key="Parameter_688" name="k_EO_t_baw" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_59">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="ModelValue_226"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="v24" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_687" name="k_Hn_p" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_60">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Compartment_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="v25" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_686" name="fup_Hn" value="1"/>
          <Constant key="Parameter_685" name="k_Hn_d" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_61">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="v26" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_684" name="k_IL_p" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_62">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Compartment_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="Compartment_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="v27" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_683" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="v28" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_682" name="J_BM_lymfl" value="1"/>
          <Constant key="Parameter_681" name="k_IL_t_bbm" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_63">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="v29" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_680" name="Km_1" value="1"/>
          <Constant key="Parameter_679" name="h_matur" value="1"/>
          <Constant key="Parameter_678" name="k1" value="1"/>
          <Constant key="Parameter_677" name="k1_min" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_64">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="v30" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_676" name="ca" value="1"/>
          <Constant key="Parameter_675" name="k_EO_t_bmb" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_65">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="Compartment_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="v31" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_674" name="Km_CoA_AA" value="1"/>
          <Constant key="Parameter_673" name="Km_PLA2_APC" value="1"/>
          <Constant key="Parameter_672" name="PL" value="1"/>
          <Constant key="Parameter_671" name="PLA2_Ca" value="1"/>
          <Constant key="Parameter_670" name="V_CoA" value="1"/>
          <Constant key="Parameter_669" name="Vmax_PLA2" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="ModelValue_178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="v32" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_668" name="FLO3t_aw" value="1"/>
          <Constant key="Parameter_667" name="K_AA" value="1"/>
          <Constant key="Parameter_666" name="k_lo" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_67">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="ModelValue_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="v33" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_665" name="FLO3t_aw" value="1"/>
          <Constant key="Parameter_664" name="FLO5HP_aw" value="1"/>
          <Constant key="Parameter_663" name="Ki_AA" value="1"/>
          <Constant key="Parameter_662" name="k3" value="1"/>
          <Constant key="Parameter_661" name="k_3" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_68">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="ModelValue_212"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="ModelValue_214"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="v34" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_660" name="FLO2_aw" value="1"/>
          <Constant key="Parameter_659" name="FLO3_aw" value="1"/>
          <Constant key="Parameter_658" name="Ke_ox" value="1"/>
          <Constant key="Parameter_657" name="r1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_69">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="ModelValue_211"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="ModelValue_210"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="ModelValue_184"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="v35" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_656" name="A_aw" value="1"/>
          <Constant key="Parameter_655" name="B_aw" value="1"/>
          <Constant key="Parameter_654" name="GPx" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_70">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="ModelValue_216"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_217"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="v36" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_653" name="FLO5HP_aw" value="1"/>
          <Constant key="Parameter_652" name="k_lta_syn" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_71">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="ModelValue_214"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="v37" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_651" name="den_LTCs_aw" value="1"/>
          <Constant key="Parameter_650" name="nom_LTCs_aw" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_72">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="ModelValue_220"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="ModelValue_219"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="v38" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_649" name="A_hedh_aw" value="1"/>
          <Constant key="Parameter_648" name="B_hedh_aw" value="1"/>
          <Constant key="Parameter_647" name="HEDH5" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_73">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="ModelValue_222"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="ModelValue_223"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="v39" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_646" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="v40in" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_645" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="v40out" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_644" name="Kd50" value="1"/>
          <Constant key="Parameter_643" name="V_LTC_CAW" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_74">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="ModelValue_174"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="v41" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_642" name="k_ggt" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_75">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="Compartment_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="v42" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_641" name="k_dp" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_76">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="Compartment_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="v43" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_640" name="Kp_LTE_AW" value="1"/>
          <Constant key="Parameter_639" name="Q_AW_blf" value="1"/>
          <Constant key="Parameter_638" name="R_LTE_AW" value="1"/>
          <Constant key="Parameter_637" name="R_LTE_B" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_77">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="v44" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_636" name="Kp_LTD_AW" value="1"/>
          <Constant key="Parameter_635" name="Q_AW_blf" value="1"/>
          <Constant key="Parameter_634" name="R_LTD_AW" value="1"/>
          <Constant key="Parameter_633" name="R_LTD_B" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_78">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="v45" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_632" name="Kp_LTC_AW" value="1"/>
          <Constant key="Parameter_631" name="Q_AW_blf" value="1"/>
          <Constant key="Parameter_630" name="R_LTC_AW" value="1"/>
          <Constant key="Parameter_629" name="R_LTC_B" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_79">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="v46" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_628" name="EC50_act" value="1"/>
          <Constant key="Parameter_627" name="OL_aw" value="1"/>
          <Constant key="Parameter_626" name="ca" value="1"/>
          <Constant key="Parameter_625" name="h_act" value="1"/>
          <Constant key="Parameter_624" name="ka" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_80">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_632">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_633">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_634">
              <SourceParameter reference="ModelValue_225"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_635">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_636">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_637">
              <SourceParameter reference="ModelValue_151"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="v47" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_623" name="ca" value="1"/>
          <Constant key="Parameter_622" name="k_EO_m" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_81">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="v48" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_621" name="ca" value="1"/>
          <Constant key="Parameter_620" name="kia" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_82">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_647">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_648">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_649">
              <SourceParameter reference="ModelValue_153"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="v49" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_619" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="v50" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_618" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="v51" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_617" name="k_Hn_p" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_83">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_660">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_661">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_662">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_663">
              <SourceParameter reference="Compartment_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_664">
              <SourceParameter reference="Compartment_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_665">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="v52" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_616" name="Kp_Hn_AW" value="1"/>
          <Constant key="Parameter_615" name="Q_AW_blf" value="1"/>
          <Constant key="Parameter_614" name="R_Hn_AW" value="1"/>
          <Constant key="Parameter_613" name="R_Hn_B" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_84">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_672">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_673">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_674">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_675">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_676">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_677">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="v53" reversible="false">
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_612" name="k_IL_p" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_85">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_655">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_658">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="v54" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_611" name="J_AW_lymfl" value="1"/>
          <Constant key="Parameter_610" name="k_IL_t_awb" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_86">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_686">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_687">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_688">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_689">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="v55" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_609" name="k_acet" value="1"/>
          <Constant key="Parameter_608" name="k_lte_el" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_87">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_657">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_694">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_695">
              <SourceParameter reference="ModelValue_146"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="v56" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_607" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="v57" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_606" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="v58" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_605" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="v59" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_604" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="v60" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_603" name="DOSE_zf" value="1"/>
          <Constant key="Parameter_602" name="F_zf" value="1"/>
          <Constant key="Parameter_601" name="M_ZF" value="1"/>
          <Constant key="Parameter_600" name="a" value="1"/>
          <Constant key="Parameter_599" name="ft_zf" value="1"/>
          <Constant key="Parameter_598" name="k_abs_zf" value="1"/>
          <Constant key="Parameter_597" name="oral" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_88">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_713">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_714">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_715">
              <SourceParameter reference="ModelValue_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_716">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_717">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_718">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_719">
              <SourceParameter reference="ModelValue_162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_720">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_721">
              <SourceParameter reference="ModelValue_157"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="v61" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_596" name="Kp_ZF_AW" value="1"/>
          <Constant key="Parameter_595" name="Q_AW_blf" value="1"/>
          <Constant key="Parameter_594" name="R_ZF_AW" value="1"/>
          <Constant key="Parameter_593" name="R_ZF_B" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_89">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_708">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_704">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_711">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_731">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_732">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_733">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="v62" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_592" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="v63" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_591" name="DOSE_ml" value="1"/>
          <Constant key="Parameter_590" name="F_ml" value="1"/>
          <Constant key="Parameter_589" name="M_ML" value="1"/>
          <Constant key="Parameter_588" name="a" value="1"/>
          <Constant key="Parameter_587" name="ft_ml" value="1"/>
          <Constant key="Parameter_586" name="k_abs_ml" value="1"/>
          <Constant key="Parameter_585" name="oral" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_90">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_745">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_746">
              <SourceParameter reference="Compartment_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_747">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_748">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_749">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_750">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_751">
              <SourceParameter reference="ModelValue_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_752">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_753">
              <SourceParameter reference="ModelValue_157"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="v64" reversible="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_584" name="k1" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_13">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_1"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
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
      <StateTemplateVariable objectReference="ModelValue_187"/>
      <StateTemplateVariable objectReference="ModelValue_188"/>
      <StateTemplateVariable objectReference="ModelValue_189"/>
      <StateTemplateVariable objectReference="ModelValue_190"/>
      <StateTemplateVariable objectReference="ModelValue_191"/>
      <StateTemplateVariable objectReference="ModelValue_193"/>
      <StateTemplateVariable objectReference="ModelValue_194"/>
      <StateTemplateVariable objectReference="ModelValue_195"/>
      <StateTemplateVariable objectReference="ModelValue_196"/>
      <StateTemplateVariable objectReference="ModelValue_197"/>
      <StateTemplateVariable objectReference="ModelValue_198"/>
      <StateTemplateVariable objectReference="ModelValue_199"/>
      <StateTemplateVariable objectReference="ModelValue_200"/>
      <StateTemplateVariable objectReference="ModelValue_201"/>
      <StateTemplateVariable objectReference="ModelValue_202"/>
      <StateTemplateVariable objectReference="ModelValue_203"/>
      <StateTemplateVariable objectReference="ModelValue_204"/>
      <StateTemplateVariable objectReference="ModelValue_205"/>
      <StateTemplateVariable objectReference="ModelValue_206"/>
      <StateTemplateVariable objectReference="ModelValue_207"/>
      <StateTemplateVariable objectReference="ModelValue_208"/>
      <StateTemplateVariable objectReference="ModelValue_209"/>
      <StateTemplateVariable objectReference="ModelValue_210"/>
      <StateTemplateVariable objectReference="ModelValue_211"/>
      <StateTemplateVariable objectReference="ModelValue_212"/>
      <StateTemplateVariable objectReference="ModelValue_214"/>
      <StateTemplateVariable objectReference="ModelValue_215"/>
      <StateTemplateVariable objectReference="ModelValue_216"/>
      <StateTemplateVariable objectReference="ModelValue_217"/>
      <StateTemplateVariable objectReference="ModelValue_218"/>
      <StateTemplateVariable objectReference="ModelValue_219"/>
      <StateTemplateVariable objectReference="ModelValue_220"/>
      <StateTemplateVariable objectReference="ModelValue_221"/>
      <StateTemplateVariable objectReference="ModelValue_222"/>
      <StateTemplateVariable objectReference="ModelValue_223"/>
      <StateTemplateVariable objectReference="ModelValue_224"/>
      <StateTemplateVariable objectReference="ModelValue_225"/>
      <StateTemplateVariable objectReference="ModelValue_226"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_192"/>
      <StateTemplateVariable objectReference="ModelValue_213"/>
      <StateTemplateVariable objectReference="ModelValue_227"/>
      <StateTemplateVariable objectReference="ModelValue_228"/>
      <StateTemplateVariable objectReference="ModelValue_229"/>
      <StateTemplateVariable objectReference="ModelValue_230"/>
      <StateTemplateVariable objectReference="ModelValue_231"/>
      <StateTemplateVariable objectReference="ModelValue_232"/>
      <StateTemplateVariable objectReference="ModelValue_233"/>
      <StateTemplateVariable objectReference="ModelValue_234"/>
      <StateTemplateVariable objectReference="ModelValue_235"/>
      <StateTemplateVariable objectReference="ModelValue_236"/>
      <StateTemplateVariable objectReference="ModelValue_237"/>
      <StateTemplateVariable objectReference="ModelValue_238"/>
      <StateTemplateVariable objectReference="ModelValue_239"/>
      <StateTemplateVariable objectReference="ModelValue_240"/>
      <StateTemplateVariable objectReference="ModelValue_241"/>
      <StateTemplateVariable objectReference="ModelValue_242"/>
      <StateTemplateVariable objectReference="ModelValue_243"/>
      <StateTemplateVariable objectReference="ModelValue_244"/>
      <StateTemplateVariable objectReference="ModelValue_245"/>
      <StateTemplateVariable objectReference="ModelValue_246"/>
      <StateTemplateVariable objectReference="ModelValue_247"/>
      <StateTemplateVariable objectReference="ModelValue_248"/>
      <StateTemplateVariable objectReference="ModelValue_249"/>
      <StateTemplateVariable objectReference="ModelValue_250"/>
      <StateTemplateVariable objectReference="ModelValue_251"/>
      <StateTemplateVariable objectReference="ModelValue_252"/>
      <StateTemplateVariable objectReference="ModelValue_253"/>
      <StateTemplateVariable objectReference="ModelValue_254"/>
      <StateTemplateVariable objectReference="ModelValue_255"/>
      <StateTemplateVariable objectReference="ModelValue_256"/>
      <StateTemplateVariable objectReference="ModelValue_257"/>
      <StateTemplateVariable objectReference="ModelValue_258"/>
      <StateTemplateVariable objectReference="ModelValue_259"/>
      <StateTemplateVariable objectReference="ModelValue_260"/>
      <StateTemplateVariable objectReference="ModelValue_261"/>
      <StateTemplateVariable objectReference="ModelValue_262"/>
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
    </StateTemplate>
    <InitialState type="initialState">
      0 7.921527196786935e+17 1.238035045959681e+28 1.718296037314668e+20 3.682391575348068e+24 1.908240285405124e+26 9.109543056357101e+20 7.470145091941613e+27 1.487933764577855e+17 3.338437908762426e+26 1.786069094002823e+23 1.072304975984116e+24 7.053001350376946e+32 6.51094097266893e+23 2.510785681295003e+25 0 8.381388984461536e+22 2.992163487720847e+26 4.810157209810415e+31 9.2719811199798e+16 1.172133889163196e+28 1.740967467494976e+23 7.858214533927731e+22 0 8.134995515780137e+17 4.099083423414973e+24 5.341563286529267e+23 1.180897441169754e+24 3.033776176190837e+24 1.718277067568622e+16 1.998929525581655e+23 0 0 0 0 0 0 0 0 0 9.0432e-13 0.0008235012131769089 0.0001553336827732795 2500 1000 11 0.9090909090909091 551.8748000000001 0.5408177 551.8748000000001 1.2965837 5.037703 4.67752776425514 0.0002568819815443038 73.54581075767403 0.0004240979773118689 89.01391827728088 0.01685129729181742 1.239342321645309 0.01685366520207643 7.147605322492042e-06 3.447401542984583 2426767.473355327 1.684053930047198 14.68333068773003 1381085.74988699 3620907.277773484 462731150.9081092 465739325.8812161 1597805534.623425 4500 100 21.780604 1.960926 4.376891028281933 0.0003675067172012238 9.321640955078292 0.1609158738497455 0.7043112445610985 0.1609384854233193 5.914597444926108e-05 0.8278886502588673 174726.0037267663 0.4044231917071315 74.88883528981404 54052143.63383675 18467576.22583982 76236291.73845935 77061290.49118817 901821465.6344593 0.09966249667037133 0.09921460922884615 0.01025151115161327 0.0008243011365080543 0.0008235012131769089 0.0001554837249407924 0.0001553336827732795 1.325603165420952 0.7533327950846526 30506.63490554223 2.731882897612862 1.751981108492022 3.528476119537018 1.57698720482192 4.264315087000651 0.01349545172954724 0 0 985.7093819999999 281.804628 32.98463951999999 324067.737 0.00053884140576 324382.52626752 708.2879159999999 81.79361960000001 817945.2259999999 0.0013600254278 818735.3075355999 1.095948547842393 100.0000375622881 7.60386792062672 358758.0504454783 358410.2110536906 886987.3 2933.150751375 209.3580800000001 0 100.0000972006221 100.0000140611438 100.0010591724333 100.0000375622882 0.399436057812559 0.600563942187441 0.006835544968514077 1 9.47999954223633 9.47999954223633 9.47999954223633 2.80999994277954 0.209999993443489 78100 10.1999998092651 0.824999988079071 1.53999996185303 1.53999996185303 1.53999996185303 5640 9.44999980926514 3.25999999046326 10 1 10000 10000 50 0 500 0.75 0.115 1 1.5 0.6606880000000001 0.082 1.6 1000 5000 10000 10000 0.5 0.00115 0.00049 10.74959 14.36738 7116.527 150000 744.9176 1.75951 1696.6 0.1951215 0.1 0.007 0.43 20 6300000 50 1000 50000 1000 10000 10000 0.07154222 6.043446 0.331696 2.895899 2.685581 1.667019 99.99979 5.761955e-07 551.8748000000001 0.5408177 500 2 0.005 20 600 5.974381 3950 0.22 0.22 0.22 0.204 0.631 0 0 20 1 4.94 0 0 111.2 45000 625.8 496.7 439.6 586.1799999999999 236 2900 2000 3000 3000 602000000000 0 110 5.23 0.39 0.016 0.037 3.007 5130 141 1.4 0.538 1.4 0.538 1.4 0.538 2.96 0.533 2.073 1440 15.5 350 450 1 1 10 0.00012 0.77 0.16 0.004 0.06900000000000001 3 1 3 1e-06 1.6e-07 34 263640 0.00015 0.0003 10 0.04 0.02 0.033 18000000000 0.0046 16 0.05 0.001 1003.709 1068016 0.012 0.018 0.002703885 0.067 0.00225 0.004 3000000 0.1 0.4884995 88.33768000000001 1724.404 31.49749 8.077531 4642.68 54420 0.1 0.04 0.0002658 67.2 0.0002538 4.428e-05 500 25000 0.001 1 0 3.14 1 0 0 0.3 0 
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
        <Parameter name="StepNumber" type="unsignedInteger" value="144000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="144000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="0"/>
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
    <PlotSpecification name="Figure2" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[DOSE_ml]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[DOSE_ml],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[DOSE_zf]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[DOSE_zf],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[FEV1_percent]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[FEV1_percent],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[LTD4_aw_pers]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[LTD4_aw_pers],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[N_EO_aw_tot_perc]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[N_EO_aw_tot_perc],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[ft_ml]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ft_ml],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[ft_zf]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Demin2013 - PKPD behaviour - 5-Lipoxygenase inhibitors,Vector=Values[ft_zf],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="test_csymbol.xml">
    <SBMLMap SBMLid="AA_aw" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="AA_b" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="A_aw" COPASIkey="ModelValue_216"/>
    <SBMLMap SBMLid="A_b" COPASIkey="ModelValue_195"/>
    <SBMLMap SBMLid="A_hedh_aw" COPASIkey="ModelValue_222"/>
    <SBMLMap SBMLid="A_hedh_b" COPASIkey="ModelValue_201"/>
    <SBMLMap SBMLid="B_aw" COPASIkey="ModelValue_217"/>
    <SBMLMap SBMLid="B_b" COPASIkey="ModelValue_196"/>
    <SBMLMap SBMLid="B_hedh_aw" COPASIkey="ModelValue_223"/>
    <SBMLMap SBMLid="B_hedh_b" COPASIkey="ModelValue_202"/>
    <SBMLMap SBMLid="C_aw" COPASIkey="ModelValue_215"/>
    <SBMLMap SBMLid="C_b" COPASIkey="ModelValue_194"/>
    <SBMLMap SBMLid="C_hedh_aw" COPASIkey="ModelValue_221"/>
    <SBMLMap SBMLid="C_hedh_b" COPASIkey="ModelValue_200"/>
    <SBMLMap SBMLid="Ca" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="Ca_FEV" COPASIkey="ModelValue_227"/>
    <SBMLMap SBMLid="Ca_FEV_LTR1" COPASIkey="ModelValue_260"/>
    <SBMLMap SBMLid="Ca_FEV_LTR2" COPASIkey="ModelValue_261"/>
    <SBMLMap SBMLid="Ca_FEV_ex" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="Cao_FEV" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="DFLOa_aw" COPASIkey="ModelValue_209"/>
    <SBMLMap SBMLid="DFLOa_b" COPASIkey="ModelValue_188"/>
    <SBMLMap SBMLid="DOSE_ml" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="DOSE_zf" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="Default" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="EC50_ML_FEV" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="EC50_act" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="EC50_migr" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="EO_a_aw" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="EO_a_b" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="EO_aw" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="EO_aw_tot" COPASIkey="ModelValue_245"/>
    <SBMLMap SBMLid="EO_b" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="EO_b_tot" COPASIkey="ModelValue_240"/>
    <SBMLMap SBMLid="EO_b_tot_per_ss" COPASIkey="ModelValue_247"/>
    <SBMLMap SBMLid="EO_bm" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="EO_i_aw" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="EO_i_b" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Et_LTCs" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="FEV1" COPASIkey="ModelValue_230"/>
    <SBMLMap SBMLid="FEV1_percent" COPASIkey="ModelValue_233"/>
    <SBMLMap SBMLid="FLO2_aw" COPASIkey="ModelValue_211"/>
    <SBMLMap SBMLid="FLO2_b" COPASIkey="ModelValue_190"/>
    <SBMLMap SBMLid="FLO2t_aw" COPASIkey="ModelValue_213"/>
    <SBMLMap SBMLid="FLO2t_b" COPASIkey="ModelValue_192"/>
    <SBMLMap SBMLid="FLO3_aw" COPASIkey="ModelValue_210"/>
    <SBMLMap SBMLid="FLO3_b" COPASIkey="ModelValue_189"/>
    <SBMLMap SBMLid="FLO3t_aw" COPASIkey="ModelValue_212"/>
    <SBMLMap SBMLid="FLO3t_b" COPASIkey="ModelValue_191"/>
    <SBMLMap SBMLid="FLO5HP_aw" COPASIkey="ModelValue_214"/>
    <SBMLMap SBMLid="FLO5HP_b" COPASIkey="ModelValue_193"/>
    <SBMLMap SBMLid="FLOa" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="F_ml" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="F_zf" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="GPx" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="GSH_aw" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="GSH_b" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="GSSG_aw" COPASIkey="ModelValue_203"/>
    <SBMLMap SBMLid="GSSG_b" COPASIkey="ModelValue_175"/>
    <SBMLMap SBMLid="GS_pool_aw" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="GS_pool_b" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="HEDH5" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="HETE_aw" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="HETE_b" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="HPETE_aw" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="HPETE_b" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="Hn_aw" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="Hn_aw_perc" COPASIkey="ModelValue_258"/>
    <SBMLMap SBMLid="Hn_b" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="IL_aw" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="IL_b" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="IL_bm" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="J_AW_lymfl" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="J_BM_lymfl" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="K_AA" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="K_AA_HETE" COPASIkey="ModelValue_180"/>
    <SBMLMap SBMLid="K_Ca2" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="K_Ca3" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="K_Ca_FEV" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="K_GSH" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="K_LTA" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="K_LTA_GSH" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="K_LTC" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="K_PLA2_Ca" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="Kd12" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="Kd50" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="KdZ" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="Kd_Hn_FEV" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Kd_IL_migr" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="Kd_LT" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="Kd_LTE_migr" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Kd_LTR1_FEV" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="Kd_LTR2_FEV" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="Kd_LT_2" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="Kd_gpx_GSSG" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="Kd_gpx_HETE5" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="Kd_hedh_HETE5" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Kd_hedh_NADP" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Kd_hedh_NADPH" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="Kd_hedh_oxoETE5" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="Ke_ox" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="Ke_red" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="Ki_AA" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Ki_AA_AA" COPASIkey="ModelValue_179"/>
    <SBMLMap SBMLid="Ki_HETE" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="Ki_HPETE_AA" COPASIkey="ModelValue_181"/>
    <SBMLMap SBMLid="Ki_ML_EOa" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Km_1" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="Km_CoA_AA" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="Km_PLA2_APC" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="Km_gpx_GSH" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="Km_gpx_HPETE5" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="Kp_Hn_AW" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="Kp_LTC_AW" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="Kp_LTD_AW" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="Kp_LTE_AW" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="Kp_ZF_AW" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="Kp_ZF_IW" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="LOH_aw" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="LOH_b" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="LOOH_aw" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="LOOH_b" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="LTA4_aw" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="LTA4_b" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="LTC4_aw" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="LTC4_aw_out" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="LTC4_b" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="LTC4_b_out" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="LTC4_b_pM" COPASIkey="ModelValue_252"/>
    <SBMLMap SBMLid="LTD4_aw" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="LTD4_aw_pers" COPASIkey="ModelValue_256"/>
    <SBMLMap SBMLid="LTD4_b" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="LTD4_b_free" COPASIkey="ModelValue_254"/>
    <SBMLMap SBMLid="LTE4_aw" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="LTE4_b" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="LTs_aw_pg" COPASIkey="ModelValue_253"/>
    <SBMLMap SBMLid="MAX_FEV" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="ML_airways" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="ML_airways_conc" COPASIkey="ModelValue_167"/>
    <SBMLMap SBMLid="ML_blood" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="ML_blood_conc" COPASIkey="ModelValue_166"/>
    <SBMLMap SBMLid="ML_ex" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="ML_intes" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="ML_uM" COPASIkey="ModelValue_255"/>
    <SBMLMap SBMLid="M_Hn" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="M_IL5" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="M_LTC" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="M_LTD" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="M_LTE" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="M_ML" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="M_ZF" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="NADPH_aw" COPASIkey="ModelValue_204"/>
    <SBMLMap SBMLid="NADPH_b" COPASIkey="ModelValue_176"/>
    <SBMLMap SBMLid="NADP_aw" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="NADP_b" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="NP_pool_aw" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="NP_pool_b" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="N_A_pmole" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="N_EO" COPASIkey="ModelValue_250"/>
    <SBMLMap SBMLid="N_EO_a" COPASIkey="ModelValue_251"/>
    <SBMLMap SBMLid="N_EO_a_aw" COPASIkey="ModelValue_244"/>
    <SBMLMap SBMLid="N_EO_a_b" COPASIkey="ModelValue_239"/>
    <SBMLMap SBMLid="N_EO_aw" COPASIkey="ModelValue_242"/>
    <SBMLMap SBMLid="N_EO_aw_perc" COPASIkey="ModelValue_259"/>
    <SBMLMap SBMLid="N_EO_aw_tot" COPASIkey="ModelValue_246"/>
    <SBMLMap SBMLid="N_EO_aw_tot_perc" COPASIkey="ModelValue_248"/>
    <SBMLMap SBMLid="N_EO_b" COPASIkey="ModelValue_237"/>
    <SBMLMap SBMLid="N_EO_b_tot" COPASIkey="ModelValue_241"/>
    <SBMLMap SBMLid="N_EO_b_tot_perc" COPASIkey="ModelValue_249"/>
    <SBMLMap SBMLid="N_EO_bm" COPASIkey="ModelValue_236"/>
    <SBMLMap SBMLid="N_EO_i_aw" COPASIkey="ModelValue_243"/>
    <SBMLMap SBMLid="N_EO_i_b" COPASIkey="ModelValue_238"/>
    <SBMLMap SBMLid="N_EO_perc" COPASIkey="ModelValue_257"/>
    <SBMLMap SBMLid="OH_aw" COPASIkey="ModelValue_206"/>
    <SBMLMap SBMLid="OH_b" COPASIkey="ModelValue_183"/>
    <SBMLMap SBMLid="OL_ASM" COPASIkey="ModelValue_262"/>
    <SBMLMap SBMLid="OL_aw" COPASIkey="ModelValue_225"/>
    <SBMLMap SBMLid="OL_b" COPASIkey="ModelValue_224"/>
    <SBMLMap SBMLid="OL_b_ex" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="OOH_aw" COPASIkey="ModelValue_205"/>
    <SBMLMap SBMLid="OOH_b" COPASIkey="ModelValue_182"/>
    <SBMLMap SBMLid="PL" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="PLA2_Ca" COPASIkey="ModelValue_178"/>
    <SBMLMap SBMLid="PLA2_D" COPASIkey="ModelValue_177"/>
    <SBMLMap SBMLid="Q_AW_blf" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="R1_portion_EOa" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="R1_portion_FEV" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="R2_portion_FEV" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="REDOX_aw" COPASIkey="ModelValue_207"/>
    <SBMLMap SBMLid="REDOX_b" COPASIkey="ModelValue_186"/>
    <SBMLMap SBMLid="RELFLO5_aw" COPASIkey="ModelValue_208"/>
    <SBMLMap SBMLid="RELFLO5_b" COPASIkey="ModelValue_187"/>
    <SBMLMap SBMLid="R_FEV" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="R_Hn_AW" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="R_Hn_B" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="R_LTC_AW" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="R_LTC_B" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="R_LTD_AW" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="R_LTD_B" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="R_LTE_AW" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="R_LTE_B" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="R_ZF_AW" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="R_ZF_B" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="R_in_relax_FEV" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="Rec_occup_migr" COPASIkey="ModelValue_226"/>
    <SBMLMap SBMLid="T" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="TSN" COPASIkey="ModelValue_231"/>
    <SBMLMap SBMLid="TSN_0" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="TSN_Hn" COPASIkey="ModelValue_232"/>
    <SBMLMap SBMLid="V_AW" COPASIkey="Compartment_5"/>
    <SBMLMap SBMLid="V_B" COPASIkey="Compartment_4"/>
    <SBMLMap SBMLid="V_BM" COPASIkey="Compartment_8"/>
    <SBMLMap SBMLid="V_CAW" COPASIkey="ModelValue_172"/>
    <SBMLMap SBMLid="V_CB" COPASIkey="ModelValue_169"/>
    <SBMLMap SBMLid="V_CoA" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="V_LTC_CAW" COPASIkey="ModelValue_174"/>
    <SBMLMap SBMLid="V_LTC_CB" COPASIkey="ModelValue_171"/>
    <SBMLMap SBMLid="V_aCAW" COPASIkey="ModelValue_173"/>
    <SBMLMap SBMLid="V_aCB" COPASIkey="ModelValue_170"/>
    <SBMLMap SBMLid="Vd_AW_Hn" COPASIkey="Compartment_12"/>
    <SBMLMap SBMLid="Vd_AW_LTC" COPASIkey="Compartment_9"/>
    <SBMLMap SBMLid="Vd_AW_LTD" COPASIkey="Compartment_10"/>
    <SBMLMap SBMLid="Vd_AW_LTE" COPASIkey="Compartment_11"/>
    <SBMLMap SBMLid="Vd_AW_ZF" COPASIkey="Compartment_14"/>
    <SBMLMap SBMLid="Vd_Hn" COPASIkey="Compartment_6"/>
    <SBMLMap SBMLid="Vd_IL5" COPASIkey="Compartment_7"/>
    <SBMLMap SBMLid="Vd_LTC" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="Vd_LTD" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="Vd_LTE" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="Vd_ML" COPASIkey="Compartment_15"/>
    <SBMLMap SBMLid="Vd_ZF" COPASIkey="Compartment_13"/>
    <SBMLMap SBMLid="Vmax_PLA2" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="ZF_airways" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="ZF_airways_conc" COPASIkey="ModelValue_165"/>
    <SBMLMap SBMLid="ZF_blood" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="ZF_blood_conc" COPASIkey="ModelValue_164"/>
    <SBMLMap SBMLid="ZF_intes" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="a" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="al" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="ca" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="delta_LTCs_aw" COPASIkey="ModelValue_218"/>
    <SBMLMap SBMLid="delta_LTCs_b" COPASIkey="ModelValue_197"/>
    <SBMLMap SBMLid="den_LTCs_aw" COPASIkey="ModelValue_220"/>
    <SBMLMap SBMLid="den_LTCs_b" COPASIkey="ModelValue_199"/>
    <SBMLMap SBMLid="diam_EO" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="ft_ml" COPASIkey="ModelValue_163"/>
    <SBMLMap SBMLid="ft_zf" COPASIkey="ModelValue_162"/>
    <SBMLMap SBMLid="fup_Hn" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="fup_LT" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="fup_ML" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="fup_ZF" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="h_act" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="h_matur" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="h_migr" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="k1" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="k1_min" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="k3" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="k_3" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="k_EO_a_d" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="k_EO_d" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="k_EO_m" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="k_EO_t_baw" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="k_EO_t_bmb" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="k_Hn_d" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="k_Hn_p" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="k_IL_d" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="k_IL_p" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="k_IL_t_awb" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="k_IL_t_bbm" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="k_LTCs_back" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="k_LTCs_fow" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="k_abs_ml" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="k_abs_zf" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="k_acet" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="k_dp" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="k_elim_ml" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="k_elim_zf" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="k_fev_eff" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="k_ggt" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="k_gpx_cat" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="k_hedh_1" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="k_hedh_2" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="k_hedh_3" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="k_hedh_4" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="k_lo" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="k_lta_syn" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="k_ltc_ltd_el" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="k_lte_el" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="k_ox" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="k_ox2" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="k_red" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="k_red2" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="ka" COPASIkey="ModelValue_151"/>
    <SBMLMap SBMLid="ki" COPASIkey="ModelValue_152"/>
    <SBMLMap SBMLid="kia" COPASIkey="ModelValue_153"/>
    <SBMLMap SBMLid="n_FEV" COPASIkey="ModelValue_154"/>
    <SBMLMap SBMLid="naEO_LTCsyn" COPASIkey="ModelValue_155"/>
    <SBMLMap SBMLid="nom_LTCs_aw" COPASIkey="ModelValue_219"/>
    <SBMLMap SBMLid="nom_LTCs_b" COPASIkey="ModelValue_198"/>
    <SBMLMap SBMLid="npi" COPASIkey="ModelValue_156"/>
    <SBMLMap SBMLid="oral" COPASIkey="ModelValue_157"/>
    <SBMLMap SBMLid="oxoETE_aw" COPASIkey="ModelValue_158"/>
    <SBMLMap SBMLid="oxoETE_b" COPASIkey="ModelValue_159"/>
    <SBMLMap SBMLid="portion_migr" COPASIkey="ModelValue_160"/>
    <SBMLMap SBMLid="r1" COPASIkey="ModelValue_184"/>
    <SBMLMap SBMLid="r2" COPASIkey="ModelValue_185"/>
    <SBMLMap SBMLid="r_in_FEV" COPASIkey="ModelValue_229"/>
    <SBMLMap SBMLid="r_out_FEV" COPASIkey="ModelValue_228"/>
    <SBMLMap SBMLid="time_day" COPASIkey="ModelValue_235"/>
    <SBMLMap SBMLid="time_hour" COPASIkey="ModelValue_234"/>
    <SBMLMap SBMLid="v1" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="v10in" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="v10out" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="v11" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="v12" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="v13" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="v14" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="v15" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="v16" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="v17" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="v18" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="v19" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="v2" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="v20" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="v21" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="v22" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="v23" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="v24" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="v25" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="v26" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="v27" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="v28" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="v29" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="v3" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="v30" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="v31" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="v32" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="v33" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="v34" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="v35" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="v36" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="v37" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="v38" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="v39" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="v4" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="v40in" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="v40out" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="v41" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="v42" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="v43" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="v44" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="v45" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="v46" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="v47" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="v48" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="v49" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="v5" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="v50" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="v51" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="v52" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="v53" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="v54" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="v55" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="v56" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="v57" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="v58" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="v59" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="v6" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="v60" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="v61" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="v62" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="v63" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="v64" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="v7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="v8" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="v9" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="w_EO" COPASIkey="ModelValue_168"/>
    <SBMLMap SBMLid="zf_inh" COPASIkey="ModelValue_161"/>
  </SBMLReference>
</COPASI>
