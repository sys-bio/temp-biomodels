<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-02-14 16:36:24 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_7" name="Constant flux (reversible)" type="PreDefined" reversible="true">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_47" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
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
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="function_4_VmNE_1" type="UserDefined" reversible="true">
      <Expression>
        mito*(k1_mNE*m_thf*HCHO-k2_mNE*m_2cf)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="HCHO" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_262" name="k1_mNE" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_254" name="k2_mNE" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_246" name="m_2cf" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_258" name="m_thf" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_265" name="mito" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function_4_b_cys_loss_1" type="UserDefined" reversible="true">
      <Expression>
        0.10000000000000001*b_cys
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_266" name="b_cys" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function_4_V_ODC_1" type="UserDefined" reversible="true">
      <Expression>
        parameter_1*species_7/(Kmodc*(1+species_2/Kipodc)+species_7)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_267" name="Kipodc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="Kmodc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="parameter_1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="species_2" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_271" name="species_7" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function_4_gluconeogenesis_ser_1" type="UserDefined" reversible="true">
      <Expression>
        1.2*c_ser
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_272" name="c_ser" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function_4_V_CTGL_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_CTGL*cyt/(K_cyt_CTGL+cyt)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="K_cyt_CTGL" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="Vm_CTGL" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_275" name="cyt" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function_4_V_GR_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_GR*c_gsg*NADPH/((K_gsg_GR+c_gsg)*(K_NADPH_GR+NADPH))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="K_NADPH_GR" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="K_gsg_GR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="NADPH" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_279" name="Vm_GR" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="c_gsg" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function_4_V_GCS_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_GCS*(c_cys*c_glu-glc/Ke_GCS)/(K_cys_GCS*K_glu_GCS+c_glu*K_cys_GCS+c_cys*(K_glu_GCS*(1+c_gsh/Ki_GCS)+c_glu)+glc/Kp_GCS+c_gsh/Ki_GCS)*((H2O2+Ka_GCS)/(ssH2O2+Ka_GCS))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_281" name="H2O2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="K_cys_GCS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="K_glu_GCS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="Ka_GCS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="Ke_GCS" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="Ki_GCS" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="Kp_GCS" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="Vm_GCS" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="c_cys" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="c_glu" order="9" role="substrate"/>
        <ParameterDescription key="FunctionParameter_291" name="c_gsh" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_292" name="glc" order="11" role="product"/>
        <ParameterDescription key="FunctionParameter_293" name="ssH2O2" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function_4_b_glu_loss_1" type="UserDefined" reversible="true">
      <Expression>
        0.10000000000000001*b_glu
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="b_glu" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function_4_V_GS_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_GS*(c_gly*glc-c_gsh/Ke_GS)/(K_gly_GS*K_glc_GS+glc*K_gly_GS+c_gly*(K_glc_GS+glc)+c_gsh/Kp_GS)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="K_glc_GS" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="K_gly_GS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="Ke_GS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="Kp_GS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="Vm_GS" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="c_gly" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="c_gsh" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_302" name="glc" order="7" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function_4_V_DNMT_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_DNMT*(sam/(Km_DNMT*(1+sah/Ki_DNMT)+sam))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_303" name="Ki_DNMT" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="Km_DNMT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_305" name="Vm_DNMT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="sah" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_307" name="sam" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function_4_V_ART_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_ART*c_10f*aic/((K_10f_ART+c_10f)*(K_aic_ART+aic))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_308" name="K_10f_ART" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="K_aic_ART" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="Vm_ART" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="aic" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_312" name="c_10f" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_b_gsg_loss_1" type="UserDefined" reversible="true">
      <Expression>
        7.5*b_gsg
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_313" name="b_gsg" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_VcFTD_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_cFTD*c_10f/(K_10f_FTD+c_10f)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_314" name="K_10f_FTD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_315" name="Vm_cFTD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_316" name="c_10f" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_V_MATI_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_MAT1*(met/(Km_MAT1+met))*(0.23000000000000001+0.80000000000000004*exp(-0.0025999999999999999*sam))*((Ki_MAT1+66.709999999999994)/(Ki_MAT1+c_gsg))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_317" name="Ki_MAT1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="Km_MAT1" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="Vm_MAT1" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="c_gsg" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_321" name="met" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_322" name="sam" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_V_SAMDC_1" type="UserDefined" reversible="true">
      <Expression>
        parameter_3/(1+species_3/Kissamdc)*sam/(Kmsamdc*(1+Kapsamdc/species_2+species_1/Kiasamdc)+sam)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_323" name="Kapsamdc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="Kiasamdc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="Kissamdc" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="Kmsamdc" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_327" name="parameter_3" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_328" name="sam" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_329" name="species_1" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_330" name="species_2" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="species_3" order="8" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_V_GDC_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_GDC*m_thf*m_gly/((K_thf_GDC+m_thf)*(K_gly_GDC+m_gly))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_332" name="K_gly_GDC" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="K_thf_GDC" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="Vm_GDC" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="m_gly" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_336" name="m_thf" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_cys_usage_1" type="UserDefined" reversible="true">
      <Expression>
        0.34999999999999998*c_cys^2/200
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_337" name="c_cys" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_c_glu_usage_1" type="UserDefined" reversible="true">
      <Expression>
        0.070000000000000007*c_glu
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_338" name="c_glu" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_V_DHFR_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_DHFR*c_dhf*NADPH/((K_dhf_DHFR+c_dhf)*(K_NADPH_DHFR+NADPH))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_339" name="K_NADPH_DHFR" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="K_dhf_DHFR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="NADPH" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_342" name="Vm_DHFR" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="c_dhf" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_V_MATIII_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_MAT3*(met^1.21/(Km_MAT3+met^1.21))*(1+7.2000000000000002*sam^2/(Ka_MAT3^2+sam^2))*((Ki_MAT3+66.709999999999994)/(Ki_MAT3+c_gsg))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_344" name="Ka_MAT3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="Ki_MAT3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="Km_MAT3" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="Vm_MAT3" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="c_gsg" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_349" name="met" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="sam" order="6" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function_4_b_cys_cystine_conv_1" type="UserDefined" reversible="true">
      <Expression>
        0.25*b_cys
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_351" name="b_cys" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="function_4_V_GPX_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_GPX*(c_gsh/(K_gsh_GPX+c_gsh))^2*(H2O2/(K_H2O2_GPX+H2O2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_360" name="H2O2" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_361" name="K_H2O2_GPX" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="K_gsh_GPX" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="Vm_GPX" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_364" name="c_gsh" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="function_4_b_gsh_loss_1" type="UserDefined" reversible="true">
      <Expression>
        0.69999999999999996*b_gsh
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="b_gsh" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="function_4_V_SSAT_S_1" type="UserDefined" reversible="true">
      <Expression>
        1/C*parameter_2*species_3*species_8/(Kmsssat*(1+species_4/Kmdssat)*Kmaccoassat*(1+species_9/Kmcoassat)+Kmaccoassat*(1+species_9/Kmcoassat)*species_3+Kmsssat*(1+species_4/Kmdssat)*species_8+species_3*species_8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="C" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="Kmaccoassat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="Kmcoassat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_369" name="Kmdssat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_370" name="Kmsssat" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="parameter_2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="species_3" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_373" name="species_4" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_374" name="species_8" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_375" name="species_9" order="9" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="function_4_V_b_MET_c_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*(MM(V_bmetc,K_bmetc,b_met)-k_out_met*met)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_376" name="K_bmetc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="V_bmetc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="b_met" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_379" name="cytosol" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_380" name="k_out_met" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_381" name="met" order="5" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="function_4_VmMTCH_1" type="UserDefined" reversible="true">
      <Expression>
        MM(Vf_mMTCH,K_1cf_MTCH,m_1cf)-MM(Vr_MTCH,K_10f_MTCH,m_10f)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_382" name="K_10f_MTCH" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="K_1cf_MTCH" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="Vf_mMTCH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="Vr_MTCH" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="m_10f" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_387" name="m_1cf" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="function_4_VmFTS_1" type="UserDefined" reversible="true">
      <Expression>
        MM_twosubst(Vf_mFTS,K_thf_mFTS,K_coo_mFTS,m_thf,m_coo)-MM(Vr_mFTS,K_10f_mFTS,m_10f)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_388" name="K_10f_mFTS" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_389" name="K_coo_mFTS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="K_thf_mFTS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="Vf_mFTS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="Vr_mFTS" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="m_10f" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_394" name="m_coo" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_395" name="m_thf" order="7" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="function_4_VmSERc_1" type="UserDefined" reversible="true">
      <Expression>
        (MM(V_mser,K_mser,m_ser)*mito/3-MM(V_cser,K_cser,c_ser))*cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_396" name="K_cser" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="K_mser" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="V_cser" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="V_mser" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="c_ser" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_401" name="cytosol" order="5" role="volume"/>
        <ParameterDescription key="FunctionParameter_402" name="m_ser" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_403" name="mito" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="function_4_b_gly_loss_1" type="UserDefined" reversible="true">
      <Expression>
        0.10000000000000001*b_gly
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="b_gly" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="function_4_b_gsg_decomp_1" type="UserDefined" reversible="true">
      <Expression>
        67.5*b_gsg
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_405" name="b_gsg" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_72" name="function_4_V_DMGD_1" type="UserDefined" reversible="true">
      <Expression>
        mito*MM_twosubst(Vm_DMGD,K_thf_DMGD,K_dmg_DMGD,m_thf,dmg)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_406" name="K_dmg_DMGD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_407" name="K_thf_DMGD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="Vm_DMGD" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="dmg" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_410" name="m_thf" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_411" name="mito" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_73" name="function_4_VmFTD_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:05:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

      </MiriamAnnotation>
      <Expression>
        Vm_mFTD*m_10f/(K_10f_FTD+m_10f)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_412" name="K_10f_FTD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="Vm_mFTD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="m_10f" order="2" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_74" name="function_4_b_gsh_decomp_1" type="UserDefined" reversible="true">
      <Expression>
        90*b_gsh
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_415" name="b_gsh" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_75" name="function_4_V_TS_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_TS*DUMP*c_2cf/((K_DUMP_TS+DUMP)*(K_2cf_TS+c_2cf))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_416" name="DUMP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_417" name="K_2cf_TS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="K_DUMP_TS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="Vm_TS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="c_2cf" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_76" name="function_4_V_PGT_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_PGT*c_10f*GAR/((K_10f_PGT+c_10f)*(K_GAR_PGT+GAR))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_421" name="GAR" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_422" name="K_10f_PGT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="K_GAR_PGT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="Vm_PGT" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_425" name="c_10f" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_77" name="function_4_VcNE_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*(k1_cNE*c_thf*HCHO-k2_cNE*c_2cf)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_426" name="HCHO" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_427" name="c_2cf" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_428" name="c_thf" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_429" name="cytosol" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_430" name="k1_cNE" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="k2_cNE" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_78" name="function_4_VmHCOOHc_1" type="UserDefined" reversible="true">
      <Expression>
        k_in_coo*m_coo*mito/3-k_out_coo*c_coo*cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_432" name="c_coo" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_433" name="cytosol" order="1" role="volume"/>
        <ParameterDescription key="FunctionParameter_434" name="k_in_coo" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="k_out_coo" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_436" name="m_coo" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_437" name="mito" order="5" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_79" name="function_4_V_MTHFR_1" type="UserDefined" reversible="true">
      <Expression>
        MM_twosubst(Vm_MTHFR,K_2cf_MTHFR,K_NADPH_MTHFR,c_2cf,NADPH)*72/(10+sam-sah)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_438" name="K_2cf_MTHFR" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="K_NADPH_MTHFR" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_440" name="NADPH" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_441" name="Vm_MTHFR" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_442" name="c_2cf" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_443" name="sah" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_444" name="sam" order="6" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_80" name="function_4_c_gsh_degr_1" type="UserDefined" reversible="true">
      <Expression>
        0.002*c_gsh
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_445" name="c_gsh" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_81" name="function_4_c_gsg_degr_1" type="UserDefined" reversible="true">
      <Expression>
        0.10000000000000001*c_gsg
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_446" name="c_gsg" order="0" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_82" name="function_4_V_SSAT_D_1" type="UserDefined" reversible="true">
      <Expression>
        parameter_2*species_4*species_8/(Kmdssat*(1+species_3/Kmsssat)*Kmaccoassat*(1+species_9/Kmcoassat)+Kmaccoassat*(1+species_9/Kmcoassat)*species_4+Kmdssat*(1+species_3/Kmsssat)*species_8+species_4*species_8)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_447" name="Kmaccoassat" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_448" name="Kmcoassat" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_449" name="Kmdssat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="Kmsssat" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_451" name="parameter_2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_452" name="species_3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_453" name="species_4" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_454" name="species_8" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_455" name="species_9" order="8" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_83" name="function_4_V_SAHH_1" type="UserDefined" reversible="true">
      <Expression>
        MM(Vf_SAHH,K_sah_SAHH,sah)-MM(Vr_SAHH,K_hcy_SAHH,hcy)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="K_hcy_SAHH" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_457" name="K_sah_SAHH" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_458" name="Vf_SAHH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="Vr_SAHH" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="hcy" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_461" name="sah" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_84" name="function_4_V_c_gsgHb_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*MM(V_gsgHb,K_gsgHb,c_gsg)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_462" name="K_gsgHb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_463" name="V_gsgHb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_464" name="c_gsg" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_465" name="cytosol" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_85" name="function_4_VmGLYc_1" type="UserDefined" reversible="true">
      <Expression>
        MM(V_mgly,K_mgly,m_gly)*mito*(1/3)-MM(V_cgly,K_cgly,c_gly)*cytosol
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_466" name="K_cgly" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_467" name="K_mgly" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_468" name="V_cgly" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_469" name="V_mgly" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_470" name="c_gly" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_471" name="cytosol" order="5" role="volume"/>
        <ParameterDescription key="FunctionParameter_472" name="m_gly" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_473" name="mito" order="7" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_86" name="function_4_VcFTS_1" type="UserDefined" reversible="true">
      <Expression>
        Vm_cFTS*c_thf*c_coo/((K_thf_cFTS+c_thf)*(K_coo_cFTS+c_coo))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_474" name="K_coo_cFTS" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_475" name="K_thf_cFTS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="Vm_cFTS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_477" name="c_coo" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_478" name="c_thf" order="4" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_87" name="function_4_VcSHMT_1" type="UserDefined" reversible="true">
      <Expression>
        MM_twosubst(Vf_cSHMT,K_thf_SHMT,K_ser_SHMT,c_thf,c_ser)-MM_twosubst(Vr_cSHMT,K_gly_SHMT,K_2cf_SHMT,c_gly,c_2cf)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_479" name="K_2cf_SHMT" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_480" name="K_gly_SHMT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_481" name="K_ser_SHMT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_482" name="K_thf_SHMT" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_483" name="Vf_cSHMT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_484" name="Vr_cSHMT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_485" name="c_2cf" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_486" name="c_gly" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_487" name="c_ser" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_488" name="c_thf" order="9" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_88" name="function_4_V_c_gshLb_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*V_gshLb*c_gsh^h_gshLb/(K_gshLb^h_gshLb+c_gsh^h_gshLb)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_489" name="K_gshLb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_490" name="V_gshLb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_491" name="c_gsh" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_492" name="cytosol" order="3" role="volume"/>
        <ParameterDescription key="FunctionParameter_493" name="h_gshLb" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_89" name="function_4_V_BHMT_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*exp(-0.0020999999999999999*(sam+sah))*exp(0.0020999999999999999*102.59999999999999)*MM_twosubst(Vm_BHMT,K_hcy_BHMT,K_bet_BHMT,hcy,BET)*((ssH2O2+Ki_BHMT)/(H2O2+Ki_BHMT))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_494" name="BET" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_495" name="H2O2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_496" name="K_bet_BHMT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_497" name="K_hcy_BHMT" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_498" name="Ki_BHMT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_499" name="Vm_BHMT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_500" name="cytosol" order="6" role="volume"/>
        <ParameterDescription key="FunctionParameter_501" name="hcy" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_502" name="sah" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_503" name="sam" order="9" role="modifier"/>
        <ParameterDescription key="FunctionParameter_504" name="ssH2O2" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_90" name="function_4_V_CBS_1" type="UserDefined" reversible="true">
      <Expression>
        MM_twosubst(Vm_CBS,K_hcy_CBS,K_ser_CBS,hcy,c_ser)*(((30/102.59)^2+1)/((30/(sam+sah))^2+1))*((H2O2+Ka_CBS)/(ssH2O2+Ka_CBS))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_505" name="H2O2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_506" name="K_hcy_CBS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_507" name="K_ser_CBS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_508" name="Ka_CBS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_509" name="Vm_CBS" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_510" name="c_ser" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_511" name="hcy" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_512" name="sah" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_513" name="sam" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_514" name="ssH2O2" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_91" name="function_4_V_PAO_AS_1" type="UserDefined" reversible="true">
      <Expression>
        Vmpao*species_5/(Kmaspao*(1+species_6/Kmadpao+species_5/Kmaspao+species_4/Kmdpao+species_3/Kmspao))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_515" name="Kmadpao" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_516" name="Kmaspao" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_517" name="Kmdpao" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_518" name="Kmspao" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_519" name="Vmpao" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_520" name="species_3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_521" name="species_4" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_522" name="species_5" order="7" role="substrate"/>
        <ParameterDescription key="FunctionParameter_523" name="species_6" order="8" role="modifier"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_92" name="function_4_V_PAO_AD_1" type="UserDefined" reversible="true">
      <Expression>
        Vmpao*species_6/(Kmadpao*(1+species_6/Kmadpao+species_5/Kmaspao+species_4/Kmdpao+species_3/Kmspao))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_524" name="Kmadpao" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_525" name="Kmaspao" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_526" name="Kmdpao" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_527" name="Kmspao" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_528" name="Vmpao" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_529" name="species_3" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_530" name="species_4" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_531" name="species_5" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_532" name="species_6" order="8" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_93" name="function_4_V_SPDS_1" type="UserDefined" reversible="true">
      <Expression>
        Vmspds*species_1*species_2/(Kiaspds*Kpspds*(1+species_4/Kidspds)+Kpspds*species_1+KaSpds*(1+species_4/Kidspds)*species_2+species_1*species_2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_533" name="KaSpds" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_534" name="Kiaspds" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_535" name="Kidspds" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_536" name="Kpspds" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_537" name="Vmspds" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_538" name="species_1" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_539" name="species_2" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_540" name="species_4" order="7" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_94" name="function_4_V_SPMS_1" type="UserDefined" reversible="true">
      <Expression>
        Vmspms*species_1*species_4/(Kiaspms*Kdspms*(1+species_3/Kisspms)+Kdspms*species_1+Kaspms*(1+species_3/Kisspms)*species_4+species_1*species_4)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_541" name="Kaspms" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_542" name="Kdspms" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_543" name="Kiaspms" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_544" name="Kisspms" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_545" name="Vmspms" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_546" name="species_1" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_547" name="species_3" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_548" name="species_4" order="7" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_95" name="function_4_V_c_gshHb_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*MM(V_gshHb,K_gshHb,c_gsh)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_549" name="K_gshHb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_550" name="V_gshHb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_551" name="c_gsh" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_552" name="cytosol" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_96" name="function_4_V_b_SER_c_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*(MM(V_bserc,K_bserc,b_ser)-k_out_ser*c_ser)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_553" name="K_bserc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_554" name="V_bserc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_555" name="b_ser" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_556" name="c_ser" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_557" name="cytosol" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_558" name="k_out_ser" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_97" name="function_4_V_b_GLY_c_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*(MM(V_bglyc,K_bglyc,b_gly)-k_out_gly*c_gly)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_559" name="K_bglyc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_560" name="V_bglyc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_561" name="b_gly" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_562" name="c_gly" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_563" name="cytosol" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_564" name="k_out_gly" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_98" name="function_4_VmMTD_1" type="UserDefined" reversible="true">
      <Expression>
        MM(Vf_mMTD,K_2cf_MTD,m_2cf)-MM(Vr_MTD,K_1cf_MTD,m_1cf)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_565" name="K_1cf_MTD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_566" name="K_2cf_MTD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_567" name="Vf_mMTD" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_568" name="Vr_MTD" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_569" name="m_1cf" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_570" name="m_2cf" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_99" name="function_4_VmSHMT_1" type="UserDefined" reversible="true">
      <Expression>
        MM_twosubst(Vf_mSHMT,K_thf_SHMT,K_ser_SHMT,m_thf,m_ser)-MM_twosubst(Vr_mSHMT,K_gly_SHMT,K_2cf_SHMT,m_gly,m_2cf)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_571" name="K_2cf_SHMT" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_572" name="K_gly_SHMT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_573" name="K_ser_SHMT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_574" name="K_thf_SHMT" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_575" name="Vf_mSHMT" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_576" name="Vr_mSHMT" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_577" name="m_2cf" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_578" name="m_gly" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_579" name="m_ser" order="8" role="substrate"/>
        <ParameterDescription key="FunctionParameter_580" name="m_thf" order="9" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_100" name="function_4_V_b_GLU_c_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*(MM(V_bglutc,K_bglutc,b_glu)-k_out_glu*c_glu)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_581" name="K_bglutc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_582" name="V_bglutc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_583" name="b_glu" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_584" name="c_glu" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_585" name="cytosol" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_586" name="k_out_glu" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_101" name="function_4_VcMTD_1" type="UserDefined" reversible="true">
      <Expression>
        MM(Vf_cMTD,K_2cf_MTD,c_2cf)-MM(Vr_cMTD,K_1cf_MTD,c_1cf)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_587" name="K_1cf_MTD" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_588" name="K_2cf_MTD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_589" name="Vf_cMTD" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_590" name="Vr_cMTD" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_591" name="c_1cf" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_592" name="c_2cf" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_102" name="function_4_V_b_CYS_c_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*MM(V_bcysc,K_bcysc,b_cys)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_593" name="K_bcysc" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_594" name="V_bcysc" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_595" name="b_cys" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_596" name="cytosol" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_103" name="function_4_VcMTCH_1" type="UserDefined" reversible="true">
      <Expression>
        MM(Vf_cMTCH,K_1cf_MTCH,c_1cf)-MM(Vr_MTCH,K_10f_MTCH,c_10f)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_597" name="K_10f_MTCH" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_598" name="K_1cf_MTCH" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_599" name="Vf_cMTCH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_600" name="Vr_MTCH" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_601" name="c_10f" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_602" name="c_1cf" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_104" name="function_4_V_c_gsgLb_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*MM(V_gsgLb,K_gsgLb,c_gsg)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_603" name="K_gsgLb" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_604" name="V_gsgLb" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_605" name="c_gsg" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_606" name="cytosol" order="3" role="volume"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_105" name="function_4_V_GNMT_1" type="UserDefined" reversible="true">
      <Expression>
        cytosol*MM_twosubst(Vm_GNMT,K_sam_GNMT,K_gly_GNMT,sam,c_gly)*(1/(1+sah/Ki_GNMT))*(4.7999999999999998/(0.34999999999999998+c_5mf))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_607" name="K_gly_GNMT" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_608" name="K_sam_GNMT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_609" name="Ki_GNMT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_610" name="Vm_GNMT" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_611" name="c_5mf" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_612" name="c_gly" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_613" name="cytosol" order="6" role="volume"/>
        <ParameterDescription key="FunctionParameter_614" name="sah" order="7" role="product"/>
        <ParameterDescription key="FunctionParameter_615" name="sam" order="8" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_106" name="function_4_V_MS_1" type="UserDefined" reversible="true">
      <Expression>
        MM_twosubst(Vm_MS,K_5mf_MS,K_hcy_MS,c_5mf,hcy)*(ssH2O2+Ki_MS)/(H2O2+Ki_MS)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_616" name="H2O2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_617" name="K_5mf_MS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_618" name="K_hcy_MS" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_619" name="Ki_MS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_620" name="Vm_MS" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_621" name="c_5mf" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_622" name="hcy" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_623" name="ssH2O2" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_107" name="function_4_V_SDH_1" type="UserDefined" reversible="true">
      <Expression>
        mito*MM_twosubst(Vm_SDH,K_thf_SDH,K_src_SDH,m_thf,src)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_624" name="K_src_SDH" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_625" name="K_thf_SDH" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_626" name="Vm_SDH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_627" name="m_thf" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_628" name="mito" order="4" role="volume"/>
        <ParameterDescription key="FunctionParameter_629" name="src" order="5" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="MM" type="UserDefined" reversible="unspecified">
      <Expression>
        Vmax*S/(Km+S)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_352" name="Vmax" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_353" name="Km" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_354" name="S" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="MM_twosubst" type="UserDefined" reversible="unspecified">
      <Expression>
        Vmax*S1*S2/((Km1+S1)*(Km2+S2))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_355" name="Vmax" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_356" name="Km1" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_357" name="Km2" order="2" role="variable"/>
        <ParameterDescription key="FunctionParameter_358" name="S1" order="3" role="variable"/>
        <ParameterDescription key="FunctionParameter_359" name="S2" order="4" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1" simulationType="time" timeUnit="h" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="µmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/9606"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:biomodels.db:BIOMD0000000190"/>
    <bqmodel:isDerivedFrom rdf:resource="urn:miriam:biomodels.db:BIOMD0000000268"/>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/18442411"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:11:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>armando@uma.es</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Reyes-Palomares</vCard:Family>
            <vCard:Given>Armando</vCard:Given>
          </rdf:Description>
        </vCard:N>
      </rdf:Description>
    </dcterms:creator>
    <dcterms:creator>
      <rdf:Description>
        <vCard:EMAIL>mroberts@ebi.ac.uk</vCard:EMAIL>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Roberts</vCard:Family>
            <vCard:Given>Matthew Grant</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>EMBL-EBI</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0000096"/>
    <CopasiMT:hasPart rdf:resource="urn:miriam:go:GO:0006595"/>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1305060000"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Reyes-Palomares2012 -  a combined model hepatic polyamine and sulfur aminoacid metabolism - version1</div>
    <div class="dc:description">
      <p>Mammalian polyamine metabolism consists of a bi-cycle with two required entrances, omithine and S-adenosyl methionine (SAM), and several alternative exists. The relevant regulatory roles of the short half-life enzymes ornithine decarboxylase (ODC), S-adenosyl methione decarboxylase (SAMDC) and spermindine/spermine acetyl transferase (SSAT) in polyamine metabolism are well studied, and has been modelled here.</p>
    </div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/[21814788]" title="Access to this publication">A combined model of hepatic polyamine and sulfur amino acid metabolism to analyze S-adenosyl methionine availability.</a>
      </div>
      <div class="bibo:authorList">Reyes-Palomares A, Montañez R, Sánchez-Jiménez F, Medina MA</div>
      <div class="bibo:Journal">Amino Acids, February 2012, Volume 42, Issue 2-3, pp 597-610</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>Many molecular details remain to be uncovered concerning the regulation of polyamine metabolism. A previous model of mammalian polyamine metabolism showed that S-adenosyl methionine availability could play a key role in polyamine homeostasis. To get a deeper insight in this prediction, we have built a combined model by integration of the previously published polyamine model and one-carbon and glutathione metabolism model, published by different research groups. The combined model is robust and it is able to achieve physiological steady-state values, as well as to reproduce the predictions of the individual models. Furthermore, a transition between two versions of our model with new regulatory factors added properly simulates the switch in methionine adenosyl transferase isozymes occurring when the liver enters in proliferative conditions. The combined model is useful to support the previous prediction on the role of S-adenosyl methionine availability in polyamine homeostasis. Furthermore, it could be easily adapted to get deeper insights on the connections of polyamines with energy metabolism.</p>
      </div>
    </div>
    <div class="bm:curation">
      <p>
        <b>Notes by the author:</b>
      </p>
      <p>This model combines BIOMD0000000190 and BIOMD0000000268 from BioModels Database, both models include corrections respect to their originals publications.</p>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on        <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
            and identified
by:        <a href="http://identifiers.org/biomodels.db/MODEL1305060000">MODEL1305060000</a>
            .        </p>
      <p>To cite BioModels Database, please use:        <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database: An enhanced, curated and annotated resource
for published quantitative kinetic models</a>
            .        </p>
    </div>
    <div class="dc:license">
      <p>To the extent possible under law, all copyright and related or
neighbouring rights to this encoded model have been dedicated to the public
domain worldwide. Please refer to        <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0 Public Domain
Dedication</a>
            for more information.        </p>
    </div>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_3" name="blood" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:36:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/bto/BTO:0000089"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="cytosol" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:37:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005829"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="mitochondrion" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:37:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005739"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:37:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005623"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_52" name="b_Methionine" simulationType="assignment" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:44:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16811"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C01733"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Aminoacid_input],Reference=Value>*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[b_met_basal],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="b_Serine" simulationType="assignment" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:44:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17822"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00716"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Aminoacid_input],Reference=Value>*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[b_ser_basal],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="b_Glycine" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:39:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15428"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00037"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="b_Glutamate" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:38:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18237"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00302"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="b_Cysteine" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:39:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15356"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00736"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="b_GSSG" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:42:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17858"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00127"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="b_GSH" simulationType="reactions" compartment="Compartment_3">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:42:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16856"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00051"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="GAR" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:45:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18349"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C003838"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="NADPH" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16474"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00005"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="Betaine" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:44:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="http://identifiers.org/chebi/CHEBI:17750"/>
    <CopasiMT:isVersionOf rdf:resource="http://identifiers.org/kegg.compound/C00719"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="dUMP" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17622"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00365"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="H2O2" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16240"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00027"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="c_THF" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:46:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15635"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00101"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cell],Vector=Metabolites[Folate],Reference=InitialConcentration>/(2*3/4)-(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-methyl-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-10-methylene-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-10-methenyl-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_10-formyl-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_DHF],Reference=InitialConcentration>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="c_5-methyl-THF" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:45:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15641"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00440"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="c_5-10-methylene-THF" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:45:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:1989"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00143"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="c_5-10-methenyl-THF" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:45:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubchem.compound/644350"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="c_10-formyl-THF" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:45:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15637"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00234"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="c_DHF" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:44:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15633"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00415"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="AICAR" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:39:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18406"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C04677"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="c_Glutamate" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:46:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18237"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00302"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="c_Cysteine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:45:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15356"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00736"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="Glutamyl-Cysteine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17515"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00669"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="c_Glycine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:33:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15428"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00037"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="c_GSSG" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:46:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17858"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00127"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="c_GSH" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:46:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16856"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00051"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_27" name="Cystathionine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:47:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubchem.compound/834"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_26" name="Homocysteine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17230"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C05330"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="c_Serine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17822"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00716"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="SAH" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:49:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16680"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00021"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="SAM" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:45:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15414"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00019"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="c_Methionine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:46:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16811"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C01733"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="c_Formate" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:45:19Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15740"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00058"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="dcSAM" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:48:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:15625"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Putrescine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:48:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:17148"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Spermine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:49:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:15746"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Spermidine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:49:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:16610"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="Acetylspermine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:49:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:17312"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Acetylspermidine" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:49:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:17927"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Ornithine" simulationType="fixed" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:50:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:18257"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Acetyl-CoA" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:50:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:15351"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="CoA" simulationType="reactions" compartment="Compartment_2">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:50:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf rdf:resource="urn:miriam:chebi:CHEBI:15346"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="CO2" simulationType="fixed" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:46:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16526"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00011"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="m_THF" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15635"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00101"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <InitialExpression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cell],Vector=Metabolites[Folate],Reference=InitialConcentration>/(2*1/4)-(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_5-10-methylene-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_5-10-methenyl-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_10-formyl-THF],Reference=InitialConcentration>)
        </InitialExpression>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="m_5-10-methylene-THF" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:1989"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00143"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="m_5-10-methenyl-THF" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubchem.compound/644350"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="m_10-formyl-THF" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15637"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00234"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="m_Serine" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17822"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00716"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="m_Glycine" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:45:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15428"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00037"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="m_Formate" simulationType="reactions" compartment="Compartment_1">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15740"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00058"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Folate" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:27470"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00504"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="Formaldehyde" simulationType="fixed" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16842"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00067"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="Sarcosine" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:49:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15611"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C00213"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_0" name="Dimethylglycine" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:48:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17724"/>
        <rdf:li rdf:resource="http://identifiers.org/kegg.compound/C01026"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_176" name="tot_cfol" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-methyl-THF],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-10-methylene-THF],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-10-methenyl-THF],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_10-formyl-THF],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_DHF],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_THF],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_175" name="tot_mfol" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_THF],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_5-10-methylene-THF],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_5-10-methenyl-THF],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_10-formyl-THF],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_174" name="V_oCys_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Aminoacid_input],Reference=Value>*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oCys_b_basal],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_173" name="V_oGly_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Aminoacid_input],Reference=Value>*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oGly_b_basal],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_172" name="V_oGlu_b" simulationType="assignment">
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Aminoacid_input],Reference=Value>*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oGlu_b_basal],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_171" name="V_gshHb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_170" name="K_gshHb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_169" name="V_gshLb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_168" name="h_gshLb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_167" name="K_gshLb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_166" name="V_gsgHb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_165" name="K_gsgHb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_164" name="V_gsgLb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_163" name="K_gsgLb" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_162" name="V_bcysc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_161" name="K_bcysc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_160" name="V_bglutc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_159" name="K_bglutc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_158" name="k_out_glu" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_157" name="V_bglyc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_156" name="K_bglyc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_155" name="k_out_gly" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_154" name="V_bserc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_153" name="K_bserc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_152" name="k_out_ser" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_151" name="V_bmetc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_150" name="K_bmetc" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_149" name="k_out_met" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_148" name="Vm_mFTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_147" name="K_10f_FTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_146" name="Vf_mSHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_145" name="K_thf_SHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_144" name="K_ser_SHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_143" name="Vr_mSHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_142" name="K_gly_SHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_141" name="K_2cf_SHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_140" name="Vf_mFTS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_139" name="K_thf_mFTS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_138" name="K_coo_mFTS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_137" name="Vr_mFTS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_136" name="K_10f_mFTS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_135" name="k1_mNE" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_134" name="k2_mNE" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_133" name="Vm_GDC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_132" name="K_thf_GDC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_131" name="K_gly_GDC" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_130" name="Vm_SDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_129" name="K_thf_SDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_128" name="K_src_SDH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_127" name="Vm_DMGD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_126" name="K_thf_DMGD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_125" name="K_dmg_DMGD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="Vf_mMTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_123" name="K_2cf_MTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="Vr_MTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="K_1cf_MTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="Vf_mMTCH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="K_1cf_MTCH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="Vr_MTCH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="K_10f_MTCH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="V_mser" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="K_mser" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="V_cser" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="K_cser" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="k_in_coo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="k_out_coo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="V_mgly" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="K_mgly" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="V_cgly" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="K_cgly" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="Vm_MS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="K_5mf_MS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="K_hcy_MS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="ssH2O2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="Ki_MS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="Vm_DHFR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="K_dhf_DHFR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="K_NADPH_DHFR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="Vm_cFTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="Vm_PGT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="K_10f_PGT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="K_GAR_PGT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="Vm_cFTS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="K_thf_cFTS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="K_coo_cFTS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="Vf_cSHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="Vr_cSHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="k1_cNE" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="k2_cNE" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="Vm_TS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="K_DUMP_TS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="K_2cf_TS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="Vm_MTHFR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="K_2cf_MTHFR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="K_NADPH_MTHFR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="Vf_cMTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="Vr_cMTD" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="Vf_cMTCH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="Vm_ART" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="K_10f_ART" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="K_aic_ART" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="Vm_BHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="K_hcy_BHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="K_bet_BHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="Ki_BHMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="Vm_MAT1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="Km_MAT1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="Ki_MAT1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_68" name="Vm_MAT3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="Km_MAT3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="Ka_MAT3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="Ki_MAT3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="Vm_GNMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="K_sam_GNMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="K_gly_GNMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="Ki_GNMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="Vm_DNMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="Km_DNMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="Ki_DNMT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="Vf_SAHH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="K_sah_SAHH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="Vr_SAHH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="K_hcy_SAHH" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="Vm_CBS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="K_hcy_CBS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="K_ser_CBS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="Ka_CBS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="Vm_CTGL" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="K_cyt_CTGL" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="Vm_GCS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="Ke_GCS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="K_cys_GCS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="K_glu_GCS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="Ki_GCS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="Kp_GCS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="Ka_GCS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="Vm_GS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="Ke_GS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="K_gly_GS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="K_glc_GS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="Kp_GS" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="Vm_GPX" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="K_gsh_GPX" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="K_H2O2_GPX" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="Vm_GR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="K_gsg_GR" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="K_NADPH_GR" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-10T19:03:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_29" name="dinner" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-13T02:09:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_28" name="lunch" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-13T02:09:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_27" name="breakfast" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T23:56:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_26" name="fasting" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-13T02:09:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_25" name="daytime" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-13T02:09:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time>-24*floor(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time>/24)
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_24" name="Aminoacid_input" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-13T02:09:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(7 le &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[daytime],Reference=Value> and &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[daytime],Reference=Value> le 10,&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[breakfast],Reference=Value>,if(12 le &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[daytime],Reference=Value> and &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[daytime],Reference=Value> le 15,&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[lunch],Reference=Value>,if(18 le &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[daytime],Reference=Value> and &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[daytime],Reference=Value> le 21,&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[dinner],Reference=Value>,&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[fasting],Reference=Value>)))
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_23" name="b_met_basal" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="b_ser_basal" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="V_oGly_b_basal" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="V_oGlu_b_basal" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="V_oCys_b_basal" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-13T11:59:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="k_out_cys" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="Vm_ODC" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:06:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          60*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ks_ODC],Reference=Value>*(1/(1+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_POL],Reference=Value>*(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermidine],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermine],Reference=Concentration>)))-&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kd_ODC],Reference=Value>*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[ANTZ],Reference=Value>*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_ODC],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="Vm_SSAT" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:06:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          60*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ks_SSAT],Reference=Value>*(1-1/(1+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_POL],Reference=Value>*(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermidine],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermine],Reference=Concentration>)))-&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kd_SSAT],Reference=Value>*(1/(1+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_POL],Reference=Value>*(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermidine],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermine],Reference=Concentration>)))*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_SSAT],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="Vm_SAMDC" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:07:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          60*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ks_SAMDC],Reference=Value>*(1/(1+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_POL],Reference=Value>*(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermidine],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermine],Reference=Concentration>)))-&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kd_SAMDC],Reference=Value>*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_SAMDC],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="ANTZ" simulationType="ode">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:07:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          1*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ks_ANTZ],Reference=Value>*(1-1/(1+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_POL],Reference=Value>*0.01*(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermidine],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermine],Reference=Concentration>)))-&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kd_ANTZ],Reference=Value>*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[ANTZ],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="Ke_POL" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:07:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="Kd_ODC" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:07:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_11" name="Ks_ODC" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:07:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_10" name="Kd_SSAT" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:08:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_9" name="Ks_SSAT" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:08:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="Kd_SAMDC" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:08:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Ks_SAMDC" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:08:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Kd_ANTZ" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:09:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Ks_ANTZ" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:09:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="K_accoa" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:10:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[R],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="K_coa" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T21:10:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          3*&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[R],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_2" name="R" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-13T11:41:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_1" name="S+D" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-13T11:43:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermine],Reference=Concentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermidine],Reference=Concentration>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_0" name="R_percent" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-13T11:46:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          100*(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[R],Reference=Value>/0.23999999999999999)
        </Expression>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_129" name="b_gsh_decomp" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_129">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006751"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_46" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_74" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_72" name="b_gsg_decomp" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006751"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="2"/>
          <Product metabolite="Metabolite_50" stoichiometry="2"/>
          <Product metabolite="Metabolite_49" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_71" name="b_cys_cystine_conv" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:50:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0019456"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_70" name="b_cys_loss" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0009093"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_69" name="b_glu_loss" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006538"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="b_gly_loss" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006546"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="b_gsh_loss" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006751"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_46" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="b_gsg_loss" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006751"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_47" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="b_cys_import" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0042883"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7515" name="v" value="17.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="ModelValue_174"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="b_gly_import" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015816"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7508" name="v" value="157.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="ModelValue_173"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="b_glu_import" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015813"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_7509" name="v" value="68.25"/>
        </ListOfConstants>
        <KineticLaw function="Function_7" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_47">
              <SourceParameter reference="ModelValue_172"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="V_c_gshHb" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0034635"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_28" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_7510" name="K_gshHb" value="150"/>
          <Constant key="Parameter_7511" name="V_gshHb" value="150"/>
        </ListOfConstants>
        <KineticLaw function="Function_95" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_549">
              <SourceParameter reference="ModelValue_170"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_550">
              <SourceParameter reference="ModelValue_171"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_551">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_552">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="V_c_gshLb" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0034635"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_28" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4332" name="K_gshLb" value="3000"/>
          <Constant key="Parameter_4333" name="V_gshLb" value="1100"/>
          <Constant key="Parameter_4334" name="h_gshLb" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_88" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_489">
              <SourceParameter reference="ModelValue_167"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_490">
              <SourceParameter reference="ModelValue_169"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_491">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_492">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_493">
              <SourceParameter reference="ModelValue_168"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="V_c_gsgHb" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0034635"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4335" name="K_gsgHb" value="1250"/>
          <Constant key="Parameter_4336" name="V_gsgHb" value="40"/>
        </ListOfConstants>
        <KineticLaw function="Function_84" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="ModelValue_165"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="ModelValue_166"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="V_c_gsgLb" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0034635"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4337" name="K_gsgLb" value="7100"/>
          <Constant key="Parameter_4338" name="V_gsgLb" value="4025"/>
        </ListOfConstants>
        <KineticLaw function="Function_104" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_603">
              <SourceParameter reference="ModelValue_163"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_604">
              <SourceParameter reference="ModelValue_164"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_605">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_606">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="V_b_CYS_c" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0042883"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_48" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4339" name="K_bcysc" value="2100"/>
          <Constant key="Parameter_4340" name="V_bcysc" value="14950"/>
        </ListOfConstants>
        <KineticLaw function="Function_102" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_593">
              <SourceParameter reference="ModelValue_161"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_594">
              <SourceParameter reference="ModelValue_162"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_595">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_596">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="V_b_GLU_c" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015813"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_49" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4341" name="K_bglutc" value="300"/>
          <Constant key="Parameter_4342" name="V_bglutc" value="28000"/>
          <Constant key="Parameter_4343" name="k_out_glu" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_100" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_581">
              <SourceParameter reference="ModelValue_159"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_582">
              <SourceParameter reference="ModelValue_160"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_583">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_584">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_585">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_586">
              <SourceParameter reference="ModelValue_158"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="V_b_GLY_c" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015816"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4436" name="K_bglyc" value="150"/>
          <Constant key="Parameter_4435" name="V_bglyc" value="4600"/>
          <Constant key="Parameter_4434" name="k_out_gly" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_97" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_559">
              <SourceParameter reference="ModelValue_156"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_560">
              <SourceParameter reference="ModelValue_157"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_561">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_562">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_563">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_564">
              <SourceParameter reference="ModelValue_155"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="V_b_SER_c" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0032329"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4433" name="K_bserc" value="150"/>
          <Constant key="Parameter_4432" name="V_bserc" value="2700"/>
          <Constant key="Parameter_4431" name="k_out_ser" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_96" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_553">
              <SourceParameter reference="ModelValue_153"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_554">
              <SourceParameter reference="ModelValue_154"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_555">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_556">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_557">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_558">
              <SourceParameter reference="ModelValue_152"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="V_b_MET_c" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0015821"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4430" name="K_bmetc" value="150"/>
          <Constant key="Parameter_4429" name="V_bmetc" value="913.4"/>
          <Constant key="Parameter_4428" name="k_out_met" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_150"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_151"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="ModelValue_149"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="VmFTD" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00941"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4403" name="K_10f_FTD" value="20"/>
          <Constant key="Parameter_4402" name="Vm_mFTD" value="1050"/>
        </ListOfConstants>
        <KineticLaw function="Function_73" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_148"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="VmSHMT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:53:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00945"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_9" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4401" name="K_2cf_SHMT" value="3200"/>
          <Constant key="Parameter_4368" name="K_gly_SHMT" value="10000"/>
          <Constant key="Parameter_4369" name="K_ser_SHMT" value="600"/>
          <Constant key="Parameter_4370" name="K_thf_SHMT" value="50"/>
          <Constant key="Parameter_4371" name="Vf_mSHMT" value="11440"/>
          <Constant key="Parameter_4372" name="Vr_mSHMT" value="3e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_99" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_571">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_572">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_573">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_574">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_575">
              <SourceParameter reference="ModelValue_146"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_576">
              <SourceParameter reference="ModelValue_143"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_577">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_578">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_579">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_580">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="VmFTS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00944"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4373" name="K_10f_mFTS" value="22"/>
          <Constant key="Parameter_4374" name="K_coo_mFTS" value="43"/>
          <Constant key="Parameter_4375" name="K_thf_mFTS" value="3"/>
          <Constant key="Parameter_4376" name="Vf_mFTS" value="2000"/>
          <Constant key="Parameter_4377" name="Vr_mFTS" value="6300"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_136"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="ModelValue_138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="VmNE" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:53:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R09093"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4378" name="k1_mNE" value="0.03"/>
          <Constant key="Parameter_4379" name="k2_mNE" value="20"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="ModelValue_135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="ModelValue_134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_246">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="V_GDC" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6551" name="K_gly_GDC" value="3400"/>
          <Constant key="Parameter_6544" name="K_thf_GDC" value="50"/>
          <Constant key="Parameter_6545" name="Vm_GDC" value="15000"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_132"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="ModelValue_133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="V_SDH" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_10" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6546" name="K_src_SDH" value="320"/>
          <Constant key="Parameter_6547" name="K_thf_SDH" value="50"/>
          <Constant key="Parameter_6486" name="Vm_SDH" value="15000"/>
        </ListOfConstants>
        <KineticLaw function="Function_107" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_624">
              <SourceParameter reference="ModelValue_128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_625">
              <SourceParameter reference="ModelValue_129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_626">
              <SourceParameter reference="ModelValue_130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_627">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_628">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_629">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="V_DMGD" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_0" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_6487" name="K_dmg_DMGD" value="50"/>
          <Constant key="Parameter_4999" name="K_thf_DMGD" value="50"/>
          <Constant key="Parameter_5000" name="Vm_DMGD" value="15000"/>
        </ListOfConstants>
        <KineticLaw function="Function_72" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="VmMTD" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:53:06Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_8" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5001" name="K_1cf_MTD" value="10"/>
          <Constant key="Parameter_5002" name="K_2cf_MTD" value="2"/>
          <Constant key="Parameter_5003" name="Vf_mMTD" value="180000"/>
          <Constant key="Parameter_5004" name="Vr_MTD" value="594000"/>
        </ListOfConstants>
        <KineticLaw function="Function_98" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_565">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_566">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_567">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_568">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_569">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_570">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="VmMTCH" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:53:06Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_7" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5005" name="K_10f_MTCH" value="100"/>
          <Constant key="Parameter_5006" name="K_1cf_MTCH" value="250"/>
          <Constant key="Parameter_4994" name="Vf_mMTCH" value="790000"/>
          <Constant key="Parameter_4995" name="Vr_MTCH" value="20000"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="VmSERc" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:53:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4996" name="K_cser" value="5700"/>
          <Constant key="Parameter_4997" name="K_mser" value="5700"/>
          <Constant key="Parameter_4998" name="V_cser" value="10000"/>
          <Constant key="Parameter_4968" name="V_mser" value="10000"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="VmHCOOHc" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:53:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4969" name="k_in_coo" value="100"/>
          <Constant key="Parameter_4970" name="k_out_coo" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_78" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="VmGLYc" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="3"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4971" name="K_cgly" value="5700"/>
          <Constant key="Parameter_4972" name="K_mgly" value="5700"/>
          <Constant key="Parameter_4973" name="V_cgly" value="10000"/>
          <Constant key="Parameter_4974" name="V_mgly" value="10000"/>
        </ListOfConstants>
        <KineticLaw function="Function_85" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_467">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_471">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="Compartment_1"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="V_MS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_39" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4975" name="K_5mf_MS" value="25"/>
          <Constant key="Parameter_4976" name="K_hcy_MS" value="1"/>
          <Constant key="Parameter_4977" name="Ki_MS" value="0.01"/>
          <Constant key="Parameter_4978" name="Vm_MS" value="500"/>
          <Constant key="Parameter_4979" name="ssH2O2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_106" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_616">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_617">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_618">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_619">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_620">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_621">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_622">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_623">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="V_DHFR" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_35" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4980" name="K_NADPH_DHFR" value="4"/>
          <Constant key="Parameter_4981" name="K_dhf_DHFR" value="0.5"/>
          <Constant key="Parameter_4982" name="Vm_DHFR" value="2000"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="VcFTD" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-10T19:18:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4983" name="K_10f_FTD" value="20"/>
          <Constant key="Parameter_4984" name="Vm_cFTD" value="500"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_147"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="V_PGT" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4985" name="K_10f_PGT" value="4.9"/>
          <Constant key="Parameter_4986" name="K_GAR_PGT" value="520"/>
          <Constant key="Parameter_4987" name="Vm_PGT" value="24300"/>
        </ListOfConstants>
        <KineticLaw function="Function_76" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="VcFTS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_21" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_21" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4988" name="K_coo_cFTS" value="43"/>
          <Constant key="Parameter_4989" name="K_thf_cFTS" value="3"/>
          <Constant key="Parameter_4990" name="Vm_cFTS" value="3900"/>
        </ListOfConstants>
        <KineticLaw function="Function_86" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_475">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="VcSHMT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-10T19:18:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4991" name="K_2cf_SHMT" value="3200"/>
          <Constant key="Parameter_4992" name="K_gly_SHMT" value="10000"/>
          <Constant key="Parameter_4993" name="K_ser_SHMT" value="600"/>
          <Constant key="Parameter_5007" name="K_thf_SHMT" value="50"/>
          <Constant key="Parameter_5008" name="Vf_cSHMT" value="5200"/>
          <Constant key="Parameter_5009" name="Vr_cSHMT" value="1.5e+07"/>
        </ListOfConstants>
        <KineticLaw function="Function_87" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_479">
              <SourceParameter reference="ModelValue_141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="ModelValue_142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="ModelValue_144"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_482">
              <SourceParameter reference="ModelValue_145"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_484">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_486">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_488">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="VcNE" reversible="true" fast="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5010" name="k1_cNE" value="0.03"/>
          <Constant key="Parameter_5011" name="k2_cNE" value="22"/>
        </ListOfConstants>
        <KineticLaw function="Function_77" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="V_TS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R02101"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_42" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_42" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5012" name="K_2cf_TS" value="14"/>
          <Constant key="Parameter_5013" name="K_DUMP_TS" value="6.3"/>
          <Constant key="Parameter_5014" name="Vm_TS" value="5000"/>
        </ListOfConstants>
        <KineticLaw function="Function_75" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="V_MTHFR" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01220"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_44" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5015" name="K_2cf_MTHFR" value="50"/>
          <Constant key="Parameter_5016" name="K_NADPH_MTHFR" value="16"/>
          <Constant key="Parameter_5017" name="Vm_MTHFR" value="5300"/>
        </ListOfConstants>
        <KineticLaw function="Function_79" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="VcMTD" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01220"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_37" stoichiometry="1"/>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5018" name="K_1cf_MTD" value="10"/>
          <Constant key="Parameter_5019" name="K_2cf_MTD" value="2"/>
          <Constant key="Parameter_5020" name="Vf_cMTD" value="80000"/>
          <Constant key="Parameter_5021" name="Vr_cMTD" value="600000"/>
        </ListOfConstants>
        <KineticLaw function="Function_101" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_587">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_588">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_589">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_590">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_591">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_592">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="VcMTCH" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01655"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Modifier metabolite="Metabolite_36" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5022" name="K_10f_MTCH" value="100"/>
          <Constant key="Parameter_5023" name="K_1cf_MTCH" value="250"/>
          <Constant key="Parameter_5024" name="Vf_cMTCH" value="500000"/>
          <Constant key="Parameter_5025" name="Vr_MTCH" value="20000"/>
        </ListOfConstants>
        <KineticLaw function="Function_103" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_597">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_598">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_599">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_600">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_601">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_602">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="V_ART" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R04560"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_36" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5026" name="K_10f_ART" value="5.9"/>
          <Constant key="Parameter_5027" name="K_aic_ART" value="100"/>
          <Constant key="Parameter_5028" name="Vm_ART" value="55000"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="V_BHMT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R02821"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_22" stoichiometry="1"/>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_43" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5029" name="K_bet_BHMT" value="100"/>
          <Constant key="Parameter_5030" name="K_hcy_BHMT" value="12"/>
          <Constant key="Parameter_5031" name="Ki_BHMT" value="0.01"/>
          <Constant key="Parameter_5032" name="Vm_BHMT" value="2160"/>
          <Constant key="Parameter_5033" name="ssH2O2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_89" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_494">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_495">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_496">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_497">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_498">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_499">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_500">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_501">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_502">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_503">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_504">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="V_MATI" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00650"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Modifier metabolite="Metabolite_29" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5034" name="Ki_MAT1" value="2140"/>
          <Constant key="Parameter_5035" name="Km_MAT1" value="41"/>
          <Constant key="Parameter_5036" name="Vm_MAT1" value="260"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="V_MATIII" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00650"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
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
          <Modifier metabolite="Metabolite_29" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5037" name="Ka_MAT3" value="360"/>
          <Constant key="Parameter_5038" name="Ki_MAT3" value="4030"/>
          <Constant key="Parameter_5039" name="Km_MAT3" value="300"/>
          <Constant key="Parameter_5045" name="Vm_MAT3" value="220"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="V_GNMT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00367"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_30" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5044" name="K_gly_GNMT" value="130"/>
          <Constant key="Parameter_5043" name="K_sam_GNMT" value="63"/>
          <Constant key="Parameter_5040" name="Ki_GNMT" value="18"/>
          <Constant key="Parameter_5041" name="Vm_GNMT" value="260"/>
        </ListOfConstants>
        <KineticLaw function="Function_105" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_607">
              <SourceParameter reference="ModelValue_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_608">
              <SourceParameter reference="ModelValue_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_609">
              <SourceParameter reference="ModelValue_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_610">
              <SourceParameter reference="ModelValue_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_611">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_612">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_613">
              <SourceParameter reference="Compartment_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_614">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_615">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="V_DNMT" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00649"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_24" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5042" name="Ki_DNMT" value="1.4"/>
          <Constant key="Parameter_5046" name="Km_DNMT" value="1.4"/>
          <Constant key="Parameter_5047" name="Vm_DNMT" value="180"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="V_SAHH" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00192"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_26" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_26" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5050" name="K_hcy_SAHH" value="150"/>
          <Constant key="Parameter_5049" name="K_sah_SAHH" value="6.5"/>
          <Constant key="Parameter_5048" name="Vf_SAHH" value="320"/>
          <Constant key="Parameter_5051" name="Vr_SAHH" value="4530"/>
        </ListOfConstants>
        <KineticLaw function="Function_83" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_458">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="gluconeogenesis_ser" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R0006565"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_25" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="V_CBS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R01289"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_26" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_26" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5052" name="K_hcy_CBS" value="1000"/>
          <Constant key="Parameter_5053" name="K_ser_CBS" value="2000"/>
          <Constant key="Parameter_5054" name="Ka_CBS" value="0.035"/>
          <Constant key="Parameter_5055" name="Vm_CBS" value="420000"/>
          <Constant key="Parameter_5056" name="ssH2O2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_90" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_505">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_506">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_507">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_508">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_509">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_510">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_511">
              <SourceParameter reference="Metabolite_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_512">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_513">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_514">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="V_CTGL" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00894"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_27" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5057" name="K_cyt_CTGL" value="500"/>
          <Constant key="Parameter_5058" name="Vm_CTGL" value="1500"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_27"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="V_GCS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00894"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_32" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_33" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5059" name="K_cys_GCS" value="100"/>
          <Constant key="Parameter_5060" name="K_glu_GCS" value="1900"/>
          <Constant key="Parameter_5061" name="Ka_GCS" value="0.01"/>
          <Constant key="Parameter_5062" name="Ke_GCS" value="5597"/>
          <Constant key="Parameter_5063" name="Ki_GCS" value="8200"/>
          <Constant key="Parameter_5064" name="Kp_GCS" value="300"/>
          <Constant key="Parameter_5077" name="Vm_GCS" value="3600"/>
          <Constant key="Parameter_5078" name="ssH2O2" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="cys_usage" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0009093"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="c_glu_usage" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006538"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="V_GS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:29:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00497"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_30" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_31" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5079" name="K_glc_GS" value="22"/>
          <Constant key="Parameter_5080" name="K_gly_GS" value="300"/>
          <Constant key="Parameter_5081" name="Ke_GS" value="5600"/>
          <Constant key="Parameter_5082" name="Kp_GS" value="30"/>
          <Constant key="Parameter_5083" name="Vm_GS" value="5400"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="V_GPX" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00274"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="2"/>
          <Substrate metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_41" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_28" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5084" name="K_H2O2_GPX" value="0.09"/>
          <Constant key="Parameter_5085" name="K_gsh_GPX" value="1330"/>
          <Constant key="Parameter_5086" name="Vm_GPX" value="4500"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Metabolite_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="V_GR" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:52:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/kegg.reaction/R00115"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_28" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_29" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5087" name="K_NADPH_GR" value="10.4"/>
          <Constant key="Parameter_5088" name="K_gsg_GR" value="107"/>
          <Constant key="Parameter_5089" name="Vm_GR" value="892.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="c_gsh_degr" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006751"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_28" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_28" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_80" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Metabolite_28"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="c_gsg_degr" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-02-14T13:51:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0006751"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_29" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_29" stoichiometry="2"/>
        </ListOfModifiers>
        <KineticLaw function="Function_81" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Metabolite_29"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="V_ODC" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:55:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_14" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5090" name="Kipodc" value="1300"/>
          <Constant key="Parameter_5091" name="Kmodc" value="60"/>
          <Constant key="Parameter_5092" name="parameter_1" value="72.2557"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_5090"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Parameter_5091"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="V_SAMDC" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T18:56:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5093" name="Kapsamdc" value="0.5"/>
          <Constant key="Parameter_5094" name="Kiasamdc" value="2.5"/>
          <Constant key="Parameter_5095" name="Kissamdc" value="500"/>
          <Constant key="Parameter_4954" name="Kmsamdc" value="50"/>
          <Constant key="Parameter_4955" name="parameter_3" value="21.134"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_5093"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Parameter_5094"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Parameter_5095"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Parameter_4954"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="V_SSAT_S" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:01:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_18" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_17" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4956" name="C" value="4.44"/>
          <Constant key="Parameter_4957" name="Kmaccoassat" value="1.5"/>
          <Constant key="Parameter_4958" name="Kmcoassat" value="40"/>
          <Constant key="Parameter_4959" name="Kmdssat" value="130"/>
          <Constant key="Parameter_4960" name="Kmsssat" value="35"/>
          <Constant key="Parameter_4961" name="parameter_2" value="42.2854"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Parameter_4956"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Parameter_4957"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Parameter_4958"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Parameter_4959"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Parameter_4960"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="V_SSAT_D" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:02:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_18" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_13" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4962" name="Kmaccoassat" value="1.5"/>
          <Constant key="Parameter_4963" name="Kmcoassat" value="40"/>
          <Constant key="Parameter_4964" name="Kmdssat" value="130"/>
          <Constant key="Parameter_4965" name="Kmsssat" value="35"/>
          <Constant key="Parameter_4966" name="parameter_2" value="42.2854"/>
        </ListOfConstants>
        <KineticLaw function="Function_82" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Parameter_4962"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Parameter_4963"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Parameter_4964"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Parameter_4965"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="V_PAO_AD" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:02:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_16" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5096" name="Kmadpao" value="14"/>
          <Constant key="Parameter_5097" name="Kmaspao" value="0.6"/>
          <Constant key="Parameter_4821" name="Kmdpao" value="50"/>
          <Constant key="Parameter_4820" name="Kmspao" value="15"/>
          <Constant key="Parameter_4819" name="Vmpao" value="621"/>
        </ListOfConstants>
        <KineticLaw function="Function_92" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_524">
              <SourceParameter reference="Parameter_5096"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_525">
              <SourceParameter reference="Parameter_5097"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_526">
              <SourceParameter reference="Parameter_4821"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_527">
              <SourceParameter reference="Parameter_4820"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_528">
              <SourceParameter reference="Parameter_4819"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_529">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_530">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_531">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_532">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="V_PAO_AS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:02:59Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_15" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="3"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4818" name="Kmadpao" value="14"/>
          <Constant key="Parameter_4817" name="Kmaspao" value="0.6"/>
          <Constant key="Parameter_4816" name="Kmdpao" value="50"/>
          <Constant key="Parameter_4815" name="Kmspao" value="15"/>
          <Constant key="Parameter_4814" name="Vmpao" value="621"/>
        </ListOfConstants>
        <KineticLaw function="Function_91" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_515">
              <SourceParameter reference="Parameter_4818"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_516">
              <SourceParameter reference="Parameter_4817"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_517">
              <SourceParameter reference="Parameter_4816"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_518">
              <SourceParameter reference="Parameter_4815"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_519">
              <SourceParameter reference="Parameter_4814"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_520">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_521">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_522">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_523">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="V_SPDS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:03:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4813" name="KaSpds" value="0.3"/>
          <Constant key="Parameter_4812" name="Kiaspds" value="0.8"/>
          <Constant key="Parameter_4811" name="Kidspds" value="100"/>
          <Constant key="Parameter_4810" name="Kpspds" value="40"/>
          <Constant key="Parameter_4809" name="Vmspds" value="657"/>
        </ListOfConstants>
        <KineticLaw function="Function_93" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_533">
              <SourceParameter reference="Parameter_4813"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_534">
              <SourceParameter reference="Parameter_4812"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_535">
              <SourceParameter reference="Parameter_4811"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_536">
              <SourceParameter reference="Parameter_4810"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_537">
              <SourceParameter reference="Parameter_4809"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_538">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_539">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_540">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="V_SPMS" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:04:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_20" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_20" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4808" name="Kaspms" value="0.1"/>
          <Constant key="Parameter_4807" name="Kdspms" value="60"/>
          <Constant key="Parameter_4806" name="Kiaspms" value="0.06"/>
          <Constant key="Parameter_4805" name="Kisspms" value="25"/>
          <Constant key="Parameter_4804" name="Vmspms" value="193.8"/>
        </ListOfConstants>
        <KineticLaw function="Function_94" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_541">
              <SourceParameter reference="Parameter_4808"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_542">
              <SourceParameter reference="Parameter_4807"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_543">
              <SourceParameter reference="Parameter_4806"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_544">
              <SourceParameter reference="Parameter_4805"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_545">
              <SourceParameter reference="Parameter_4804"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_546">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_547">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_548">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="V_COA" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:05:01Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_13" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4803" name="k1" value="0.72"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="V_ACCOA" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:05:15Z</dcterms:W3CDTF>
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
          <Modifier metabolite="Metabolite_12" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4802" name="k1" value="0.24"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="V_PUT_efflux" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:05:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_19" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_19" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4801" name="k1" value="0.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4801"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="V_AD_efflux" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-02-09T19:05:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="2"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4800" name="k1" value="0.6"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Parameter_4800"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion]" value="1" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood],Vector=Metabolites[b_Methionine]" value="4.5166056427500001e+18" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood],Vector=Metabolites[b_Serine]" value="2.2583028213750002e+19" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood],Vector=Metabolites[b_Glycine]" value="1.3172419688974621e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood],Vector=Metabolites[b_Glutamate]" value="3.6412972023198433e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood],Vector=Metabolites[b_Cysteine]" value="1.1026507773900618e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood],Vector=Metabolites[b_GSSG]" value="2.846262034659847e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood],Vector=Metabolites[b_GSH]" value="7.5560196278149775e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[GAR]" value="6.0221408569999995e+18" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[NADPH]" value="3.0110704284999999e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Betaine]" value="3.0110704284999999e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[dUMP]" value="1.2044281713999999e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[H2O2]" value="6022140857000000" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_THF]" value="2.4239678828968504e+18" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cell],Vector=Metabolites[Folate],Reference=InitialConcentration>/(2*3/4)-(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-methyl-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-10-methylene-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-10-methenyl-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_10-formyl-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_DHF],Reference=InitialConcentration>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-methyl-THF]" value="3.2283484228871219e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-10-methylene-THF]" value="2.7940484650237987e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-10-methenyl-THF]" value="1.5627315617945226e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_10-formyl-THF]" value="1.9604447555525573e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_DHF]" value="21229684361638280" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[AICAR]" value="5.6889763824324435e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_Glutamate]" value="1.9492358898401728e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_Cysteine]" value="1.0827339339259888e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Glutamyl-Cysteine]" value="5.7855105586488873e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_Glycine]" value="5.5858977623118781e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_GSSG]" value="3.6016177148091372e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_GSH]" value="3.7773968419243798e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Cystathionine]" value="1.9454380398480417e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Homocysteine]" value="6.1681895077173683e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_Serine]" value="3.4399991321722041e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[SAH]" value="9.3720586762958561e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[SAM]" value="3.9180880967272317e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_Methionine]" value="3.0472449738044498e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_Formate]" value="8.416430282157354e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[dcSAM]" value="6731933647231419" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Putrescine]" value="5.9139609055413469e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermine]" value="3.6951562109415096e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Spermidine]" value="4.7931274479728509e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Acetylspermine]" value="16424939804867192" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Acetylspermidine]" value="5.4425184842700723e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Ornithine]" value="1.8066422571000001e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Acetyl-CoA]" value="2.3386014912846811e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[CoA]" value="9.6755695184303178e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[CO2]" value="0" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_THF]" value="1.2640090630276057e+19" type="Species" simulationType="reactions">
            <InitialExpression>
              &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cell],Vector=Metabolites[Folate],Reference=InitialConcentration>/(2*1/4)-(&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_5-10-methylene-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_5-10-methenyl-THF],Reference=InitialConcentration>+&lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_10-formyl-THF],Reference=InitialConcentration>)
            </InitialExpression>
          </ModelParameter>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_5-10-methylene-THF]" value="1.0040696292286253e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_5-10-methenyl-THF]" value="9.3356511002876787e+17" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_10-formyl-THF]" value="9.6312808756065505e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_Serine]" value="1.2947951073641001e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_Glycine]" value="1.2306065888877439e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[mitochondrion],Vector=Metabolites[m_Formate]" value="3.5151842833510552e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cell],Vector=Metabolites[Folate]" value="1.210450312257e+19" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cell],Vector=Metabolites[Formaldehyde]" value="3.0110704285000001e+20" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cell],Vector=Metabolites[Sarcosine]" value="4.9707414456311532e+18" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cell],Vector=Metabolites[Dimethylglycine]" value="4.0803585261964378e+17" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[tot_cfol]" value="13.4" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[tot_mfol]" value="40.200000000000003" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oCys_b]" value="17.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oGly_b]" value="157.5" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oGlu_b]" value="68.25" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_gshHb]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gshHb]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_gshLb]" value="1100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[h_gshLb]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gshLb]" value="3000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_gsgHb]" value="40" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gsgHb]" value="1250" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_gsgLb]" value="4025" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gsgLb]" value="7100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bcysc]" value="14950" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bcysc]" value="2100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bglutc]" value="28000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bglutc]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_glu]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bglyc]" value="4600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bglyc]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_gly]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bserc]" value="2700" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bserc]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_ser]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bmetc]" value="913.39999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bmetc]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_met]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_mFTD]" value="1050" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_FTD]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_mSHMT]" value="11440" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_SHMT]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_ser_SHMT]" value="600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_mSHMT]" value="30000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gly_SHMT]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_SHMT]" value="3200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_mFTS]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_mFTS]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_coo_mFTS]" value="43" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_mFTS]" value="6300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_mFTS]" value="22" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k1_mNE]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k2_mNE]" value="20" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GDC]" value="15000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_GDC]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gly_GDC]" value="3400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_SDH]" value="15000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_SDH]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_src_SDH]" value="320" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_DMGD]" value="15000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_DMGD]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_dmg_DMGD]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_mMTD]" value="180000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_MTD]" value="2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_MTD]" value="594000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_1cf_MTD]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_mMTCH]" value="790000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_1cf_MTCH]" value="250" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_MTCH]" value="20000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_MTCH]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_mser]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_mser]" value="5700" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_cser]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_cser]" value="5700" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_in_coo]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_coo]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_mgly]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_mgly]" value="5700" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_cgly]" value="10000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_cgly]" value="5700" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_MS]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_5mf_MS]" value="25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_hcy_MS]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[ssH2O2]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_MS]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_DHFR]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_dhf_DHFR]" value="0.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_NADPH_DHFR]" value="4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_cFTD]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_PGT]" value="24300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_PGT]" value="4.9000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_GAR_PGT]" value="520" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_cFTS]" value="3900" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_cFTS]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_coo_cFTS]" value="43" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_cSHMT]" value="5200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_cSHMT]" value="15000000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k1_cNE]" value="0.029999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k2_cNE]" value="22" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_TS]" value="5000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_DUMP_TS]" value="6.2999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_TS]" value="14" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_MTHFR]" value="5300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_MTHFR]" value="50" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_NADPH_MTHFR]" value="16" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_cMTD]" value="80000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_cMTD]" value="600000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_cMTCH]" value="500000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_ART]" value="55000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_ART]" value="5.9000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_aic_ART]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_BHMT]" value="2160" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_hcy_BHMT]" value="12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bet_BHMT]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_BHMT]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_MAT1]" value="260" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Km_MAT1]" value="41" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_MAT1]" value="2140" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_MAT3]" value="220" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Km_MAT3]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ka_MAT3]" value="360" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_MAT3]" value="4030" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GNMT]" value="260" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_sam_GNMT]" value="63" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gly_GNMT]" value="130" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_GNMT]" value="18" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_DNMT]" value="180" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Km_DNMT]" value="1.3999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_DNMT]" value="1.3999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_SAHH]" value="320" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_sah_SAHH]" value="6.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_SAHH]" value="4530" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_hcy_SAHH]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_CBS]" value="420000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_hcy_CBS]" value="1000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_ser_CBS]" value="2000" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ka_CBS]" value="0.035000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_CTGL]" value="1500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_cyt_CTGL]" value="500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GCS]" value="3600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_GCS]" value="5597" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_cys_GCS]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_glu_GCS]" value="1900" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_GCS]" value="8200" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kp_GCS]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ka_GCS]" value="0.01" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GS]" value="5400" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_GS]" value="5600" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gly_GS]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_glc_GS]" value="22" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kp_GS]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GPX]" value="4500" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gsh_GPX]" value="1330" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_H2O2_GPX]" value="0.089999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GR]" value="892.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gsg_GR]" value="107" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_NADPH_GR]" value="10.4" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[dinner]" value="3.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[lunch]" value="1.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[breakfast]" value="1.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[fasting]" value="0.25" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[daytime]" value="0" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Aminoacid_input]" value="0.25" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[b_met_basal]" value="30" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[b_ser_basal]" value="150" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oGly_b_basal]" value="630" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oGlu_b_basal]" value="273" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oCys_b_basal]" value="70" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_cys]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_ODC]" value="72.255717899435098" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_SSAT]" value="42.285379205541702" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_SAMDC]" value="21.134013992362899" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[ANTZ]" value="0.58497831332260997" type="ModelValue" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_POL]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kd_ODC]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ks_ODC]" value="300" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kd_SSAT]" value="12" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ks_SSAT]" value="0.059999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kd_SAMDC]" value="1.2" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ks_SAMDC]" value="60" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kd_ANTZ]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ks_ANTZ]" value="0.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_accoa]" value="0.23999999999999999" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_coa]" value="0.71999999999999997" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[R]" value="0.23999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[S+D]" value="140.9512640184723" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[R_percent]" value="100" type="ModelValue" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_gsh_decomp]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_gsg_decomp]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_cys_cystine_conv]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_cys_loss]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_glu_loss]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_gly_loss]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_gsh_loss]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_gsg_loss]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_cys_import]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_cys_import],ParameterGroup=Parameters,Parameter=v" value="17.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oCys_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_gly_import]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_gly_import],ParameterGroup=Parameters,Parameter=v" value="157.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oGly_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_glu_import]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[b_glu_import],ParameterGroup=Parameters,Parameter=v" value="68.25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_oGlu_b],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gshHb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gshHb],ParameterGroup=Parameters,Parameter=K_gshHb" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gshHb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gshHb],ParameterGroup=Parameters,Parameter=V_gshHb" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_gshHb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gshLb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gshLb],ParameterGroup=Parameters,Parameter=K_gshLb" value="3000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gshLb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gshLb],ParameterGroup=Parameters,Parameter=V_gshLb" value="1100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_gshLb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gshLb],ParameterGroup=Parameters,Parameter=h_gshLb" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[h_gshLb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gsgHb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gsgHb],ParameterGroup=Parameters,Parameter=K_gsgHb" value="1250" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gsgHb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gsgHb],ParameterGroup=Parameters,Parameter=V_gsgHb" value="40" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_gsgHb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gsgLb]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gsgLb],ParameterGroup=Parameters,Parameter=K_gsgLb" value="7100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gsgLb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_c_gsgLb],ParameterGroup=Parameters,Parameter=V_gsgLb" value="4025" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_gsgLb],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_CYS_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_CYS_c],ParameterGroup=Parameters,Parameter=K_bcysc" value="2100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bcysc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_CYS_c],ParameterGroup=Parameters,Parameter=V_bcysc" value="14950" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bcysc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_GLU_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_GLU_c],ParameterGroup=Parameters,Parameter=K_bglutc" value="300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bglutc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_GLU_c],ParameterGroup=Parameters,Parameter=V_bglutc" value="28000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bglutc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_GLU_c],ParameterGroup=Parameters,Parameter=k_out_glu" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_glu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_GLY_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_GLY_c],ParameterGroup=Parameters,Parameter=K_bglyc" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bglyc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_GLY_c],ParameterGroup=Parameters,Parameter=V_bglyc" value="4600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bglyc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_GLY_c],ParameterGroup=Parameters,Parameter=k_out_gly" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_gly],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_SER_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_SER_c],ParameterGroup=Parameters,Parameter=K_bserc" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bserc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_SER_c],ParameterGroup=Parameters,Parameter=V_bserc" value="2700" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bserc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_SER_c],ParameterGroup=Parameters,Parameter=k_out_ser" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_ser],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_MET_c]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_MET_c],ParameterGroup=Parameters,Parameter=K_bmetc" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bmetc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_MET_c],ParameterGroup=Parameters,Parameter=V_bmetc" value="913.39999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_bmetc],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_b_MET_c],ParameterGroup=Parameters,Parameter=k_out_met" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_met],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmFTD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmFTD],ParameterGroup=Parameters,Parameter=K_10f_FTD" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_FTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmFTD],ParameterGroup=Parameters,Parameter=Vm_mFTD" value="1050" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_mFTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSHMT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSHMT],ParameterGroup=Parameters,Parameter=K_2cf_SHMT" value="3200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_SHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSHMT],ParameterGroup=Parameters,Parameter=K_gly_SHMT" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gly_SHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSHMT],ParameterGroup=Parameters,Parameter=K_ser_SHMT" value="600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_ser_SHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSHMT],ParameterGroup=Parameters,Parameter=K_thf_SHMT" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_SHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSHMT],ParameterGroup=Parameters,Parameter=Vf_mSHMT" value="11440" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_mSHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSHMT],ParameterGroup=Parameters,Parameter=Vr_mSHMT" value="30000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_mSHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmFTS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmFTS],ParameterGroup=Parameters,Parameter=K_10f_mFTS" value="22" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_mFTS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmFTS],ParameterGroup=Parameters,Parameter=K_coo_mFTS" value="43" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_coo_mFTS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmFTS],ParameterGroup=Parameters,Parameter=K_thf_mFTS" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_mFTS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmFTS],ParameterGroup=Parameters,Parameter=Vf_mFTS" value="2000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_mFTS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmFTS],ParameterGroup=Parameters,Parameter=Vr_mFTS" value="6300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_mFTS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmNE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmNE],ParameterGroup=Parameters,Parameter=k1_mNE" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k1_mNE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmNE],ParameterGroup=Parameters,Parameter=k2_mNE" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k2_mNE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GDC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GDC],ParameterGroup=Parameters,Parameter=K_gly_GDC" value="3400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gly_GDC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GDC],ParameterGroup=Parameters,Parameter=K_thf_GDC" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_GDC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GDC],ParameterGroup=Parameters,Parameter=Vm_GDC" value="15000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GDC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SDH],ParameterGroup=Parameters,Parameter=K_src_SDH" value="320" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_src_SDH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SDH],ParameterGroup=Parameters,Parameter=K_thf_SDH" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_SDH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SDH],ParameterGroup=Parameters,Parameter=Vm_SDH" value="15000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_SDH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DMGD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DMGD],ParameterGroup=Parameters,Parameter=K_dmg_DMGD" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_dmg_DMGD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DMGD],ParameterGroup=Parameters,Parameter=K_thf_DMGD" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_DMGD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DMGD],ParameterGroup=Parameters,Parameter=Vm_DMGD" value="15000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_DMGD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTD],ParameterGroup=Parameters,Parameter=K_1cf_MTD" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_1cf_MTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTD],ParameterGroup=Parameters,Parameter=K_2cf_MTD" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_MTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTD],ParameterGroup=Parameters,Parameter=Vf_mMTD" value="180000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_mMTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTD],ParameterGroup=Parameters,Parameter=Vr_MTD" value="594000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_MTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTCH],ParameterGroup=Parameters,Parameter=K_10f_MTCH" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_MTCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTCH],ParameterGroup=Parameters,Parameter=K_1cf_MTCH" value="250" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_1cf_MTCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTCH],ParameterGroup=Parameters,Parameter=Vf_mMTCH" value="790000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_mMTCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmMTCH],ParameterGroup=Parameters,Parameter=Vr_MTCH" value="20000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_MTCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSERc]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSERc],ParameterGroup=Parameters,Parameter=K_cser" value="5700" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_cser],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSERc],ParameterGroup=Parameters,Parameter=K_mser" value="5700" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_mser],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSERc],ParameterGroup=Parameters,Parameter=V_cser" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_cser],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmSERc],ParameterGroup=Parameters,Parameter=V_mser" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_mser],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmHCOOHc]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmHCOOHc],ParameterGroup=Parameters,Parameter=k_in_coo" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_in_coo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmHCOOHc],ParameterGroup=Parameters,Parameter=k_out_coo" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k_out_coo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmGLYc]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmGLYc],ParameterGroup=Parameters,Parameter=K_cgly" value="5700" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_cgly],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmGLYc],ParameterGroup=Parameters,Parameter=K_mgly" value="5700" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_mgly],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmGLYc],ParameterGroup=Parameters,Parameter=V_cgly" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_cgly],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VmGLYc],ParameterGroup=Parameters,Parameter=V_mgly" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[V_mgly],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MS],ParameterGroup=Parameters,Parameter=K_5mf_MS" value="25" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_5mf_MS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MS],ParameterGroup=Parameters,Parameter=K_hcy_MS" value="1" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_hcy_MS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MS],ParameterGroup=Parameters,Parameter=Ki_MS" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_MS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MS],ParameterGroup=Parameters,Parameter=Vm_MS" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_MS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MS],ParameterGroup=Parameters,Parameter=ssH2O2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[ssH2O2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DHFR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DHFR],ParameterGroup=Parameters,Parameter=K_NADPH_DHFR" value="4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_NADPH_DHFR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DHFR],ParameterGroup=Parameters,Parameter=K_dhf_DHFR" value="0.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_dhf_DHFR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DHFR],ParameterGroup=Parameters,Parameter=Vm_DHFR" value="2000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_DHFR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcFTD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcFTD],ParameterGroup=Parameters,Parameter=K_10f_FTD" value="20" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_FTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcFTD],ParameterGroup=Parameters,Parameter=Vm_cFTD" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_cFTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PGT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PGT],ParameterGroup=Parameters,Parameter=K_10f_PGT" value="4.9000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_PGT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PGT],ParameterGroup=Parameters,Parameter=K_GAR_PGT" value="520" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_GAR_PGT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PGT],ParameterGroup=Parameters,Parameter=Vm_PGT" value="24300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_PGT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcFTS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcFTS],ParameterGroup=Parameters,Parameter=K_coo_cFTS" value="43" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_coo_cFTS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcFTS],ParameterGroup=Parameters,Parameter=K_thf_cFTS" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_cFTS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcFTS],ParameterGroup=Parameters,Parameter=Vm_cFTS" value="3900" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_cFTS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcSHMT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcSHMT],ParameterGroup=Parameters,Parameter=K_2cf_SHMT" value="3200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_SHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcSHMT],ParameterGroup=Parameters,Parameter=K_gly_SHMT" value="10000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gly_SHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcSHMT],ParameterGroup=Parameters,Parameter=K_ser_SHMT" value="600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_ser_SHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcSHMT],ParameterGroup=Parameters,Parameter=K_thf_SHMT" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_thf_SHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcSHMT],ParameterGroup=Parameters,Parameter=Vf_cSHMT" value="5200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_cSHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcSHMT],ParameterGroup=Parameters,Parameter=Vr_cSHMT" value="15000000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_cSHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcNE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcNE],ParameterGroup=Parameters,Parameter=k1_cNE" value="0.029999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k1_cNE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcNE],ParameterGroup=Parameters,Parameter=k2_cNE" value="22" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[k2_cNE],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_TS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_TS],ParameterGroup=Parameters,Parameter=K_2cf_TS" value="14" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_TS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_TS],ParameterGroup=Parameters,Parameter=K_DUMP_TS" value="6.2999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_DUMP_TS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_TS],ParameterGroup=Parameters,Parameter=Vm_TS" value="5000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_TS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MTHFR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MTHFR],ParameterGroup=Parameters,Parameter=K_2cf_MTHFR" value="50" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_MTHFR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MTHFR],ParameterGroup=Parameters,Parameter=K_NADPH_MTHFR" value="16" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_NADPH_MTHFR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MTHFR],ParameterGroup=Parameters,Parameter=Vm_MTHFR" value="5300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_MTHFR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTD],ParameterGroup=Parameters,Parameter=K_1cf_MTD" value="10" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_1cf_MTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTD],ParameterGroup=Parameters,Parameter=K_2cf_MTD" value="2" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_2cf_MTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTD],ParameterGroup=Parameters,Parameter=Vf_cMTD" value="80000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_cMTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTD],ParameterGroup=Parameters,Parameter=Vr_cMTD" value="600000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_cMTD],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTCH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTCH],ParameterGroup=Parameters,Parameter=K_10f_MTCH" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_MTCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTCH],ParameterGroup=Parameters,Parameter=K_1cf_MTCH" value="250" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_1cf_MTCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTCH],ParameterGroup=Parameters,Parameter=Vf_cMTCH" value="500000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_cMTCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[VcMTCH],ParameterGroup=Parameters,Parameter=Vr_MTCH" value="20000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_MTCH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ART]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ART],ParameterGroup=Parameters,Parameter=K_10f_ART" value="5.9000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_10f_ART],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ART],ParameterGroup=Parameters,Parameter=K_aic_ART" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_aic_ART],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ART],ParameterGroup=Parameters,Parameter=Vm_ART" value="55000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_ART],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_BHMT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_BHMT],ParameterGroup=Parameters,Parameter=K_bet_BHMT" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_bet_BHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_BHMT],ParameterGroup=Parameters,Parameter=K_hcy_BHMT" value="12" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_hcy_BHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_BHMT],ParameterGroup=Parameters,Parameter=Ki_BHMT" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_BHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_BHMT],ParameterGroup=Parameters,Parameter=Vm_BHMT" value="2160" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_BHMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_BHMT],ParameterGroup=Parameters,Parameter=ssH2O2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[ssH2O2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MATI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MATI],ParameterGroup=Parameters,Parameter=Ki_MAT1" value="2140" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_MAT1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MATI],ParameterGroup=Parameters,Parameter=Km_MAT1" value="41" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Km_MAT1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MATI],ParameterGroup=Parameters,Parameter=Vm_MAT1" value="260" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_MAT1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MATIII]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MATIII],ParameterGroup=Parameters,Parameter=Ka_MAT3" value="360" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ka_MAT3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MATIII],ParameterGroup=Parameters,Parameter=Ki_MAT3" value="4030" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_MAT3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MATIII],ParameterGroup=Parameters,Parameter=Km_MAT3" value="300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Km_MAT3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_MATIII],ParameterGroup=Parameters,Parameter=Vm_MAT3" value="220" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_MAT3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GNMT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GNMT],ParameterGroup=Parameters,Parameter=K_gly_GNMT" value="130" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gly_GNMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GNMT],ParameterGroup=Parameters,Parameter=K_sam_GNMT" value="63" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_sam_GNMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GNMT],ParameterGroup=Parameters,Parameter=Ki_GNMT" value="18" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_GNMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GNMT],ParameterGroup=Parameters,Parameter=Vm_GNMT" value="260" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GNMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DNMT]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DNMT],ParameterGroup=Parameters,Parameter=Ki_DNMT" value="1.3999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_DNMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DNMT],ParameterGroup=Parameters,Parameter=Km_DNMT" value="1.3999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Km_DNMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DNMT],ParameterGroup=Parameters,Parameter=Vm_DNMT" value="180" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_DNMT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAHH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAHH],ParameterGroup=Parameters,Parameter=K_hcy_SAHH" value="150" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_hcy_SAHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAHH],ParameterGroup=Parameters,Parameter=K_sah_SAHH" value="6.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_sah_SAHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAHH],ParameterGroup=Parameters,Parameter=Vf_SAHH" value="320" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vf_SAHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAHH],ParameterGroup=Parameters,Parameter=Vr_SAHH" value="4530" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vr_SAHH],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[gluconeogenesis_ser]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CBS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CBS],ParameterGroup=Parameters,Parameter=K_hcy_CBS" value="1000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_hcy_CBS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CBS],ParameterGroup=Parameters,Parameter=K_ser_CBS" value="2000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_ser_CBS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CBS],ParameterGroup=Parameters,Parameter=Ka_CBS" value="0.035000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ka_CBS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CBS],ParameterGroup=Parameters,Parameter=Vm_CBS" value="420000" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_CBS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CBS],ParameterGroup=Parameters,Parameter=ssH2O2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[ssH2O2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CTGL]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CTGL],ParameterGroup=Parameters,Parameter=K_cyt_CTGL" value="500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_cyt_CTGL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CTGL],ParameterGroup=Parameters,Parameter=Vm_CTGL" value="1500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_CTGL],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GCS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GCS],ParameterGroup=Parameters,Parameter=K_cys_GCS" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_cys_GCS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GCS],ParameterGroup=Parameters,Parameter=K_glu_GCS" value="1900" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_glu_GCS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GCS],ParameterGroup=Parameters,Parameter=Ka_GCS" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ka_GCS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GCS],ParameterGroup=Parameters,Parameter=Ke_GCS" value="5597" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_GCS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GCS],ParameterGroup=Parameters,Parameter=Ki_GCS" value="8200" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ki_GCS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GCS],ParameterGroup=Parameters,Parameter=Kp_GCS" value="300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kp_GCS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GCS],ParameterGroup=Parameters,Parameter=Vm_GCS" value="3600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GCS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GCS],ParameterGroup=Parameters,Parameter=ssH2O2" value="0.01" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[ssH2O2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[cys_usage]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[c_glu_usage]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GS],ParameterGroup=Parameters,Parameter=K_glc_GS" value="22" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_glc_GS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GS],ParameterGroup=Parameters,Parameter=K_gly_GS" value="300" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gly_GS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GS],ParameterGroup=Parameters,Parameter=Ke_GS" value="5600" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Ke_GS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GS],ParameterGroup=Parameters,Parameter=Kp_GS" value="30" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Kp_GS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GS],ParameterGroup=Parameters,Parameter=Vm_GS" value="5400" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GS],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GPX]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GPX],ParameterGroup=Parameters,Parameter=K_H2O2_GPX" value="0.089999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_H2O2_GPX],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GPX],ParameterGroup=Parameters,Parameter=K_gsh_GPX" value="1330" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gsh_GPX],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GPX],ParameterGroup=Parameters,Parameter=Vm_GPX" value="4500" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GPX],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GR]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GR],ParameterGroup=Parameters,Parameter=K_NADPH_GR" value="10.4" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_NADPH_GR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GR],ParameterGroup=Parameters,Parameter=K_gsg_GR" value="107" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_gsg_GR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GR],ParameterGroup=Parameters,Parameter=Vm_GR" value="892.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_GR],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[c_gsh_degr]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[c_gsg_degr]" type="Reaction">
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ODC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ODC],ParameterGroup=Parameters,Parameter=Kipodc" value="1300" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ODC],ParameterGroup=Parameters,Parameter=Kmodc" value="60" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ODC],ParameterGroup=Parameters,Parameter=parameter_1" value="72.255717899435098" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_ODC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAMDC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAMDC],ParameterGroup=Parameters,Parameter=Kapsamdc" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAMDC],ParameterGroup=Parameters,Parameter=Kiasamdc" value="2.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAMDC],ParameterGroup=Parameters,Parameter=Kissamdc" value="500" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAMDC],ParameterGroup=Parameters,Parameter=Kmsamdc" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SAMDC],ParameterGroup=Parameters,Parameter=parameter_3" value="21.134013992362899" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_SAMDC],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_S]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_S],ParameterGroup=Parameters,Parameter=C" value="4.4400000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_S],ParameterGroup=Parameters,Parameter=Kmaccoassat" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_S],ParameterGroup=Parameters,Parameter=Kmcoassat" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_S],ParameterGroup=Parameters,Parameter=Kmdssat" value="130" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_S],ParameterGroup=Parameters,Parameter=Kmsssat" value="35" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_S],ParameterGroup=Parameters,Parameter=parameter_2" value="42.285379205541702" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_SSAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_D]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_D],ParameterGroup=Parameters,Parameter=Kmaccoassat" value="1.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_D],ParameterGroup=Parameters,Parameter=Kmcoassat" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_D],ParameterGroup=Parameters,Parameter=Kmdssat" value="130" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_D],ParameterGroup=Parameters,Parameter=Kmsssat" value="35" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SSAT_D],ParameterGroup=Parameters,Parameter=parameter_2" value="42.285379205541702" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[Vm_SSAT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AD],ParameterGroup=Parameters,Parameter=Kmadpao" value="14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AD],ParameterGroup=Parameters,Parameter=Kmaspao" value="0.59999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AD],ParameterGroup=Parameters,Parameter=Kmdpao" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AD],ParameterGroup=Parameters,Parameter=Kmspao" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AD],ParameterGroup=Parameters,Parameter=Vmpao" value="621" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AS],ParameterGroup=Parameters,Parameter=Kmadpao" value="14" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AS],ParameterGroup=Parameters,Parameter=Kmaspao" value="0.59999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AS],ParameterGroup=Parameters,Parameter=Kmdpao" value="50" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AS],ParameterGroup=Parameters,Parameter=Kmspao" value="15" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PAO_AS],ParameterGroup=Parameters,Parameter=Vmpao" value="621" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPDS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPDS],ParameterGroup=Parameters,Parameter=KaSpds" value="0.29999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPDS],ParameterGroup=Parameters,Parameter=Kiaspds" value="0.80000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPDS],ParameterGroup=Parameters,Parameter=Kidspds" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPDS],ParameterGroup=Parameters,Parameter=Kpspds" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPDS],ParameterGroup=Parameters,Parameter=Vmspds" value="657" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPMS]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPMS],ParameterGroup=Parameters,Parameter=Kaspms" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPMS],ParameterGroup=Parameters,Parameter=Kdspms" value="60" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPMS],ParameterGroup=Parameters,Parameter=Kiaspms" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPMS],ParameterGroup=Parameters,Parameter=Kisspms" value="25" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_SPMS],ParameterGroup=Parameters,Parameter=Vmspms" value="193.80000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_COA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_COA],ParameterGroup=Parameters,Parameter=k1" value="0.71999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_coa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ACCOA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_ACCOA],ParameterGroup=Parameters,Parameter=k1" value="0.23999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Values[K_accoa],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PUT_efflux]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_PUT_efflux],ParameterGroup=Parameters,Parameter=k1" value="0.59999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_AD_efflux]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_AD_efflux],ParameterGroup=Parameters,Parameter=k1" value="0.59999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="ModelValue_176"/>
      <StateTemplateVariable objectReference="ModelValue_175"/>
      <StateTemplateVariable objectReference="ModelValue_174"/>
      <StateTemplateVariable objectReference="ModelValue_173"/>
      <StateTemplateVariable objectReference="ModelValue_172"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Compartment_3"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_171"/>
      <StateTemplateVariable objectReference="ModelValue_170"/>
      <StateTemplateVariable objectReference="ModelValue_169"/>
      <StateTemplateVariable objectReference="ModelValue_168"/>
      <StateTemplateVariable objectReference="ModelValue_167"/>
      <StateTemplateVariable objectReference="ModelValue_166"/>
      <StateTemplateVariable objectReference="ModelValue_165"/>
      <StateTemplateVariable objectReference="ModelValue_164"/>
      <StateTemplateVariable objectReference="ModelValue_163"/>
      <StateTemplateVariable objectReference="ModelValue_162"/>
      <StateTemplateVariable objectReference="ModelValue_161"/>
      <StateTemplateVariable objectReference="ModelValue_160"/>
      <StateTemplateVariable objectReference="ModelValue_159"/>
      <StateTemplateVariable objectReference="ModelValue_158"/>
      <StateTemplateVariable objectReference="ModelValue_157"/>
      <StateTemplateVariable objectReference="ModelValue_156"/>
      <StateTemplateVariable objectReference="ModelValue_155"/>
      <StateTemplateVariable objectReference="ModelValue_154"/>
      <StateTemplateVariable objectReference="ModelValue_153"/>
      <StateTemplateVariable objectReference="ModelValue_152"/>
      <StateTemplateVariable objectReference="ModelValue_151"/>
      <StateTemplateVariable objectReference="ModelValue_150"/>
      <StateTemplateVariable objectReference="ModelValue_149"/>
      <StateTemplateVariable objectReference="ModelValue_148"/>
      <StateTemplateVariable objectReference="ModelValue_147"/>
      <StateTemplateVariable objectReference="ModelValue_146"/>
      <StateTemplateVariable objectReference="ModelValue_145"/>
      <StateTemplateVariable objectReference="ModelValue_144"/>
      <StateTemplateVariable objectReference="ModelValue_143"/>
      <StateTemplateVariable objectReference="ModelValue_142"/>
      <StateTemplateVariable objectReference="ModelValue_141"/>
      <StateTemplateVariable objectReference="ModelValue_140"/>
      <StateTemplateVariable objectReference="ModelValue_139"/>
      <StateTemplateVariable objectReference="ModelValue_138"/>
      <StateTemplateVariable objectReference="ModelValue_137"/>
      <StateTemplateVariable objectReference="ModelValue_136"/>
      <StateTemplateVariable objectReference="ModelValue_135"/>
      <StateTemplateVariable objectReference="ModelValue_134"/>
      <StateTemplateVariable objectReference="ModelValue_133"/>
      <StateTemplateVariable objectReference="ModelValue_132"/>
      <StateTemplateVariable objectReference="ModelValue_131"/>
      <StateTemplateVariable objectReference="ModelValue_130"/>
      <StateTemplateVariable objectReference="ModelValue_129"/>
      <StateTemplateVariable objectReference="ModelValue_128"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
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
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 72.255717899435098 42.285379205541702 21.134013992362899 0.58497831332260997 3.7773968419243798e+21 1.2306065888877439e+21 3.5151842833510552e+19 1.2947951073641001e+21 1.1026507773900618e+20 2.4239678828968504e+18 1.2640090630276057e+19 1.3172419688974621e+20 3.9180880967272317e+19 2.7940484650237987e+17 3.6412972023198433e+19 3.0472449738044498e+19 5.9139609055413469e+19 2.3386014912846811e+19 3.4399991321722041e+20 1.0827339339259888e+20 3.6016177148091372e+19 4.7931274479728509e+19 7.5560196278149775e+18 5.5858977623118781e+20 6.1681895077173683e+17 1.9604447555525573e+18 1.9492358898401728e+21 6731933647231419 1.0040696292286253e+18 4.9707414456311532e+18 5.4425184842700723e+17 2.846262034659847e+17 5.6889763824324435e+17 9.3356511002876787e+17 16424939804867192 21229684361638280 1.9454380398480417e+19 5.7855105586488873e+18 9.3720586762958561e+18 4.0803585261964378e+17 8.416430282157354e+18 1.5627315617945226e+17 3.6951562109415096e+19 3.2283484228871219e+18 9.6312808756065505e+18 9.6755695184303178e+19 4.5166056427500001e+18 2.2583028213750002e+19 13.4 40.200000000000003 17.5 157.5 68.25 0 0.25 0.23999999999999999 0.71999999999999997 140.9512640184723 100 6.0221408569999995e+18 3.0110704284999999e+19 3.0110704284999999e+19 1.2044281713999999e+19 6022140857000000 1.8066422571000001e+20 0 1.210450312257e+19 3.0110704285000001e+20 1 1 1 1 150 150 1100 3 3000 40 1250 4025 7100 14950 2100 28000 300 1 4600 150 1 2700 150 1 913.39999999999998 150 1 1050 20 11440 50 600 30000000 10000 3200 2000 3 43 6300 22 0.029999999999999999 20 15000 50 3400 15000 50 320 15000 50 50 180000 2 594000 10 790000 250 20000 100 10000 5700 10000 5700 100 100 10000 5700 10000 5700 500 25 1 0.01 0.01 2000 0.5 4 500 24300 4.9000000000000004 520 3900 3 43 5200 15000000 0.029999999999999999 22 5000 6.2999999999999998 14 5300 50 16 80000 600000 500000 55000 5.9000000000000004 100 2160 12 100 0.01 260 41 2140 220 300 360 4030 260 63 130 18 180 1.3999999999999999 1.3999999999999999 320 6.5 4530 150 420000 1000 2000 0.035000000000000003 1500 500 3600 5597 100 1900 8200 300 0.01 5400 5600 300 22 30 4500 1330 0.089999999999999997 892.5 107 10.4 3.25 1.75 1.75 0.25 30 150 630 273 70 1 1 3 300 12 0.059999999999999998 1.2 60 0.02 0.02 0.23999999999999999 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="2400"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="24"/>
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
    <Task key="Task_2" name="Scan" type="scan" scheduled="false" updateModel="false">
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
    <Task key="Task_3" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_4" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
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
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
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
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_9" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_10" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_11" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
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
    <Task key="Task_0" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_0" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_3" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_5" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
    <PlotSpecification name="figure1b" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[SAM]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[SAM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[c_GSH]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_GSH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[c_Methionine]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_Methionine],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="figure1c" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(V_CBS).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_CBS],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(V_DNMT).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_DNMT],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(V_GS).Flux|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Reactions[V_GS],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="figure1d" type="Plot2D" active="1">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[Homocysteine]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[Homocysteine],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[b_GSH]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[blood],Vector=Metabolites[b_GSH],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[c_5-methyl-THF]|Time" type="Curve2D">
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=Reyes-Palomares2012 - a combined model hepatic polyamine and sulfur aminoacid metabolism - version1_1,Vector=Compartments[cytosol],Vector=Metabolites[c_5-methyl-THF],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <SBMLReference file="MODEL1305060000.xml">
    <SBMLMap SBMLid="BET" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="CO" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="DUMP" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="Fol" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="GAR" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="H2O2" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="HCHO" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="K_10f_ART" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="K_10f_FTD" COPASIkey="ModelValue_147"/>
    <SBMLMap SBMLid="K_10f_MTCH" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="K_10f_PGT" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="K_10f_mFTS" COPASIkey="ModelValue_136"/>
    <SBMLMap SBMLid="K_1cf_MTCH" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="K_1cf_MTD" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="K_2cf_MTD" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="K_2cf_MTHFR" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="K_2cf_SHMT" COPASIkey="ModelValue_141"/>
    <SBMLMap SBMLid="K_2cf_TS" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="K_5mf_MS" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="K_DUMP_TS" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="K_GAR_PGT" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="K_H2O2_GPX" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="K_NADPH_DHFR" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="K_NADPH_GR" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="K_NADPH_MTHFR" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="K_aic_ART" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="K_bcysc" COPASIkey="ModelValue_161"/>
    <SBMLMap SBMLid="K_bet_BHMT" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="K_bglutc" COPASIkey="ModelValue_159"/>
    <SBMLMap SBMLid="K_bglyc" COPASIkey="ModelValue_156"/>
    <SBMLMap SBMLid="K_bmetc" COPASIkey="ModelValue_150"/>
    <SBMLMap SBMLid="K_bserc" COPASIkey="ModelValue_153"/>
    <SBMLMap SBMLid="K_cgly" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="K_coo_cFTS" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="K_coo_mFTS" COPASIkey="ModelValue_138"/>
    <SBMLMap SBMLid="K_cser" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="K_cys_GCS" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="K_cyt_CTGL" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="K_dhf_DHFR" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="K_dmg_DMGD" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="K_glc_GS" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="K_glu_GCS" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="K_gly_GDC" COPASIkey="ModelValue_131"/>
    <SBMLMap SBMLid="K_gly_GNMT" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="K_gly_GS" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="K_gly_SHMT" COPASIkey="ModelValue_142"/>
    <SBMLMap SBMLid="K_gsgHb" COPASIkey="ModelValue_165"/>
    <SBMLMap SBMLid="K_gsgLb" COPASIkey="ModelValue_163"/>
    <SBMLMap SBMLid="K_gsg_GR" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="K_gshHb" COPASIkey="ModelValue_170"/>
    <SBMLMap SBMLid="K_gshLb" COPASIkey="ModelValue_167"/>
    <SBMLMap SBMLid="K_gsh_GPX" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="K_hcy_BHMT" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="K_hcy_CBS" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="K_hcy_MS" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="K_hcy_SAHH" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="K_mgly" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="K_mser" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="K_sah_SAHH" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="K_sam_GNMT" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="K_ser_CBS" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="K_ser_SHMT" COPASIkey="ModelValue_144"/>
    <SBMLMap SBMLid="K_src_SDH" COPASIkey="ModelValue_128"/>
    <SBMLMap SBMLid="K_thf_DMGD" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="K_thf_GDC" COPASIkey="ModelValue_132"/>
    <SBMLMap SBMLid="K_thf_SDH" COPASIkey="ModelValue_129"/>
    <SBMLMap SBMLid="K_thf_SHMT" COPASIkey="ModelValue_145"/>
    <SBMLMap SBMLid="K_thf_cFTS" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="K_thf_mFTS" COPASIkey="ModelValue_139"/>
    <SBMLMap SBMLid="Ka_CBS" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="Ka_GCS" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="Ka_MAT3" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="Ke_GCS" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="Ke_GS" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="Ki_BHMT" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="Ki_DNMT" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="Ki_GCS" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="Ki_GNMT" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="Ki_MAT1" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="Ki_MAT3" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="Ki_MS" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="Km_DNMT" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="Km_MAT1" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="Km_MAT3" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="Kp_GCS" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="Kp_GS" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="NADPH" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="V_ART" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="V_BHMT" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="V_CBS" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="V_CTGL" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="V_DHFR" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="V_DMGD" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="V_DNMT" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="V_GCS" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="V_GDC" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="V_GNMT" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="V_GPX" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="V_GR" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="V_GS" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="V_MATI" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="V_MATIII" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="V_MS" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="V_MTHFR" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="V_PGT" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="V_SAHH" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="V_SDH" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="V_TS" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="V_b_CYS_c" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="V_b_GLU_c" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="V_b_GLY_c" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="V_b_MET_c" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="V_b_SER_c" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="V_bcysc" COPASIkey="ModelValue_162"/>
    <SBMLMap SBMLid="V_bglutc" COPASIkey="ModelValue_160"/>
    <SBMLMap SBMLid="V_bglyc" COPASIkey="ModelValue_157"/>
    <SBMLMap SBMLid="V_bmetc" COPASIkey="ModelValue_151"/>
    <SBMLMap SBMLid="V_bserc" COPASIkey="ModelValue_154"/>
    <SBMLMap SBMLid="V_c_gsgHb" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="V_c_gsgLb" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="V_c_gshHb" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="V_c_gshLb" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="V_cgly" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="V_cser" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="V_gsgHb" COPASIkey="ModelValue_166"/>
    <SBMLMap SBMLid="V_gsgLb" COPASIkey="ModelValue_164"/>
    <SBMLMap SBMLid="V_gshHb" COPASIkey="ModelValue_171"/>
    <SBMLMap SBMLid="V_gshLb" COPASIkey="ModelValue_169"/>
    <SBMLMap SBMLid="V_mgly" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="V_mser" COPASIkey="ModelValue_116"/>
    <SBMLMap SBMLid="V_oCys_b" COPASIkey="ModelValue_174"/>
    <SBMLMap SBMLid="V_oCys_b_basal" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="V_oGlu_b" COPASIkey="ModelValue_172"/>
    <SBMLMap SBMLid="V_oGlu_b_basal" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="V_oGly_b" COPASIkey="ModelValue_173"/>
    <SBMLMap SBMLid="V_oGly_b_basal" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="VcFTD" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="VcFTS" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="VcMTCH" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="VcMTD" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="VcNE" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="VcSHMT" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Vf_SAHH" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="Vf_cMTCH" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="Vf_cMTD" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="Vf_cSHMT" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="Vf_mFTS" COPASIkey="ModelValue_140"/>
    <SBMLMap SBMLid="Vf_mMTCH" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="Vf_mMTD" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="Vf_mSHMT" COPASIkey="ModelValue_146"/>
    <SBMLMap SBMLid="VmFTD" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="VmFTS" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="VmGLYc" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="VmHCOOHc" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="VmMTCH" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="VmMTD" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="VmNE" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="VmSERc" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="VmSHMT" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="Vm_ART" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="Vm_BHMT" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="Vm_CBS" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="Vm_CTGL" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="Vm_DHFR" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="Vm_DMGD" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="Vm_DNMT" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="Vm_GCS" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="Vm_GDC" COPASIkey="ModelValue_133"/>
    <SBMLMap SBMLid="Vm_GNMT" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="Vm_GPX" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="Vm_GR" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="Vm_GS" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="Vm_MAT1" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="Vm_MAT3" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="Vm_MS" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="Vm_MTHFR" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="Vm_PGT" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="Vm_SDH" COPASIkey="ModelValue_130"/>
    <SBMLMap SBMLid="Vm_TS" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="Vm_cFTD" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="Vm_cFTS" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="Vm_mFTD" COPASIkey="ModelValue_148"/>
    <SBMLMap SBMLid="Vr_MTCH" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="Vr_MTD" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="Vr_SAHH" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="Vr_cMTD" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="Vr_cSHMT" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="Vr_mFTS" COPASIkey="ModelValue_137"/>
    <SBMLMap SBMLid="Vr_mSHMT" COPASIkey="ModelValue_143"/>
    <SBMLMap SBMLid="aa_input" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="aic" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="b_cys" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="b_cys_cystine_conv" COPASIkey="Reaction_71"/>
    <SBMLMap SBMLid="b_cys_import" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="b_cys_loss" COPASIkey="Reaction_70"/>
    <SBMLMap SBMLid="b_glu" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="b_glu_import" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="b_glu_loss" COPASIkey="Reaction_69"/>
    <SBMLMap SBMLid="b_gly" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="b_gly_import" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="b_gly_loss" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="b_gsg" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="b_gsg_decomp" COPASIkey="Reaction_72"/>
    <SBMLMap SBMLid="b_gsg_loss" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="b_gsh" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="b_gsh_decomp" COPASIkey="Reaction_129"/>
    <SBMLMap SBMLid="b_gsh_loss" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="b_met" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="b_met_basal" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="b_ser" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="b_ser_basal" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="blood" COPASIkey="Compartment_3"/>
    <SBMLMap SBMLid="breakfast" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="c_10f" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="c_1cf" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="c_2cf" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="c_5mf" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="c_coo" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="c_cys" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="c_dhf" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="c_glu" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="c_glu_usage" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="c_gly" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="c_gsg" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="c_gsg_degr" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="c_gsh" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="c_gsh_degr" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="c_ser" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="c_thf" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="cys_usage" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="cyt" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="cytosol" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="daytime" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="dinner" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="dmg" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="fasting" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="glc" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="gluconeogenesis_ser" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="h_gshLb" COPASIkey="ModelValue_168"/>
    <SBMLMap SBMLid="hcy" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="k1_cNE" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="k1_mNE" COPASIkey="ModelValue_135"/>
    <SBMLMap SBMLid="k2_cNE" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="k2_mNE" COPASIkey="ModelValue_134"/>
    <SBMLMap SBMLid="k_in_coo" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="k_out_coo" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="k_out_cys" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="k_out_glu" COPASIkey="ModelValue_158"/>
    <SBMLMap SBMLid="k_out_gly" COPASIkey="ModelValue_155"/>
    <SBMLMap SBMLid="k_out_met" COPASIkey="ModelValue_149"/>
    <SBMLMap SBMLid="k_out_ser" COPASIkey="ModelValue_152"/>
    <SBMLMap SBMLid="lunch" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="m_10f" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="m_1cf" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="m_2cf" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="m_coo" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="m_gly" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="m_ser" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="m_thf" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="met" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="mito" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="parameter_1" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="parameter_10" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="parameter_11" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="parameter_12" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="parameter_13" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="parameter_14" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="parameter_15" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="parameter_16" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="parameter_17" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="parameter_18" COPASIkey="ModelValue_0"/>
    <SBMLMap SBMLid="parameter_2" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="parameter_3" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="parameter_4" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="parameter_5" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="parameter_6" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="parameter_7" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="parameter_8" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="parameter_9" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="reaction_1" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="reaction_10" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="reaction_11" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="reaction_12" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="reaction_2" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="reaction_3" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="reaction_4" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="reaction_5" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="reaction_6" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="reaction_7" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="reaction_8" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="reaction_9" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="sah" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="sam" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="species_1" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="species_2" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="species_3" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="species_4" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="species_5" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="species_6" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="species_7" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="species_8" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="species_9" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="src" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="ssH2O2" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="tot_cfol" COPASIkey="ModelValue_176"/>
    <SBMLMap SBMLid="tot_mfol" COPASIkey="ModelValue_175"/>
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
  </ListOfUnitDefinitions>
</COPASI>
